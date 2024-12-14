import 'package:flutter/material.dart';
import 'package:help_app/index.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({super.key, required this.message, this.onTap});

  final Email message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => message.isFavorite
      ? IconButton(onPressed: onTap, icon: AppIcons.attachmentFavoriteActive)
      : IconButton(onPressed: onTap, icon: AppIcons.attachmentFavorite);
}
