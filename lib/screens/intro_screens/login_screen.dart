import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:work_suite/widgets/text_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final idController = TextEditingController();
  final pinController = TextEditingController();
  final forgotPinController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 50.0),
              Text(
                'Login',
                style: theme.textTheme.headline5,
              ),
              const SizedBox(height: 10.0),
             Text(
                'Kindly Use Your Employee Number and Password',
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 30.0),
              customTextField(
                  firstIcon: Icons.account_circle_outlined,
                  controller: idController,
                  text: "Employee Number",
                  showSuffix: false,
                  color: theme.primaryColor,
                  hideText: false),
              const SizedBox(
                height: 20.0,
              ),
              customTextField(
                  firstIcon: Icons.lock_outline_rounded,
                  controller: pinController,
                  text: "Password",
                  showSuffix: false,
                  color: theme.primaryColor,
                  hideText: true),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      // forgotPinAlert(context);
                      // Fluttertoast.showToast(
                      //     msg: "Feature Coming Soon");
                      // Navigator.push(context,MaterialPageRoute(builder:(context)=>ForgotPinScreen()));
                    },
                    child: Text(
                      'Forgot PIN ?',
                      style: theme.textTheme.headline6,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              // isLoad && finishLoading ? Center(child: CircularProgressIndicator()) :
              Center(
                child: OutlinedButton(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                    child: Text(
                      'Log In',
                      style: theme.textTheme.headline6,
                    ),
                  ),
                  onPressed: () {
                    context.beamToNamed('/mainDashboard');
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

// void forgotPinAlert(BuildContext context) {
// showDialog(
// context: context,
// builder: (context) => AlertDialog(
// title: Text(
// "Forgot Pin ?",
// style: TextStyle(color: Color(0xFF0A0A4E)),
// ),
// content:
// TextField(
// controller: forgotPinController,
// decoration: InputDecoration(
// hintText: '+254xxxxxxxx'
// ),
// ),
// actions: <Widget>[
// // usually buttons at the bottom of the dialog
// FlatButton(
// child: new Text("Cancel"),
// onPressed: () {
// Navigator.of(context).pop();
// },
// ),
// FlatButton(
// child: new Text("Send"),
// onPressed: ()  async{
// if(forgotPinController.text != '' && forgotPinController.text.length == 13 ) {
// // logProvider.setPhone(forgotPinController.text);
// // String code = await logProvider.resetPin(forgotPinController.text);
// // print('THis code is :: $code');
// if(code != ''){
// Fluttertoast.showToast(msg: 'A Reset Password has been sent to an Email attached for ${forgotPinController.text}');
// Navigator.of(context).pushNamed('forgot', arguments: code);
// }
// else{
// Fluttertoast.showToast(msg: 'Sorry Failed to Send the Code Reset Again...');
// }
// }
// else{
// Fluttertoast.showToast(msg: 'Please enter a valid number');
// }
// // Navigator.of(context).pushNamed('profile');
// },
// ),
// ],
// // content: Text("hi"),
// ),
// barrierDismissible: false);
// }

}
