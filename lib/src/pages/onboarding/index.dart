import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:dreamers_app_design/src/models/onboard.dart';
import 'package:dreamers_app_design/src/pages/login/index.dart';
import 'package:dreamers_app_design/src/pages/register/index.dart';
import 'package:dreamers_app_design/src/widgets/background_widget.dart';
import 'package:dreamers_app_design/src/widgets/dotIndicator_widget.dart';
import 'package:dreamers_app_design/src/widgets/onboardingContent_widget.dart';
import 'package:flutter/material.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  late PageController _pageController;

  int _pageIndex = 0;


  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Onboard> boards = [
    Onboard(
      image: "assets/images/motivation.png",
      title: "Empowering the next generation",
      description: "Here you'll see rich vaiety of goods, carefully classified for you to select."
    ),
    Onboard(
      image: "assets/images/handshake.png",
      title: "Initiative Driven",
      description: "Here you'll see rich vaiety of goods, carefully classified for you to select classified for you to select."
    ),
    Onboard(
      image: "assets/images/handshake.png",
      title: "Partnership",
      description: "Here you'll see rich vaiety of goods, carefully classified for you to select classified for you to select."
    ),
  ];

  bool get isLastPage => _pageIndex == boards.length - 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: boards.length,
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardingContent(
                  image: boards[index].image,
                  title: boards[index].title,
                  description: boards[index].description
                ),
              ),
            ),
            SizedBox(
              height: isLastPage ? 120 : 60,
              width: size.width,
              child: isLastPage
              ? Column(
                  children: [
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: pinkColor
                        ),
                        child: const Text(
                          'Sign In to Your Account',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  RegisterPage()),
                        ),
                        child: const Text(
                          'Join Dreamers',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: greenColor
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                  ...List.generate(
                    boards.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    )
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                    child:  Row(
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 18,
                            color: greenColor
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 15,
                          color: greenColor,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}