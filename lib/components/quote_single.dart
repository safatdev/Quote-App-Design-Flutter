import 'package:flutter/material.dart';

class QuoteSingle extends StatelessWidget {

  String q_text, q_author;

  QuoteSingle({this.q_text, this.q_author});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Icon(
              Icons.format_quote_sharp,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(width: 15),

            Flexible(
              child: Column(
                children: [
                  Text(
                    q_text,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    '- $q_author',
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 12,
                        fontStyle: FontStyle.italic
                    ),
                  )
                ],

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),



          ],
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

        padding: EdgeInsets.all(15),
      ),

      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
