import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'sms_code.dart';

class AuthorizationApp extends StatefulWidget {
  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<AuthorizationApp> {
  final phoneNumberController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SMSCodeApp.routeName: (context) => const SMSCodeApp(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(229, 229, 229, 1)),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text(
              'Войти',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),  
              ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back, 
                color: Colors.black,
                size: 45,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            iconTheme: const IconThemeData(
              color: Colors.black,
              size: 40
            ),
          ),
          
          
          body: Column(
            children: <Widget>[
              Container(
                height: 165,
                margin: const EdgeInsets.only(top: 6),
                padding: const EdgeInsets.only(top: 6),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Center(
                        child: Text(
                          'Войдите с помощью номера телефона',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: Color.fromRGBO(196, 196, 196, 1),                          
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      padding: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(bottom: 15),
                      width: 250,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 17),
                      child: Row(
                        children: [
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 5,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 11),
                                child: const Text(
                                    'Введите ваш номер телефона',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color.fromRGBO(0, 0, 0, 1),                          
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                              ),
                              SizedBox(
                                width: 300,
                                child: IntlPhoneField(
                                  controller: phoneNumberController,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                  ],
                                  initialCountryCode: 'KZ',
                                  decoration: const InputDecoration(
                                    isDense: true, // Added this
                                    counterText: '',
                                    contentPadding: EdgeInsets.all(8), 
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 21),
                child: ElevatedButton (
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                    side: const BorderSide(width: 1.0, color: Colors.black,)
                  ),
                  child: const Text(
                      'Далее',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        color: Color.fromRGBO(0, 0, 0, 1), 
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SMSCodeApp.routeName,
                      arguments: phoneNumberController.text.toString(),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}