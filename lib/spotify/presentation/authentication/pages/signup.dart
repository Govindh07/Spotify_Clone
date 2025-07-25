import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/Appbar/app_bar.dart';

import '../../../../core/configs/assets/app_vectors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            fullName()
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

  Widget fullName(){
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
    );
  }
}
