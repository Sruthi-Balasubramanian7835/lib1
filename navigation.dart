import 'package:flutter/material.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  int _selectedindex= 0;
  static const List<Widget>_widgetOptions=<Widget>[
    Text('Home Page',style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
    Text('Search Details',style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
    Text('Profile Details',style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
  ];

  @override
  void _onItemTapped(int index) {
    setState((){
      _selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 17, 149, 164)
            ),
            
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 17, 149, 164)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
            backgroundColor: Color.fromARGB(255, 17, 149, 164)
            ),

        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedindex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
} 
}
