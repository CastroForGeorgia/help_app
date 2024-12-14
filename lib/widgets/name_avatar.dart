import 'package:flutter/material.dart';
import 'package:help_app/index.dart';

class NameAvatar extends StatelessWidget {
  const NameAvatar({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) => Container(
        height: IconSizes.avatar,
        width: IconSizes.avatar,
        decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .secondary
              .withAlpha((0.65 * 255).toInt()),
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 3,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: FontSizes.label,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
        ),
      );
}
