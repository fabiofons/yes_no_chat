import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/bubble_message.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_input_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/noticias-cine/morena-baccarin-sera-la-protagonista-femenina-de-deadpool/39954170-1-esl-ES/Morena-Baccarin-sera-la-protagonista-femenina-de-Deadpool.jpg'),
              )),
          title: const Text(
            'Morena Bacarin',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
          centerTitle: false,
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const BubbleMessage();
            },
          )),
          MessageInputField()
        ],
      ),
    ));
  }
}
