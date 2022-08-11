// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koraplay_med_app/app/dashboard.dart';
import 'package:koraplay_med_app/onboarding/slider_content.dart';
import 'package:koraplay_med_app/utils/colors.dart';



class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  int selectedSlider = 0;

  final PageController _pageController = PageController();

  //Slider
  List<Map<String, String>> sliders = [
    {
      "image": "images/on1.png",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    },
    {
      "image": "images/on2.png",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    },
    {
      "image": "images/on3.png",
      "title": "Perfect Healthcare \n Solution",
      "text": "Find a specialist that you only\n need an consulting application"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    selectedSlider = index;
                  });
                },
                controller: _pageController,
                itemCount: sliders.length,
                itemBuilder: (context, index) =>
                    SliderContent(
                      image: sliders[index]['image'] as String,
                      title: sliders[index]['title'] as String,
                      text: sliders[index]['text'] as String,),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        sliders.length, (index) => buildSliderNav(index: index)),
                  ),
                ],

              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child:selectedSlider == 2 ?

              OnboardButton() : null,
            ),
          ],
        ),

      ),
    );

  }


  AnimatedContainer buildSliderNav({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 15,
      decoration: BoxDecoration(
          color: selectedSlider == index ? Palette.primaryColor : Palette.secondaryColor,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
class OnboardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 40),
      child: ElevatedButton(
          onPressed:(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            minimumSize:Size(double.infinity, 50),
            primary: Color(0xff000000),
            elevation: 5,
          ),
          child: Text(
            'Get Started',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
            ),
          )
      ),
    );
  }

}

