import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
    Container(color: Colors.blue)
  ];
  //9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FooderLich',
          //2
          style: Theme.of(contex).textTheme.headline6,
        ),
      ),
      // TODO: Mostrar a Tab selecionada
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //5
        selectedItemColor: Theme.of(contex).textSelectionTheme.selectionColor,
        //10
        currentIndex: _selectedIndex,
        //11
        onTap: _onItemTapped,
        // 6
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
