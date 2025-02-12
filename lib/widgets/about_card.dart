import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.onPrimary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "More Cars",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                    color: Colors.grey,
                  ))
            ],
          ),
          Text(
            "Corolla Cross",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_right,
                    color: const Color.fromARGB(255, 218, 216, 216),
                    size: 35,
                  ))
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Text(
            "Ionic 5",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  Transform.rotate(
                    angle: 3.14 / 2,
                    child: Icon(
                      Icons.battery_3_bar_outlined,
                      color: const Color.fromARGB(255, 218, 216, 216),
                    ),
                  ),
                  Text(
                    "50%",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: const Color.fromARGB(255, 218, 216, 216),
                  size: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
