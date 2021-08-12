import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'create_order.dart';
import 'authorization.dart';

class SMSCodeApp extends StatefulWidget {
  const SMSCodeApp({Key? key}) : super(key: key);

  static const routeName = '/sms_code';

  @override
  _SMSCodeState createState() => _SMSCodeState();
}

class _SMSCodeState extends State<SMSCodeApp> {
  final createOrderController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    createOrderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userPhone = ModalRoute.of(context)!.settings.arguments;

    return MaterialApp(
      routes: {
        AuthorizationApp.routeName: (context) => const AuthorizationApp(),
        CreateOrderApp.routeName: (context) => const CreateOrderApp(),
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
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  // CreateOrderApp.routeName,
                  AuthorizationApp.routeName,
                );
              },
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
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child:  Center(
                        child: Text(
                          'Мы отправили SMS-код на +7 $userPhone введите его для подтверждения входа',
                          style: const TextStyle(
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
                      
                    const SizedBox(
                      child: Center(
                        child: Text(
                            'Введите код из SMS',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(0, 0, 0, 1),                          
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      margin: const EdgeInsets.only(top: 10),
                      // child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // children: [
                    child:  
                          Container(
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                            child: TextField(
                              style: const TextStyle(
                                letterSpacing: 12,
                              ),
                              decoration: const InputDecoration(
                                isDense: true,              // Added this
                                focusedBorder: InputBorder.none,        
                                contentPadding: EdgeInsets.only(top: 8, bottom: 12, left: 5),  // Added this
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(4),
                              ]
                            ),
                          ),
                          // Container(
                          //   width: 20,
                          //   height: 30,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                          //   ),
                          //   child: TextField(
                          //     decoration: const InputDecoration(
                          //       isDense: true,                      // Added this
                          //       contentPadding: EdgeInsets.only(top: 8, bottom: 12, left: 5),  // Added this
                          //     ),
                          //     inputFormatters: [
                          //       LengthLimitingTextInputFormatter(1),
                          //     ]
                          //   ),
                          // ),
                        // ],
                      // )

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
                      'Войти',
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
                      CreateOrderApp.routeName,
                      arguments: createOrderController.text.toString(),
                    );
                   }
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}