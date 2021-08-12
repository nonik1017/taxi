import 'package:flutter/material.dart';
import 'package:taxi/main_slider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Carousel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
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
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.account_circle_rounded, size: 45,),
                title: Text("Елдос Сайлауов"),
                subtitle: Text("+7 708 709 01 30"),
                // trailing: Icon(Icons.arrow_back),
                // onTap: (){}
              ),
              ListTile(
                // leading: Icon(Icons.settings),
                title: Text("Главная"),
                // trailing: Icon(Icons.arrow_downward),
                // onTap: (){}
              ),
              ListTile(
                // leading: Icon(Icons.settings),
                title: Text("Уведомление"),
                // trailing: Icon(Icons.arrow_downward),
                // onTap: (){}
              ),
              ListTile(
                // leading: Icon(Icons.settings),
                title: Text("Межгород"),
                // trailing: Icon(Icons.arrow_downward),
                // onTap: (){}
              ),
              ListTile(
                // leading: Icon(Icons.settings),
                title: Text("Служба поддержки"),
                // trailing: Icon(Icons.arrow_downward),
                // onTap: (){}
              ),
            ],
          ),
        ),
        body: const SliderApp()
      ),
    );
  }
}