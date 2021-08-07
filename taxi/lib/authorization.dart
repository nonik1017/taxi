import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AuthorizationApp extends StatefulWidget {
  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<AuthorizationApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(229, 229, 229, 1)),
      home: Scaffold(
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
              margin: EdgeInsets.only(top: 6),
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
                    // color: Colors.green
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
                            Container(
                                  width: 300,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                  padding: const EdgeInsets.only(top: 8, left: 24),
                                  child: const Text(
                                    '+7 (000) 123 1234',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color.fromRGBO(0, 0, 0, 1), 
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),                
                ],
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 21),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
              color: Colors.white,
              ),
              padding: const EdgeInsets.only(top: 8, left: 24),
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
            ),
          ],
        ),
      ),
    );
  }
}