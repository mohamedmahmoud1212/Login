import 'package:flutter/material.dart';
import 'package:untitled16/Shared.dart';
import 'package:untitled16/first%20page.dart';
import 'Login page.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var cache=CacheHelper();
  bool m=false;
  var r1;
  var r2;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: 60,
                width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: CircleAvatar(

                  radius: 40,
                  child: Image.asset('assets/Screenshot 2024-06-03 223750.png'),
                ),
              ),
              SizedBox(width: 20,),
              Text(cache.getData(key: 'first'),style: TextStyle(fontSize: 20),),
            ],
          ),
                  SizedBox(height: 30,),
                  ListTile(
                    contentPadding:
                    EdgeInsets.only(top: 10),
                    title: Text('Login'),
                    leading: Icon(Icons.login),
                  trailing: Icon(Icons.arrow_forward),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},

                  ),
            ListTile(
              contentPadding:
              EdgeInsets.only(top: 10),
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash()));},

            ),
            ListTile(
              contentPadding:
              EdgeInsets.only(top: 10),
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
            ),
                  Container(
padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                   alignment: Alignment.center,
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Colors.black)),
                  child: InkWell(

                    onTap: (){
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

                    },
                  focusColor: Colors.grey,

                      child: Text('Show User data')),
                ),

                m == true ? Container(padding: EdgeInsets.only(left: 5,right: 5), alignment: Alignment.center,color: Colors.grey.shade200,width: 130,height:100,child: Text(' Name : ${cache.getData(key: 'first')}, Password : ${cache.getData(key: 'second')}')) : SizedBox(),
              ],
            ),


          ),

        ],),),
    );
  }
}
