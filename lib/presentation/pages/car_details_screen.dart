import 'package:flutter/material.dart';
import 'package:rent_a_car/data/models/car_model.dart';
import 'package:rent_a_car/presentation/pages/map_deatils_screen.dart';
import 'package:rent_a_car/presentation/widgets/car_card.dart';
import 'package:rent_a_car/presentation/widgets/more_card.dart';

class CarDetailsScreen extends StatelessWidget {
  final CarModel carModel;
  const CarDetailsScreen({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Information"),
      ),
      body: Column(
        children: [
          CarCard(
            carModel: carModel,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            // offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Faheem Amin',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$1,234',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MapDetailsScreen()));
                    },
                    child: Container(
                      height: 170,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/maps.png'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              // offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                    car: CarModel(
                        model: "${carModel.model}-1",
                        distance: carModel.distance + 100,
                        fuelCapacity: carModel.fuelCapacity + 100,
                        pricePerHour: carModel.pricePerHour + 10)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: CarModel(
                        model: "${carModel.model}-2",
                        distance: carModel.distance + 200,
                        fuelCapacity: carModel.fuelCapacity + 200,
                        pricePerHour: carModel.pricePerHour + 20)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: CarModel(
                        model: "${carModel.model}-3",
                        distance: carModel.distance + 300,
                        fuelCapacity: carModel.fuelCapacity + 300,
                        pricePerHour: carModel.pricePerHour + 30)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
