import 'package:flutter/material.dart';
import 'package:rent_a_car/data/models/car_model.dart';
import 'package:rent_a_car/presentation/pages/car_details_screen.dart';
import 'package:rent_a_car/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<CarModel> carList = [
    CarModel(
        model: 'Fortuner GR',
        distance: 870,
        fuelCapacity: 50,
        pricePerHour: 45),
    CarModel(
        model: 'Honda City',
        distance: 215.55,
        fuelCapacity: 40,
        pricePerHour: 35.58),
    CarModel(
        model: 'Suzuki Mehran',
        distance: 1555,
        fuelCapacity: 20,
        pricePerHour: 10.5),
    CarModel(
        model: 'Suzuki Mehran',
        distance: 1555,
        fuelCapacity: 20,
        pricePerHour: 10.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Choose Your Car'),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: carList.length,
            itemBuilder: ((context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CarDetailsScreen(carModel: carList[index])));
                  },
                  child: CarCard(carModel: carList[index]));
            })));
  }
}
