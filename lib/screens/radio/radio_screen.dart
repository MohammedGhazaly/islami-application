import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          "assets/images/radio_image.png",
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Spacer(
          flex: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous_sharp,
                  color: Theme.of(context).primaryColor,
                  size: 42,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 42,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next_sharp,
                  color: Theme.of(context).primaryColor,
                  size: 42,
                )),
          ],
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
