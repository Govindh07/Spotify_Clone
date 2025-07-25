import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/button/Appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/spotify/presentation/authentication/pages/signup.dart';

class signup_signinPage extends StatelessWidget {
  const signup_signinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
                AppVectors.bottomPattern
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
                AppImages.signup_signin_BG
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo
                  ),
                  SizedBox(height: 55),
                  Text("Enjoy Listening to Music",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: context.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 20
                    ),
                  ),

                  SizedBox(height: 21,),

                  Text("Spotify is a proprietary Swedish audio streaming and media services provider",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey,
                        fontSize: 13
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 30,),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: appButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => const Signup()
                                  )
                              );
                            },
                            title: 'Register'
                        ),
                      ),

                      SizedBox(width: 20,),

                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: (){

                            },
                            child: Text('Sigin',
                            style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: context.isDarkMode ? Colors.white : Colors.black),)),
                      )
                    ]
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
