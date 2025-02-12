import 'package:car_rental_app/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (c) => DetailPage(),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 240,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NEAREST CAR",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 16, color: Colors.grey.shade500),
            ),
            ShowUpAnimation(
                delayStart: const Duration(seconds: 0),
                animationDuration: Duration(seconds: 1),
                curve: Curves.slowMiddle,
                offset: 0.10,
                child: Image.asset("assets/images/card_image.png")),
            Text(
              "Fortunes GR",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 10,
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
                        color: Colors.grey,
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
                      color: Colors.grey,
                    ),
                    Text(
                      "50L",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "\$45.00/h",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
