import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                  const Icon(Icons.notifications_active_rounded),
                  IconButton(
                    onPressed: () {
                      context.beamToNamed('/mainDashboard/profile');
                    },
                    icon: const Icon(Icons.account_circle_sharp),

                  )

                ],
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 2, left: 8),
              child: Text('Date & Time', style: theme.textTheme.subtitle1,),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("09:30 AM", style: theme.textTheme.subtitle2!.copyWith(
                      color: Colors.white
                    ),),
                    Text("29/03/2022", style: theme.textTheme.headline5!.copyWith(
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 2, left: 8),
              child: Text('Payslip Summary', style: theme.textTheme.subtitle1,),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_balance_wallet_outlined, color: Colors.white,),
                        Text("  Payslip", style: theme.textTheme.subtitle2!.copyWith(
                            color: Colors.white
                        ),),
                        // Text('Payslip')
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("29/03/2022", style: theme.textTheme.subtitle2!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.normal
                          ),),
                          Text("Ksh 3000", style: theme.textTheme.headline5!.copyWith(
                              color: Colors.white, fontSize: 17
                          ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("09/04/2022", style: theme.textTheme.subtitle2!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.normal
                          ),),
                          Text("Ksh 1500", style: theme.textTheme.headline5!.copyWith(
                              color: Colors.white, fontSize: 17
                          ),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("20/05/2022", style: theme.textTheme.subtitle2!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.normal
                          ),),
                          Text("Ksh 2100", style: theme.textTheme.headline5!.copyWith(
                              color: Colors.white, fontSize: 17
                          ),)
                        ],
                      ),
                    ),
                    OutlinedButton(

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                        child: Text(
                          'All Payslips',
                          style: theme.textTheme.subtitle1!.copyWith(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                      ),
                      onPressed: () {
                        // context.beamToNamed('/mainDashboard');
                      },
                    )
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 2, left: 8),
              child: Text('Leaves Summary', style: theme.textTheme.subtitle1,),
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.label_important_outline_rounded, color: Colors.white,),
                          Text("  Leaves", style: theme.textTheme.subtitle2!.copyWith(
                              color: Colors.white
                          ),),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("20/01/2022", style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white, fontWeight: FontWeight.normal
                            ),),
                            Text("Paternity Leave", style: theme.textTheme.headline5!.copyWith(
                                color: Colors.white, fontSize: 17
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("14/03/2022", style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white, fontWeight: FontWeight.normal
                            ),),
                            Text("Holiday Leave", style: theme.textTheme.headline5!.copyWith(
                                color: Colors.white, fontSize: 17
                            ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("19/03/2022", style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white, fontWeight: FontWeight.normal
                            ),),
                            Text("Sick Leave", style: theme.textTheme.headline5!.copyWith(
                                color: Colors.white, fontSize: 17
                            ),)
                          ],
                        ),
                      ),
                      OutlinedButton(

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                          child: Text(
                            'All Leaves',
                            style: theme.textTheme.subtitle1!.copyWith(
                                fontSize: 14,
                              color: Colors.white
                            ),
                          ),
                        ),
                        onPressed: () {
                          // context.beamToNamed('/mainDashboard');
                        },
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      );
  }
}
