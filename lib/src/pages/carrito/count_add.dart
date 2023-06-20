import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CounterAdd2 extends StatefulWidget {
  final int indeX;

  const CounterAdd2({Key? key, required this.indeX}) : super(key: key);

  @override
  _CounterAddState2 createState() => _CounterAddState2();
}

class _CounterAddState2 extends State<CounterAdd2> {
  final formatCurrency = NumberFormat.simpleCurrency(
    decimalDigits: 44,
  );
  int _counter = 1;

  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Stack _body(BuildContext context) {
    return Stack(
      children: [
        // Center(
        //   child: Container(
        //     height: 35,
        //     width: 25,
        //     color: Colors.black,
        //   ),
        // ),
        Row(children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    // color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.horizontal_rule_rounded,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            _decrementCounter();
                          },
                        ),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            _counter.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 1.3,
                                fontSize: 22),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 2,
                          color: Colors.grey,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_rounded,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            _incrementCounter();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
