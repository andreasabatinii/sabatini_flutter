import 'dart:convert';

import 'package:andrea_sabatini_flutter/src/data/models/message.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(const ChatInitial());

  void loadMessages() {
    emit(const ChatLoading()); //carica uno stato della pagina
    Supabase.instance.client.from('messages').select().then(
          (value) => emit(
              ChatLoaded(
                  messages: value.map((e) => Message.fromJson(e)).toList()),
              messageLoading: false),
          onError: (error) => emit(
            ChatError(error: error.toString()),
          ),
        );
  }

  void sendMessageToChatgtp(String content) {
    http
        .post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        "Content-Type": "application/json",
        "Authorization":
            "Bearer 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"
      },
      body: jsonEncode({
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            "role": "system",
            "content":
                "You are a helpful assistant, that always responds in a funny but helpful way. You make some jokes at the end of your response"
          }, //definisco che tipo di bot è
          {"role": "user", "content": content}
        ]
      }),
    )
        .then(
      (res) {
        if (res.statusCode == 200) {
          // == 200 mi dice se la chiamata è andata bene
          final map = jsonDecode(utf8.decode(res.bodyBytes));
          final content = map['choices'][0]['message']['content'];
          Supabase.instance.client.from('messages').insert({
            'id': const Uuid().v1(),
            'content': content,
            'from': MessageTypes.ai.name,
          }).then(
            (_) {
              if (state is ChatLoaded) {
                final message = MessageUser(content: content);
                emit(ChatLoaded(
                    messages: [...(state as ChatLoaded).messages, message],
                    messageLoading: false));
              }
            },
            onError: (error) => emit(
              ChatError(error: error.toString()),
            ),
          );
        } else {
          emit(
            const ChatError(error: 'Ops, there was an error whit your chat...'),
          );
        }
      },
      onError: (error) => emit(
        ChatError(error: error.toString()),
      ),
    );
  } //then = quando hai caricato, restituisci tutti i valori della tabella

  void insert(String content) {
    Supabase.instance.client.from('messages').insert({
      'id': const Uuid().v1(),
      'content': content,
      'from': MessageTypes.user.name,
    }).then(
      (_) {
        if (state is ChatLoaded) {
          final message = MessageUser(content: content);
          emit(ChatLoaded(
              messages: [...(state as ChatLoaded).messages, message],
              messageLoading: true));
          sendMessageToChatgtp(content);
        }
      },
      onError: (error) => emit(
        ChatError(error: error.toString()),
      ),
    );
  }
}

abstract class ChatState extends Equatable {
  const ChatState();
}

class ChatInitial extends ChatState {
  const ChatInitial();

  @override
  List<Object?> get props => [];
}

class ChatLoading extends ChatState {
  const ChatLoading();

  @override
  List<Object?> get props => [];
}

class ChatLoaded extends ChatState {
  const ChatLoaded({required this.messages, required this.messageLoading});

  final List<Message> messages;
  final bool messageLoading;

  @override
  List<Object?> get props => [messages];
}

class ChatError extends ChatState {
  const ChatError({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}
