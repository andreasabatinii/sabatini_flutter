import 'package:andrea_sabatini_flutter/src/data/models/message.dart';
//import 'package:andrea_sabatini_flutter/src/presentation/home/blocs/chat_cubit.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/blocs/chat_cubit_main.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/ai_chat_component.dart';
import 'package:andrea_sabatini_flutter/src/presentation/main/chat/ai_user_chat/components/user_chat_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:google_fonts/google_fonts.dart';

class AiUserChat extends StatelessWidget {
  const AiUserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ChatSection();
  }
}

class _ChatSection extends StatelessWidget {
  const _ChatSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubitMain, ChatState>(
      builder: (context, state) {
        if (state is ChatError) {
          return Center(
            child: Text(state.error),
          );
        }
        if (state is ChatLoaded) {
          //print('messages: ${state.messages}');
          return Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: state.messages.length,
              itemBuilder: (context, index) {
                final message = state.messages[index];
                return message is MessageAi
                    ? AiChatComponent(response: message.content)
                    : UserChatComponent(inputtext: message.content);
              },
            ),
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


/*
class AiUserChat extends StatelessWidget {
  const AiUserChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          reverse: true,
          children: const [
            Column(
              children: [
                UserChatComponent(inputtext: 'What’s a placeholder text?'),
                AiChatComponent(
                    response:
                        'Text that is set temporarily in place of actual copy is called “placeholder text” or “dummy text.” It often takes the form of “lorem ipsum”—a sequence of words from a work of classical literature that is deliberately intended to not be read (in modern times).')
              ],
            )
          ],
        ),
      ),
    );
  }
}
*/



/*
child: ListView.builder(
  padding: const EdgeInsets.symmetric(vertical: 10),
  itemCount: state.messages.length,
  itemBuilder: (context, index) {
    final message = state.messages[index];
    return message is MessageAi
        ? AiChatComponent(response: message.content)
        : UserChatComponent(inputtext: message.content);
  },
),
*/