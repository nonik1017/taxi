
import 'package:flutter/material.dart';
// import 'radio_model.dart';

enum SingingCharacter { one, two, three, four, five, six }

class CreateOrderApp extends StatefulWidget {
  const CreateOrderApp({Key? key}) : super(key: key);

  static const routeName = '/create_order';

  @override
  _CreateOrderState createState() => _CreateOrderState();
}

class _CreateOrderState extends State<CreateOrderApp> {
  String dropDownInitialValue = 'Сейчас';
  // SingingCharacter? _character = SingingCharacter.one;
  
  @override
  Widget build(BuildContext context) {
    var timeList = ['Сейчас', '9:00', '12:00', '18:00'];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(229, 229, 229, 1)),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Детали',
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
                height: 363,
                margin: const EdgeInsets.only(top: 6),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [                     
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: SizedBox(
                        child: Column (
                          children: [
                            Container (
                              padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Когда?',
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Center(
                              child: Container(
                                padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: DropdownButton( 
                                  value: dropDownInitialValue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  isExpanded: true,
                                  items:timeList.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(items)
                                      );
                                  }).toList(),

                                  // onChanged: (newValue){
                                  //   setState(() {
                                  //     dropDownInitialValue = newValue.toString();
                                  //   });
                                  // },
                                  underline: Container(
                                    height: 0,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropDownInitialValue = newValue!;
                                    });
                                  },
                                )
                              )
                            )
                          ]
                        ),
                      ),
                    ),  

                    // const CustomRadio()                

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
                  onPressed: () { Navigator.pop(context); }
                ),
              ),
            ],
          ),
        ),
    );
  }
}