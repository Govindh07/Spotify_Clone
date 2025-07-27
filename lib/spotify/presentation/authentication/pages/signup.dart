import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/Appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';

import '../../../../core/configs/assets/app_vectors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  signinText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 50
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),

           const SizedBox(height: 50),

            fullName(context),
            const SizedBox(height: 20),
            email(context),
            const SizedBox(height: 20),
            password(context),

            const SizedBox(height: 50),
            appButton(onPressed:(){} ,
                title: 'Create Account'),
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return Text('Register',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25
    ),
      textAlign: TextAlign.center,
    );
  }

  Widget fullName(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget email(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: 'Enter Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget password(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: 'Password'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget signinText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),

          TextButton(
              onPressed: (){

              },
              child: Text('Sign IN'))
        ],
      ),
    );
  }
}
