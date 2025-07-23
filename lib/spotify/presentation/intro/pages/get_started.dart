import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/spotify/presentation/choose_mode/pages/choose_mode.dart';

import '../../../../common/widgets/button/basic_app_button.dart';

class  GetStarted extends StatelessWidget {
  const  GetStarted({super.key});

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
                  image: AssetImage(AppImages.introBG))
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
                
                Text('Enjoy Listening To Music',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  fontSize: 20
                ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 21),

                Text("Your music. Your mood. Your moment.Dive into unlimited sound — tailored for you.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                      fontSize: 13
                  ),
                ),

                SizedBox(height: 20),

                appButton(
                  onPressed: (){
                    Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const  ChoodeMode()));
                  },
                  title: 'Get Started',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
