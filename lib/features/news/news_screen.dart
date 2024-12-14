import 'package:flutter/material.dart';
import 'package:help_app/generated/l10n.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const routeName = '/news';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Text(S.of(context).newsScreen),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(),
        ),
      );
}
