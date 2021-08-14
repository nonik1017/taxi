import 'package:flutter/material.dart';
import 'package:taxi/authorization.dart';
import 'package:taxi/main_slider.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AuthorizationApp.routeName: (context) => AuthorizationApp(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
      title: 'Flutter Card Carousel App',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(
              'Главная',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),  
              ),
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.black,
              size: 40
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children:  <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_circle_rounded, size: 45,),
                  title: Text("Елдос Сайлауов"),
                  subtitle: Text("+7 708 709 01 30"),
                  // trailing: Icon(Icons.arrow_back),
                  // onTap: (){}
                ),
                const ListTile(
                  // leading: Icon(Icons.settings),
                  title: Text("Главная"),
                  // trailing: Icon(Icons.arrow_downward),
                  // onTap: (){
                  //   Navigator.pop(context);
                  // }
                ),
                ListTile(
                  // leading: Icon(Icons.settings),
                  title: const Text("Авторизация"),
                  // trailing: Icon(Icons.arrow_downward),
                  onTap: (){
                    Navigator.pushNamed(
                        context,
                        AuthorizationApp.routeName,
                      );
                  }
                ),
                const ListTile(
                  // leading: Icon(Icons.settings),
                  title: Text("Уведомление"),
                  // trailing: Icon(Icons.arrow_downward),
                  // onTap: (){}
                ),
                const ListTile(
                  // leading: Icon(Icons.settings),
                  title: Text("Межгород"),
                  // trailing: Icon(Icons.arrow_downward),
                  // onTap: (){}
                ),
                const ListTile(
                  // leading: Icon(Icons.settings),
                  title: Text("Служба поддержки"),
                  // trailing: Icon(Icons.arrow_downward),
                  // onTap: (){}
                ),
              ],
            ),
          ),
          body: Container (
            height: 145,
            margin: const EdgeInsets.only(top: 6),
            color: Colors.white,
            child: Column(
              children: [
                SliderApp(),
              ],
            ),
          ),
        ), 
      ),
    );
  }
}