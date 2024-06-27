
import 'package:flutter/material.dart';
import 'package:pkart/utils/constants/image_strings.dart';
import 'package:pkart/utils/constants/text_strings.dart';
import 'package:pkart/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingWidget(
                image: TImages.onboardingImage1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onboardingSubTitle1,
              ),
              OnboardingWidget(
                image: TImages.onboardingImage2,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onboardingSubTitle1,
              ),
              OnboardingWidget(
                image: TImages.onboardingImage3,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onboardingSubTitle3,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key, required this.image, required this.title, required this.subTitle,
  });
final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image:  AssetImage(image),
          ),
          Text(
           title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          )
          ,const SizedBox(height: 16.0,),
          Text(
           subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
