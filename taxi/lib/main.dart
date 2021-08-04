import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex=0;

  List cardList=[
    const Item1(),
    const Item2(),
    const Item3(),
    const Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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
          iconTheme: const IconThemeData(color: Colors.black),
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
        body: Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                height: 6,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.6,
                height: 135.0,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                // aspectRatio: 21/5,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card){
                return Builder(
                  builder:(BuildContext context){
                    return  Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                        top: 10,
                        bottom: 10
                      ),
                      height: MediaQuery.of(context).size.height*0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        // color: Colors.blueAccent,
                        child: card,
                      ),
                    );
                  }
                );
              }).toList(),
            ),
            // circles
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: map<Widget>(cardList, (index, url) {
            //     return Container(
            //       width: 10.0,
            //       height: 10.0,
            //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
            //       ),
            //     );
            //   }),
            // ),
            SizedBox(
              child: Container(
                height: 6,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: 145,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: 6,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(229, 229, 229, 1),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Lorem",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            "Ipsum",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.w600
            )
          ),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Lorem",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            "Ipsum",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.w600
            )
          ),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/flutter_dev.png',
            height: 90.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Lorem",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            )
          ),
          Text(
            "Ipsum",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
              fontWeight: FontWeight.w600
            )
          ),
        ],
      ),
    );
  }
}

