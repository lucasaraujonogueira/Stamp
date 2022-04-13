import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color textcolor;
  final Color background;
  final Color borderColor;
  final String text;
  final Widget widget;
  final double width;
  final double height;

  const AppButtons({
    Key? key,
    required this.textcolor,
    required this.background,
    required this.borderColor,
    required this.text,
    required this.widget,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          elevation: 1,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 1),
          backgroundColor: background,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(text),
      onPressed: () {
        //Navigator.push(context, route)
      },
    );
  }
}

/*
child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
        */
        /*

        Container(
      width: width,
      height: height,
      child: Text(
        text,
        style: TextStyle(color: textcolor),
      ),
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 5.0)),
    );
    */

    /*ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, onPrimary: Colors.orange),
        onPressed: () {},
        child: Container(
            width: width,
            height: height,
            child: Center(
              child: Text(
                text,
                style: TextStyle(color: textcolor),
              ),
            )));
           */ 