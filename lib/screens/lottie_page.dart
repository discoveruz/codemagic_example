import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePage extends StatelessWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Lottie'),
      ),
      body: ListView(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 450,
            backgroundImage: NetworkImage(
              'https://picsum.photos/600/600',
            ),
          ),
          LottieBuilder.network(
            'https://assets6.lottiefiles.com/packages/lf20_qogkaqmb.json',
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}
