import 'package:car_rental_app/widgets/features_cards.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.of(context).size.height * 0.62,
            decoration: BoxDecoration(),
            child: Image.asset(
              "assets/images/map.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.tune,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).colorScheme.onPrimary),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Fortune GR",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    fontSize: 22,
                                    color: const Color.fromARGB(
                                        255, 218, 216, 216),
                                  )),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.cancel_outlined,
                              size: 25,
                              color: const Color.fromARGB(255, 218, 216, 216),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.rotate(
                          angle: -3.14 / 4,
                          child: Icon(
                            Icons.send_rounded,
                            color: const Color.fromARGB(255, 218, 216, 216),
                          ),
                        ),
                        Text(
                          "> 84km",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.local_gas_station,
                          color: const Color.fromARGB(255, 218, 216, 216),
                        ),
                        Text(
                          "50L",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * -0.13,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Features",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FeaturesCards(
                            text1: 'Diesel',
                            text2: 'local_gas_station',
                            icon: Icons.local_gas_station,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          FeaturesCards(
                            text1: 'Acceleration',
                            text2: 'Speed',
                            icon: Icons.speed_rounded,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          FeaturesCards(
                            text1: '',
                            text2: 'Peoples 3',
                            icon: Icons.groups_2_rounded,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShowUpAnimation(
                          delayStart: const Duration(seconds: 1),
                          animationDuration: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          offset: 0.10,
                          child: Row(
                            children: [
                              Text(
                                "\$45",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                ",00",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontSize: 25,
                                        color:
                                            const Color.fromARGB(136, 5, 5, 5),
                                        fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "/day",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        ShowUpAnimation(
                          direction: Direction.horizontal,
                          delayStart: const Duration(seconds: 2),
                          animationDuration: Duration(seconds: 1),
                          curve: Curves.bounceIn,
                          offset: 0.10,
                          child: Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                "Book Now",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.17,
            right: MediaQuery.sizeOf(context).width * 0.05,
            child: SizedBox(
              width: 210,
              height: 210,
              child: ShowUpAnimation(
                direction: Direction.horizontal,
                delayStart: const Duration(seconds: 0),
                animationDuration: Duration(seconds: 1),
                curve: Curves.bounceIn,
                offset: 0.10,
                child: Image.asset("assets/images/car2.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
