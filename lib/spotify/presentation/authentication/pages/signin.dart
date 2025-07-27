import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/Appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/spotify/presentation/authentication/pages/signup.dart';

import '../../../../core/configs/assets/app_vectors.dart';

class Signin  extends StatelessWidget {
  const Signin ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  signupText(context),
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

            const SizedBox(height: 50),
            appButton(onPressed:(){} ,
                title: 'Sign In'),
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return Text('Sign In',
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
          hintText: 'Enter username or Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget email(BuildContext context){
    return TextField(
      decoration: InputDecoration(
          hintText: 'Password'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Not a member?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),

          TextButton(
              onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Signup()));
    },
              child: Text('Register Now'))
        ],
      ),
    );
  }
}
