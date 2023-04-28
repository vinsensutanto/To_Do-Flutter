import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  const ToDoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Theme(
            child: Transform.scale(
              scale: 1.5,
              child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ), // RoundedRectangleBorder
                activeColor: Color(0xff6cf8a9),
                checkColor: Color(0xffee3e26),
                value: false,
                onChanged: (bool? value) {},
              ), // Checkbox
            ), // Transform.scale
            data: ThemeData(
              primarySwatch: Colors.blue,
              unselectedWidgetColor: Color(0xff5e616a),
            ), // ThemeData
          ), // Theme
          Expanded(
            child: Container(
              height: 75,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ), // RoundedrectangleBorder i
                color: Color(0xff2a2e3d),
              ), // card
            ), // Container
          ), // Expanded
        ],
      ),
    );
  }
}
