
import 'package:flutter/material.dart';
import 'package:taxi/radio_model.dart';
// import 'radio_model.dart';

enum SingingCharacter { one, two, three, four, five, six }

class CreateOrderApp extends StatefulWidget {
  const CreateOrderApp({Key? key}) : super(key: key);

  static const routeName = '/create_order';

  @override
  _CreateOrderState createState() => _CreateOrderState();
}

switchPicUpBackgroundColor(pickUpIsSwitched) {
  if (pickUpIsSwitched) {
   return const Color.fromRGBO(10, 255, 152, 1); 
  }
  return const Color.fromRGBO(196, 196, 196, 1);
}

switchBonusBackgroundColor(bonusIsSwitched) {
  if (bonusIsSwitched) {
   return const Color.fromRGBO(10, 255, 152, 1); 
  }
  return const Color.fromRGBO(196, 196, 196, 1);
}

class _CreateOrderState extends State<CreateOrderApp> {
  String dropDownInitialValue = 'Сейчас';
  bool pickUpIsSwitched = false;
  bool bonusIsSwitched = false;
  var activeTrackColor = [196, 196, 196, 1];
  bool visibilityPicUpAddress = false;
  double detainsContainerHeight = 263;
  
  @override
  Widget build(BuildContext context) {
    var timeList = ['Сейчас', '9:00', '12:00', '18:00'];
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
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
                height: detainsContainerHeight,
                margin: const EdgeInsets.only(top: 5),
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
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 40,
                                padding: const EdgeInsetsDirectional.only(start: 24, end: 24, top: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: DropdownButton( 
                                  value: dropDownInitialValue,
                                  icon: const Icon(Icons.arrow_drop_down, size: 32, color: Colors.black,),
                                  isExpanded: true,
                                  isDense: true,
                                  items:timeList.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items, 
                                            style: const TextStyle(fontWeight: FontWeight.w600,),
                                          )  
                                      );
                                  }).toList(),

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

                    Container(
                      margin: const EdgeInsets.only(top: 19),
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: SizedBox(
                        child: Column (
                          children: [
                            Container (
                              padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Сколько человек?',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            const Center(
                              child: CustomRadio(),
                              // Container(
                              //   height: 39,
                              //   padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
                              //   decoration: BoxDecoration(
                              //     color: Colors.red[300],
                              //     border: Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)),
                              //   ),
                              // )
                            )
                          ]
                        ),
                      ),
                    ),  

                    Container(
                      margin: const EdgeInsets.only(top: 28),
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: SizedBox(
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container (
                              padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Забрать из дома',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Center(
                              child: Transform.scale(
                                scale: 1.3,
                                child: Switch(
                                  value: pickUpIsSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      if (pickUpIsSwitched){
                                        detainsContainerHeight = 263;
                                        visibilityPicUpAddress = false;
                                      } else {
                                        detainsContainerHeight = 363;
                                        visibilityPicUpAddress = true; 
                                      }
                                      pickUpIsSwitched = value;
                                      // print(pickUpIsSwitched);
                                    });
                                  },
                                  activeTrackColor: switchPicUpBackgroundColor(pickUpIsSwitched),
                                  activeColor: Colors.white,
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                    ),  

                    (visibilityPicUpAddress) ? 
                    Container(
                      margin: const EdgeInsets.only(top: 19),
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: SizedBox(
                        child: Column (
                          children: [
                            Container (
                              padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Откуда вас забрать?',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 39,
                                padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 1)),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Укажите адрес',
                                    isDense: true,              // Added this
                                    focusedBorder: InputBorder.none,        
                                    contentPadding: EdgeInsets.only(top: 10, left: 5),  // Added this
                                  )
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                    ) : Container(),

                  ],
                ),
              ),

              Container(
                height: 75,
                margin: const EdgeInsets.only(top: 5),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [                                     
                    Container(
                      margin: const EdgeInsets.only(top: 18),
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: SizedBox(
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container (
                                  padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                                  alignment: Alignment.topLeft,
                                  child: const Text(
                                    'Потратить бонусы',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container (
                                  padding: const EdgeInsetsDirectional.only(start: 11, bottom: 5),
                                  // alignment: Alignment.topLeft,
                                  child: const Text(
                                    '500 тг',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Transform.scale(
                                scale: 1.3,
                                child: Switch(
                                  value: bonusIsSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      bonusIsSwitched = value;
                                    });
                                  },
                                  activeTrackColor: switchBonusBackgroundColor(bonusIsSwitched),
                                  activeColor: Colors.white,
                                ),
                              )
                            )
                          ]
                        ),
                      ),
                    ),  
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 21),
                child: ElevatedButton (
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(10, 255, 152, 1),
                    minimumSize: const Size(300, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                    side: const BorderSide(width: 1.0, color: Colors.black,)
                  ),
                  child: const Text(
                      'К оплате 1000 тг',
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