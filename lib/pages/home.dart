import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotify/components/category_single.dart';
import 'package:quotify/components/quote_single.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,

        child: Container(

          child: SafeArea(
            child: Column(
              children: [

                SizedBox(height: 40),

                // QUOTIFY _ LOGO
                FractionallySizedBox(
                    child: Image.asset('images/quotify_logo.png'),
                  widthFactor: 0.5,
                ),

                SizedBox(height: 40),


                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10),

                // QUOTIFY CATEGORIES
                Wrap(
                  children: [

                    CategorySingle(cat_icon: Icon(Icons.favorite_outline_rounded, color: Colors.white, size: 35), cat_name: 'Love'),
                    CategorySingle(cat_icon: Icon(Icons.lightbulb_outline, color: Colors.white, size: 35), cat_name: 'Inspirational'),
                    CategorySingle(cat_icon: Icon(Icons.thumb_up_alt_outlined, color: Colors.white, size: 35), cat_name: 'Positivity'),

                  ],

                  spacing: 5,
                ),


                SizedBox(height: 40),

                Text(
                  'Recent Quotes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),

                SizedBox(height: 10),

                // QUOTIFY QUOTES
                QuoteSingle(q_text: 'Be yourself; everyone else is already taken.', q_author: 'Oscar Wilde'),
                QuoteSingle(q_text: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.", q_author: 'Albert Einstein'),

              ],

              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 199, 52, 77), Colors.white],
              stops: [0.0, 0.7],
            )
          ),
          padding: EdgeInsets.only(top: 0, right: 20, bottom: 15, left: 20),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post a Quote'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage('images/profile.png')), label: 'Safat'),
        ],

        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 207, 1, 74),
        unselectedItemColor: Color.fromARGB(255, 51, 51, 51),
        type: BottomNavigationBarType.fixed,
        elevation: 15,
      ),
    );
  }
}
