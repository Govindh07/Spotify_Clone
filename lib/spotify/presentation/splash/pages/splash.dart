import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/spotify/presentation/intro/pages/get_started.dart';
import '../../../../core/configs/assets/app_vectors.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: SplashPage(),));
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void  initState(){
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo,
        ),
      )
    );
  }

  Future<void> redirect() async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GetStarted()));
  }
}

