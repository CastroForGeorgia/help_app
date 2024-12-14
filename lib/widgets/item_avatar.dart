import 'package:flutter/material.dart';
import 'package:help_app/index.dart';

class ItemAvatar extends StatelessWidget {
  const ItemAvatar({
    super.key,
    required this.imageUrl,
    required this.shortenUserName,
  });

  final String imageUrl;
  final String shortenUserName;

  @override
  Widget build(BuildContext context) => imageUrl.isNotEmpty
      ? CircleAvatar(backgroundImage: NetworkImage(imageUrl))
      : NameAvatar(name: shortenUserName);
}
