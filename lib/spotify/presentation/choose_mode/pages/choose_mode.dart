import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/spotify/presentation/auth_select/pages/signup_or_signin.dart';
import '../../../../common/widgets/button/basic_app_button.dart';
import '../../../../core/configs/assets/app_images.dart';
import '../../../../core/configs/assets/app_vectors.dart';
import '../../../../core/configs/theme/app_colors.dart';
import '../bloc/theme_logic.dart';

class ChoodeMode extends StatelessWidget {
  const ChoodeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(
      padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.choosemodeBG))
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
          ),
          SvgPicture.asset(
              AppVectors.logo
          ),

          Spacer(),

          Text('Choode Mode',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<ThemeLogic>().updateTheme(ThemeMode.dark);
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            color: Color(0xff30393C).withOpacity(0.5),
                          ),
                          child: SvgPicture.asset(
                            AppVectors.moon,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 15,),
                  Text("Dark Mode",
                  style: TextStyle(color: Colors.white,
                  fontSize: 17,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ],
              ),

              SizedBox(width: 40,),

              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<ThemeLogic>().updateTheme(ThemeMode.light);
                    },
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff30393C).withOpacity(0.5),
                          ),
                          child: SvgPicture.asset(
                            AppVectors.sun,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 15,),
                  Text("Light Mode",
                    style: TextStyle(color: Colors.white,
                      fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),

            ],
          ),

          SizedBox(height: 50),

          appButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  signup_signinPage()));
            },
            title: 'Continue',
          )
        ],
      ),
    ),
  ],
),
    );
  }
}
