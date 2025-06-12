import 'package:flutter/material.dart';
import '../cart/cart_screen.dart';
import '../category/category_screen.dart';
import '../home/home_screen.dart';
import '../print/print_screen.dart';

class BottomNavScreen extends StatefulWidget{
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages =[
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Card(
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.category, color: Colors.grey,), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.grey,), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.print, color: Colors.grey,), label: "Print"),
        ], type: BottomNavigationBarType.fixed,currentIndex: currentIndex,onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },),
      ),
    );
  }
}