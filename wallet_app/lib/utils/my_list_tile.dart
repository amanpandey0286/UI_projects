import 'package:flutter/material.dart';

class myListTile extends StatelessWidget {
  final IconData leadingIcon;
  final String mainTitle;
  final String subTitle;
  final Color cardColor;
  const myListTile({
    super.key,
    required this.leadingIcon,
    required this.mainTitle,
    required this.subTitle,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          //custom card tile
          SizedBox(
            height: 80.0,
            width: 80.0,
            child: Card(
              color: cardColor,
              elevation: 5.0,
              shadowColor: Colors.grey,
              child: Icon(leadingIcon),
            ),
          ),
          //custom title and subtitle
          SizedBox(
            width: 20.0,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mainTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Text(
                subTitle,
                style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
              ),
            ],
          ),
          Expanded(child: SizedBox()),

          //trialing arrow button

          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
