import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;
  const IconContainer({key, required this.url})
      : assert(url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(this.url),
      ),
    );
  }
}
