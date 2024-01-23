import 'package:andrea_sabatini_flutter/src/data/models/message.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/blocs/chat_cubit.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/chat_section/messages/message_ai.dart';
import 'package:andrea_sabatini_flutter/src/presentation/home/widgets/chat_section/messages/message_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:google_fonts/google_fonts.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit()..loadMessages(),
      child: const _ChatSection(),
    );
  }
}

class _ChatSection extends StatelessWidget {
  const _ChatSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ChatError) {
          return Center(
            child: Text(state.error),
          );
        }
        if (state is ChatLoaded) {
          state.messages;
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    for (final message in state.messages)
                      message is MessageAi
                          ? AiChatComponent(label: message.content)
                          : UserChatComponent(label: message.content),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => context.read<ChatCubit>().insert('Ciao'),
                child: const Text('Add'),
              )
            ],
          );
        }
        return const SizedBox();
      },
    );

    /*
    final messages = [
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'user',
        'message': 'ciao',
      },
    ];
    return Column(
      children: messages
          .map((e) => e['type'] == 'user'
              ? UserChatComponent(label: e['message'] as String)
              : AiChatComponent(label: e['message'] as String))
          .toList(),
    );

    return Column(
      children: [
        for (final message in messages)
          message['type'] == 'user'
              ? UserChatComponent(label: message['message'] as String)
              : AiChatComponent(label: message['message'] as String),
      ],
    );*/
  }
}
