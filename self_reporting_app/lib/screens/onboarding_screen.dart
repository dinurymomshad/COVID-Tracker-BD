import 'package:flutter/material.dart';
import 'package:selfreportingapp/services/app_update.dart';
import 'package:selfreportingapp/widgets/update_popup.dart';
import '../widgets/SKOnBoarding/sk_onboarding_model.dart';
import '../widgets/SKOnBoarding/sk_onboarding_screen.dart.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    try {
      checkForUpdate();
    } catch (e) {
      print(e);
    }
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      print(state);
      checkForUpdate();
    }
    super.didChangeAppLifecycleState(state);
  }

  final pageList = [
    SkOnboardingModel(
      title: 'আমার নিরাপত্তা \nআমার হাতে',
      description:
          'অসুস্থ হলে বা অসুস্থ ব্যক্তির সংস্পর্শে আসলে বা আক্রান্ত দেশ থেকে আসলে মাস্ক ব্যবহার করুন',
      titleColor: Colors.black,
      descripColor: Colors.black45,
      imagePath: 'assets/people.jpg',
    ),
    SkOnboardingModel(
      title: 'জরুরী প্রয়োজন ছাড়া ভিড় এবং ভ্রমন এড়িয়ে চলুন',
      description: 'স্বাস্থ্য পরামর্শ পেতে ১৬২৬৩ অথবা ৩৩৩ নম্বরে কল করুন',
      titleColor: Colors.black,
      descripColor: Colors.black45,
      imagePath: 'assets/people.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SKOnboardingScreen(
          bgColor: Colors.white,
          themeColor: Color(0xFF7B51D3),
          pages: pageList,
          skipClicked: (value) {
            (needsUpdate)
                ? buildShowDialog(context)
                : Navigator.of(context).pushReplacementNamed('/HomePage');
          },
          getStartedClicked: (value) {
            (needsUpdate)
                ? buildShowDialog(context)
                : Navigator.of(context).pushReplacementNamed('/HomePage');
          },
        ),
      ),
    );
  }
}
