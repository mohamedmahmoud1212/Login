import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled16/Shared.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var cache = CacheHelper();
  var count1;
  var count2;

  TextEditingController first=TextEditingController();
  TextEditingController counterr=TextEditingController();

  int _counter=0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  void initState() {
   var count= cache.getData(key: 'val');

     if(count != null){
       _counter=count;
     }
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Text('$_counter'),
  Center(
   child:
ElevatedButton(onPressed: (){
  _incrementCounter();
   cache.setData(key: 'val', value: _counter);

 }, child:  Text('*')
))
      ],),
    );
  }
}

