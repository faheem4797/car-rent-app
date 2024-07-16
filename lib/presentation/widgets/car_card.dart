import 'package:flutter/material.dart';

import 'package:rent_a_car/data/models/car_model.dart';

class CarCard extends StatelessWidget {
  final CarModel carModel;
  const CarCard({
    super.key,
    required this.carModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      padding: const EdgeInsets.all(15),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Image(image: AssetImage('assets/car_image.png'))),
          Text(
            carModel.model,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage('assets/gps.png')),
                  Text('${carModel.distance.round()} Km'),
                  const Image(image: AssetImage('assets/pump.png')),
                  Text('${carModel.fuelCapacity.round()} L'),
                ],
              ),
              Text('\$ ${carModel.pricePerHour.toStringAsFixed(2)}/h'),
            ],
          )
        ],
      ),
    );
  }
}
