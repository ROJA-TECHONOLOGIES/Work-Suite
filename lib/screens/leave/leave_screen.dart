import 'package:flutter/material.dart';
import 'package:work_suite/widgets/splash_image.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Leave History'),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Request Leave',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Messiri',
                    fontSize: 18,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            leavesImage(),
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
                          child: Icon(
                            Icons.label_important_outline_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sick Leave',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('14 Days',
                                style: theme.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('13/02/2022',
                            style: theme.textTheme.subtitle2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('24/02/2022',
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
