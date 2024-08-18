import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled16/Login%20page.dart';
import 'package:untitled16/Shared.dart';
import 'package:untitled16/profile.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 var cache=CacheHelper();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Lottie.asset('assets/Animation - 1723993254845.json',
        repeat: false,
        onLoaded:  (v){
          cache.getData(key: 'first') !=null || cache.getData(key: 'second') != null ?  Future.delayed( v.duration,(){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));}) : Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())) ;
        }
        ),
      ),
    );
  }
}
