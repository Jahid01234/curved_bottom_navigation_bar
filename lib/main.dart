import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Show the snackbar message...............//

MySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Curved Bottom Navigation Bar'),
          centerTitle: true,
        ),
        backgroundColor: Colors.teal,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.cyan,
          animationDuration: Duration(milliseconds: 300),
          items:
          [
            Icon(
              Icons.home, color: Colors.blue,),
            Icon(
              Icons.favorite, color: Colors.blue,),
            Icon(
              Icons.settings, color: Colors.blue,)
          ],

          onTap: (index) {
            // Show SnackBar for each tab
            //String message =' ';
            switch (index) {
              case 0:
                //message = 'Home Tab Selected';
                MySnackBar('Home Tab Selected', context);
                break;
              case 1:
                //message = 'Favorite Tab Selected';
                MySnackBar('Favorite Tab Selected', context);
                break;
              case 2:
                //message = 'Settings Tab Selected';
                MySnackBar('Settings Tab Selected', context);
                break;
            }
            //MySnackBar(message, context);
          },
        )
    );
  }
}


