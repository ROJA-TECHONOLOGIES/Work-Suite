import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:work_suite/screens/dashboard/dashboard_screen.dart';
import 'package:beamer/beamer.dart';

// ignore: must_be_immutable
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);


  // final List<Widget> _children = [
  //   DashBoardScreen(),
  //   NearByScreen(),
  //   MedBag(),
  //   OrdersScreen(),
  //   PaymentsHistoryScreen()
  // ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey
            ),
            onTap: (index){
              Map<String, int> selectedScreen = {'index' : index};
             context.beamToNamed('/dashBoardScreens', data: selectedScreen);
            },
            // currentIndex: _currentIndex,
            items: const [
              // ignore: deprecated_member_use
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // ignore: deprecated_member_use
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_rounded),
                // ignore: deprecated_member_use
                title: Text('Near By'),
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.shopping_bag),
                // ignore: deprecated_member_use
                title: Text('Medicine Bag'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long_outlined),
                  // ignore: deprecated_member_use
                  title: Text('My Orders')
              ),
            ],
          ),
        ),
        body: const DashBoardScreen(),
        // body: _children[currentTab],

      );
    }

  }

