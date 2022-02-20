import 'package:flutter/material.dart';

class CategorySingle extends StatelessWidget {

  Widget cat_icon;
  String cat_name;

  CategorySingle({this.cat_icon, this.cat_name});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),

      child: Container(
        child: Column(
          children: [
            cat_icon,

            SizedBox(height: 10),

            Text(
              cat_name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            )
          ],

          mainAxisAlignment: MainAxisAlignment.center,
        ),

        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromARGB(255, 253, 111, 126), Color.fromARGB(255, 249, 95, 143)]
          ),

          boxShadow: [BoxShadow(
            color: Color.fromARGB(150, 245, 78, 162),
            blurRadius: 25,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )],

          borderRadius: BorderRadius.circular(5),
        ),

        height: 100,
        width: 103,
      ),
    );
  }
}
