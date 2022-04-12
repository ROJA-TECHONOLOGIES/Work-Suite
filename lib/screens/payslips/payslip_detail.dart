import 'package:flutter/material.dart';
import 'package:work_suite/widgets/circular_widget.dart';
import 'package:work_suite/widgets/splash_image.dart';

class PayslipDetail extends StatelessWidget {
  const PayslipDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payslip Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(text: TextSpan(
                  text: 'You have earned gross pay of ',
                  style: TextStyle(color: Colors.grey, fontSize: 15, fontFamily: 'Messiri'),
                  children: [
                    TextSpan(text: 'June ', style: TextStyle(color: Colors.grey, fontSize: 15,
                        fontWeight: FontWeight.bold, fontFamily: 'Messiri'),),
                    TextSpan(text: 'Month ', style: TextStyle(color: Colors.grey, fontSize: 15, fontFamily: 'Messiri'),)
                  ]
                )),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: circularWidget(value: 'KES 25,000', currentValue: 0.7,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blueGrey,
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('KES 20,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                          Text('Earnings', style: TextStyle(color: Colors.grey, fontSize: 14, fontFamily: 'Messiri'))
                        ],
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey,
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('KES 5,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                          Text('Deductions', style: TextStyle(color: Colors.grey, fontSize: 14, fontFamily: 'Messiri'))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Earning Details', style: TextStyle(color: Colors.blueGrey, fontSize: 16,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
            ),
            Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Basic Pay', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 15,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('HRA', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 2,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SPL Allowance', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 2,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Other Allowances', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 1,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyle(color: Colors.blueGrey, fontSize: 18,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                        Text('KES 20,000', style: TextStyle(color: Colors.blueGrey, fontSize: 18,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Deduction Details', style: TextStyle(color: Colors.blueGrey, fontSize: 16,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
            ),
            Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('NHIF', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 1,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Insuarance', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 1,500', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Morgage', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 2,000', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('NSSF', style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Messiri')),
                        Text('KES 500', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontFamily: 'Messiri')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: TextStyle(color: Colors.blueGrey, fontSize: 18,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                        Text('KES 5,000', style: TextStyle(color: Colors.blueGrey, fontSize: 18,fontWeight: FontWeight.bold, fontFamily: 'Messiri')),
                      ],
                    ),
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
