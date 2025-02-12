import 'package:car_rental_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ShowUpAnimation(
                    curve: Curves.easeIn,
                    direction: Direction.horizontal,
                    offset: 0.10,
                    delayStart: Duration(seconds: 0),
                    animationDuration: Duration(seconds: 1),
                    child: Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: Image.asset(
                        "assets/images/splash_image.png",
                        height: 500,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: ShowUpAnimation(
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.10,
                      delayStart: Duration(seconds: 1),
                      animationDuration: Duration(seconds: 1),
                      child: Text(
                        "Premium cars.\nEnjoy the luxury",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 35),
                      ),
                    ),
                  )
                ],
              ),
              ShowUpAnimation(
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.10,
                delayStart: Duration(seconds: 2),
                animationDuration: Duration(seconds: 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Premium and prestige car daily rental \nExperience the thrill at lower price",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          ShowUpAnimation(
            curve: Curves.bounceIn,
            direction: Direction.horizontal,
            offset: 0.10,
            delayStart: Duration(seconds: 3),
            animationDuration: Duration(seconds: 1),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => HomePage(),
                        ),
                      ),
                  child: Text(
                    "Let's Go",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
