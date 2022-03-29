import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_suite/blocs/bottom_nav/bottom_nav_bloc.dart';
import 'package:work_suite/blocs/bottom_nav/bottom_nav_events.dart';
import 'package:work_suite/screens/dashboard/dashboard_screen.dart';
import 'package:beamer/beamer.dart';
import 'package:work_suite/screens/screens_util.dart';

// ignore: must_be_immutable
class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);


  final List<Widget> _children = [
    const DashBoardScreen(),
    const LeaveScreen(),
    const SalaryScreen(),
    const PayslipScreen(),
  ];

  @override
  Widget build(BuildContext context) {
  final theme = Theme.of(context);

      return BlocBuilder<BottomNavigationBloc, int>(
          builder: (context, state){
            // int currentIndex = state;
            return Scaffold(
              bottomNavigationBar: Container(
                decoration:  BoxDecoration(
                    color: theme.backgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))
                ),
                child: BottomNavigationBar(
                  selectedItemColor: theme.primaryColor,
                  unselectedItemColor: Colors.grey,
                  showUnselectedLabels: true,
                  unselectedLabelStyle: const TextStyle(
                      color: Colors.grey
                  ),
                  onTap: (index){
                    // Map<String, int> selectedScreen = {'index' : index};
                    // context.beamToNamed('/dashBoardScreens', data: selectedScreen);
                    BlocProvider.of<BottomNavigationBloc>(context).add(TappingNavigation(navIndex: index));

                  },
                  // currentIndex: _currentIndex,
                  items: [
                    // ignore: deprecated_member_use
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: state == 0 ? theme.primaryColor : Colors.grey,),
                      // ignore: deprecated_member_use
                      title: const Text('Home'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.casino_outlined, color: state == 1 ? theme.primaryColor : Colors.grey,),
                      // ignore: deprecated_member_use
                      title: const Text('Leaves'),
                    ),
                    BottomNavigationBarItem(
                      icon:
                      Icon(Icons.monetization_on_outlined, color: state == 2 ? theme.primaryColor : Colors.grey,),
                      // ignore: deprecated_member_use
                      title: const Text('Salary'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.receipt_long_outlined, color: state == 3 ? theme.primaryColor : Colors.grey,),
                        // ignore: deprecated_member_use
                        title: const Text('Payslips')
                    ),
                  ],
                ),
              ),
              // body: const DashBoardScreen(),
              body: _children[state],

            );
          });
    }

  }

