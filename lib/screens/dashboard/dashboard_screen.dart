import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          // toolbarHeight: 80,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Row(
                children: [
                  Icon(Icons.notifications_active_rounded),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(Icons.account_circle_sharp),

                  )

                ],
              )
            ],
          ),
        ),
        body: const Center(child: Text('Main Screen')),
      );
  }
}
