import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  const IconCard({
    Key? key,
    required this.color,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(image),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
