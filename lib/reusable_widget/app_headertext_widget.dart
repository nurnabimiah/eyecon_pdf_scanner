import 'package:flutter/material.dart';

class AppHeaderTextWidget extends StatelessWidget {
  const AppHeaderTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 10),
      child: Text(
        text,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      ),
    );
  }
}
