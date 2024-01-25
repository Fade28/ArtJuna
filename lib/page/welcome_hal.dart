import 'package:artjuna_mobile/page/home_hal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class WelcomeHal extends StatefulWidget {
  const WelcomeHal({Key? key}) : super(key: key);

  @override
  WelcomeHalState createState() => WelcomeHalState();
}

class WelcomeHalState extends State<WelcomeHal> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (_) => const MyHomePage(
                title: "Homepage",
              )),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/img/welimg/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/img/welimg/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      animationDuration: 3500,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/img/favicon.png',
                  width: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "ArtJuna",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Tarian 1",
          body:
              "Tarian ini berasal dari daerah ini dan menjadi ciri khas ketika ada acara adat seperti pernikahan",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
            boxDecoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.795),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 100,
          ),
        ),
        PageViewModel(
          title: "Tarian 1",
          body:
              "Tarian ini berasal dari daerah ini dan menjadi ciri khas ketika ada acara adat seperti pernikahan",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
            boxDecoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.795),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 100,
          ),
        ),
        PageViewModel(
          title: "Tarian 1",
          body:
              "Tarian ini berasal dari daerah ini dan menjadi ciri khas ketika ada acara adat seperti pernikahan",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
            boxDecoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.795),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 100,
          ),
        ),
        PageViewModel(
          title: "Tarian 1",
          body:
              "Tarian ini berasal dari daerah ini dan menjadi ciri khas ketika ada acara adat seperti pernikahan",
          image: _buildFullscreenImage(),
          decoration: pageDecoration.copyWith(
            boxDecoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.795),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
            safeArea: 100,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 241, 8, 8))),
      next: const Icon(
        Icons.arrow_forward,
        color: Color.fromARGB(255, 241, 8, 8),
      ),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 241, 8, 8))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: Color.fromARGB(255, 241, 8, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
