import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String photoUrl;
  final String message;
  final String name;

  const ChatItem({
    super.key,
    required this.photoUrl,
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(photoUrl),
        ),
        title: Text(name),
        subtitle: Text(
          message,
          maxLines: 1,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
        trailing: const Text('10:00 AM'),
      ),
    );
  }
}
