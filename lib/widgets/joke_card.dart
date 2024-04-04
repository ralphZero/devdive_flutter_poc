import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  const JokeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What did the fish say when it hit the wall?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Dam.',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/star.gif',
                    width: 25.0,
                  ),
                  Image.asset(
                    'assets/star.gif',
                    width: 25.0,
                  ),
                  Image.asset(
                    'assets/star.gif',
                    width: 25.0,
                  ),
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
