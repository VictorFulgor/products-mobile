import 'package:flutter/material.dart';
import 'package:teste1/ui/widgets/base_text.dart';

class BaseAppBar extends StatelessWidget {
  final String title;

  BaseAppBar({this.title});

  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent[400],
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            child: BaseText(
              text: this.title,
              fontSize: 24,
              isBold: true,
            ),
          ),
        ],
      ),
    );
  }
}
