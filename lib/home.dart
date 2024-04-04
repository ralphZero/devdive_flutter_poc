import 'package:devdive_flutter_poc/widgets/joke_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'My Jokes',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
          ),
        ),
        backgroundColor: const Color(0xFF282828),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            color: Colors.blue,
            child: const Text(
              'Who wrote these...gosh',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                JokeCard(),
                JokeCard(),
                JokeCard(),
                JokeCard(),
                JokeCard(),
                JokeCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
