import 'package:flutter/material.dart';
import 'package:untitled16/Shared.dart';
import 'package:untitled16/counter%20page.dart';
import 'package:untitled16/profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  var cache=CacheHelper();
  var result1;
  var result2;
bool m=false;
var r1;
var r2;
  TextEditingController first=TextEditingController();
  TextEditingController second=TextEditingController();
@override
  void initState() {
  result1 = cache.getData(key: 'first');
  result2 = cache.getData(key: 'second');
  // first.text.isNotEmpty ?  Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter())) : Text('embty value') ;


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: first,
                  decoration: const InputDecoration(
                      hintText: "Name ",
                      border:
                      UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  controller: second,
                  decoration: const InputDecoration(
                      hintText: "Name ",
                      border:
                      UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // Container(
          //   width: 250,
          //   height: 50,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(25),
          //       border: Border.all(color: Colors.black)),
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: TextButton(
          //       clipBehavior: Clip.antiAliasWithSaveLayer,
          //       onPressed: () {
          //         setState(() {});
          //       },
          //       child: Container(
          //         height: 20,
          //         child: Text("Save"),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 15,
          ),
          // result1 != null && result2 != null ? ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()))
          //
          // ;
          //   }, child: Text('Enter first Screen')) : SizedBox(),

          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(

                clipBehavior: Clip.antiAliasWithSaveLayer,
                onPressed: () {


                  setState(() {




                    var res1 = cache.getData(key: "first");
                    result1 = res1;
                    var res2 = cache.getData(key: "second");
                    result2 = res2;
                    cache.setData(key: "first", value: first.text);
                    cache.setData(
                        key: "second", value: second.text);


                    print(result1);
                    print(result2);
                  });
                },
                child: Container(
                  height: 20,
                  child: Text("Submit save data"),
                ),
              ),
            ),
          ),
          TextButton(onPressed: (){
            setState(() {
              dynamic rest1=result1;
              dynamic rest2=result2;

              first.text.isNotEmpty || second.text.isNotEmpty && rest1.toString().isNotEmpty || rest2.toString().isNotEmpty ?  Future.delayed(Duration(seconds: 2),(){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));}) : Text('embty value') ;

            });
          }, child: Text('profile')),

          TextButton(onPressed: (){
            setState(() {

              var me= Text(cache.getData(key: 'first'));
              r1=me;
              var mo=Text(cache.getData(key: 'second'));
              r2=mo;
              if(m==false){
                m=true;
              }else{
                m=false;
              }
            });

          }, child: Text("show data ")),
          m == true ? Text(result1) : SizedBox(),
          m == true ? Text(result2) : SizedBox(),
        ],
      ));

  }
}
