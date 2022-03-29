import 'package:flutter/material.dart';
import 'package:work_suite/widgets/text_field.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final userNameController = TextEditingController(text: "Enos Okello");
  final mailController = TextEditingController(text: "enosokello@gmail.com");
  final phoneController = TextEditingController(text: "0716229563");
  final jobNoController = TextEditingController(text: "45092564");
  final jobTypeController = TextEditingController(text: "Mobile Developer");


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 70, color: theme.primaryColor,),
          accountTextField(
              firstIcon: Icons.person_outline,
              controller: userNameController,
              text: "User Name",
              color: theme.primaryColor),
          accountTextField(
              firstIcon: Icons.phone,
              controller: phoneController,
              text: "Phone Number",
              color: theme.primaryColor),
          accountTextField(
              firstIcon: Icons.mail_outline,
              controller: mailController,
              text: "eMail Address",
              color: theme.primaryColor),
          accountTextField(
              firstIcon: Icons.nat,
              controller: jobNoController,
              text: "Job Number",
              color: theme.primaryColor),
          accountTextField(
              firstIcon: Icons.ac_unit_sharp,
              controller: jobTypeController,
              text: "Job Type",
              color: theme.primaryColor),
          const SizedBox(height: 20,),
          Center(
            child: OutlinedButton(

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                child: Text(
                  'Update Profile',
                  style: theme.textTheme.headline6,
                ),
              ),
              onPressed: () {
                // context.beamToNamed('/mainDashboard');
              },
            ),
          ),
        ],
      ),
    );
  }
}
