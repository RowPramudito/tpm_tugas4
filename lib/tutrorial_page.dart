import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TutorPage extends StatelessWidget {
  const TutorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Welcome to our app,'
              ' This application is an assignment for the IF-H class mobile programming techniques course.'
              ' In this application you have several functions, starting from login page'
              ' On the login page the user must enter the correct username and password to proceed to the next page.'),
          SizedBox(height: 20),
          Text(
            'The next page is the main menu page where there will be 4 choices of feature pages and at the bottom there will be 3 other page choices ',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
            'The first feature is a page to see a list of our group members',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
                'You can see our recommendation sites in some game by clicked in recommendation sites,'
                ' In this recommendation sites you can visit the game link and also add it to you favorite.',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
                'The second feature is a simple stopwatch where the way to use it is:'
                '1. press the start button'
                '2. if you want to stop just press the stop button'
                '3. if you want to reset just press the restart button',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
            'The third feature is the recommendation site page where there will be several sites that we recommend and users can open the site which will be directed to the site page. Users can also make sites that users like into favorites by simply pressing the heart button on the site according to the site.',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
                'Then continued the last feature, namely the list of sites that have become favorite sites'
                'For other page options, there is a menu page which is the initial page'
                'Then there is a tutorial page that the user is now reading'
                'The last is the logout page for users to exit back to the login page',
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 10),
          Text(
            'Thank you for using our application -Author',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}