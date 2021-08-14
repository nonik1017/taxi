import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({Key? key}) : super(key: key);

  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56 * 6 + 1,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: Colors.black),
          left: BorderSide(width: 1, color: Colors.black),
          bottom: BorderSide(width: 1, color: Colors.black)
        ),
      ),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => setState(() => _value = 1),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 1 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('1')),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _value = 2),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 2 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('2')),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _value = 3),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 3 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('3')),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _value = 4),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 4 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('4')),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _value = 5),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 5 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('5')),
            ),
          ),
          GestureDetector(
            onTap: () => setState(() => _value = 6),
            child: Container(
              height: 39,
              width: 56,
              decoration: BoxDecoration(
                border: const Border(right: BorderSide(width: 1, color: Colors.black),),
                color: _value == 6 ? Colors.grey : Colors.transparent,
              ),
              child: const Center(child: Text('6')),
            ),
          ),
        ],
      ),
    );
  }
}