import 'package:chat_flutter/core/services/auth/auth_service.dart';
import 'package:chat_flutter/core/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class NewMessages extends StatefulWidget {
  const NewMessages({super.key});

  @override
  State<NewMessages> createState() => _NewMessagesState();
}

class _NewMessagesState extends State<NewMessages> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  String _message = '';

  final _messageController = TextEditingController();

  Future<void> _sendMessage() async {
    final user = AuthService().currentUser;

    if (user != null) {
      await ChatService().save(_message, user);
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onSubmitted: (_) {
              if (_message.trim().isNotEmpty) {
                _sendMessage();
              }
            },
            textInputAction: TextInputAction.search,
            controller: _messageController,
            onChanged: (msg) => setState(() => _message = msg),
            decoration: const InputDecoration(
              labelText: 'Enviar mensagem...',
              contentPadding: EdgeInsets.only(left: 10),
            ),
          ),
        ),
        IconButton(
            focusNode: focusNode,
            icon: const Icon(Icons.send),
            onPressed: () {
              _message.trim().isEmpty ? null : _sendMessage();
              _message = '';
            })
      ],
    );
  }
}
