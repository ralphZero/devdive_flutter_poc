import 'package:flutter/material.dart';

class JokeCard extends StatefulWidget {
  final String setup;
  final String punchline;
  final int initialRating;

  const JokeCard({
    required this.setup,
    required this.punchline,
    this.initialRating = 0,
    super.key,
  });

  @override
  State<JokeCard> createState() => _JokeCardState();
}

class _JokeCardState extends State<JokeCard> {
  int rating = 1;

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
          Text(
            widget.setup,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.punchline,
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
                  for (var i = 1; i <= rating; i++)
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
                onPressed: () {
                  setState(() {
                    if (rating < 5) {
                      rating++;
                    } else {
                      rating = 1;
                    }
                  });
                },
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
