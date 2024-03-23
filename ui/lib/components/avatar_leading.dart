import 'package:flutter/material.dart';

class AvatarLeading extends StatelessWidget {
  final String icon;

  const AvatarLeading({super.key, this.icon = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 20, // adjust the radius as needed
        backgroundImage: icon.isNotEmpty ? NetworkImage(icon) : null,
      ),
    );
  }
}
