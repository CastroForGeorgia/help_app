import 'package:flutter/material.dart';
import 'package:help_app/index.dart';

class AttachmentIcon extends StatelessWidget {
  const AttachmentIcon({super.key, required this.attachment, this.onTap});

  final Attachment attachment;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => attachment.type == AttachmentType.doc
      ? AppIcons.attachmentDoc
      : AppIcons.attachmentPdf;
}
