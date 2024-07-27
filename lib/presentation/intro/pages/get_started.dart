import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/data/common/widgets/button/basic_app_button.dart';
import 'package:spotify/data/core/configs/assets/app_images.dart';
import 'package:spotify/data/core/configs/assets/app_vectors.dart';
import 'package:spotify/data/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AppImages.introBG,
                    ),
                    fit: BoxFit.fill)),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)),
                Spacer(),
                Text(
                  "Enjoy Listening to music",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 21,
                ),
                 Text(
                  "Nostrud eu consectetur cillum exercitation laboris nulla velit.Cupidatat culpa dolor aliquip magna amet do ea irure ut reprehenderit occaecat pariatur in.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                BasicAppButton(onPressed: (){
                  
                }, title: 'Get Started')
              ],
            ),
          )
        ],
      ),
    );
  }
}
