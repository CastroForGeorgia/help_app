import 'package:flutter/material.dart';
import 'package:help_app/generated/l10n.dart';
import 'package:help_app/index.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).messagesTitle),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(seconds: 1));
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: EmailListView(),
          ),
        ),
      );
}
