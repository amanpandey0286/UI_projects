import 'package:flutter/material.dart';

class myIconWidget extends StatelessWidget {
  final IconData myIcon;
  final String buttonText;

  const myIconWidget({
    super.key,
    required this.myIcon,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.0,
          width: 80.0,
          child: Card(
            shadowColor: Colors.grey,
            elevation: 5,
            color: Colors.white,
            child: Icon(myIcon),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          buttonText,
          style: TextStyle(
              color: Colors.blue[300],
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        )
      ],
    );
  }
}
