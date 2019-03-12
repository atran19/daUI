import 'package:flutter/material.dart';
import 'storeusers.dart'


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

 List<User> = initializeusers = [];


 int _selectedIndex = 0;
 final _widgetOptions = [
  Text('Index 0: Home'),
  Text('Index 1: Message'),
  Text('Index 2: Profile'),
  ];


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Looking 4 Love'),
     ),
     body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),

     ),
     bottomNavigationBar: BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
         BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text('Message')),
         BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
       ],
       currentIndex: _selectedIndex,
       fixedColor: Colors.deepPurple,
       onTap: _onItemTapped,
     ),

   );
 }

 void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}


@override
Widget build(BuildContext context) {
  return Container(
      height: 250,
      width: 500,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network('https://picsum.photos/200/300/?random'),

      ),

    );


}





