import 'package:flutter/material.dart';

class SMSCodeApp extends StatefulWidget {
  @override
  _SMSCodeState createState() => _SMSCodeState();
}

class _SMSCodeState extends State<SMSCodeApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              onPressed: () => Navigator.pop(context),
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
                          'Мы отправили SMS-код на +7 (000) 123 1234 введите его для подтверждения входа',
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
                      child: const Center(
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
                    SizedBox(
                      width: 300,
                      height: 40,
                      
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 1)),
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )

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
                  onPressed: () { Navigator.pop(context); }
                ),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}