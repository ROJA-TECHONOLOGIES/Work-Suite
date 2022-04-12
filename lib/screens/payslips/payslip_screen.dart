import 'package:flutter/material.dart';
import 'package:work_suite/screens/payslips/payslip_detail.dart';
import 'package:work_suite/widgets/splash_image.dart';

class PayslipScreen extends StatelessWidget {
  const PayslipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payslip Summary'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            payslipImage(),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => PayslipDetail()));
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.calendar_today,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('June',
                                  style: theme.textTheme.subtitle2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('01/06/2022 - 30/06/2022',
                                  style: theme.textTheme.subtitle2!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('KES 25,000',
                              style: theme.textTheme.subtitle2!.copyWith(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text('',
                              style: theme.textTheme.subtitle2!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('June',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('01/06/2022 - 30/06/2022',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('KES 25,000',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text('',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('June',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('01/06/2022 - 30/06/2022',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('KES 25,000',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text('',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('June',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('01/06/2022 - 30/06/2022',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('KES 25,000',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Text('',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
