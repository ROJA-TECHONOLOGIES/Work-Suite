import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:beamer/beamer.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final phoneController = TextEditingController();
  final pinController = TextEditingController();
  final forgotPinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.blue]),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios,
                            color: Colors.blue[900], size: 25.0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Kindly Use your phone number and pin',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      height: 70.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Row(
                        children: [
                          const Divider(
                            height: 50.0,
                          ),
                          Flexible(
                            child: SizedBox(
                              height: 60,
                              width: 200,
                              child: TextFormField(
                                controller: phoneController,
                                autofocus: true,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 22),
                                  hintText: ' \t \t \t Phone Number',
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 70.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: SizedBox(
                        height: 60,
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            maxLength: 4,
                            maxLengthEnforced: true,
                            obscureText: true,
                            obscuringCharacter: '*',
                            controller: pinController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your PIN',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // forgotPinAlert(context);
                                // Fluttertoast.showToast(
                                //     msg: "Feature Coming Soon");
                                // Navigator.push(context,MaterialPageRoute(builder:(context)=>ForgotPinScreen()));
                              },
                              child: Text(
                                'Forgot PIN?',
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    // isLoad && finishLoading ? Center(child: CircularProgressIndicator()) :
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                        onPressed: () {
                          context.beamToNamed('/mainDashboard');
                        },
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('phone');
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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
