import 'package:flutter/material.dart';
import 'package:rent_a_car/presentation/pages/car_list_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2B34),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/onboarding.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Premium cars.\nEnjoy the luxury',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 32),
                ),
                const Text(
                  'Premium and prestige car daily rental.\nExperience the thrill at a lower price',
                  style: TextStyle(
                      color: Colors.grey,
                      // fontWeight: FontWeight.w900,
                      fontSize: 16),
                ),
                const SizedBox(height: 15),
                Center(
                    child: SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CarListScreen())),
                            (route) => false);
                      },
                      child: const Text(
                        'Let\'s Go',
                        style: TextStyle(color: Colors.black),
                      )),
                )),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
