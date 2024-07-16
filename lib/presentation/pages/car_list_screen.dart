import 'package:flutter/material.dart';
import 'package:rent_a_car/data/models/car_model.dart';
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
              return CarCard(carModel: carList[index]);
            }))
        // Column(
        //   children: [
        //     SizedBox(
        //       height: 150,
        //     ),
        //     CarCard(
        //         carModel: CarModel(
        //             model: 'Fortuner GR',
        //             distance: 870,
        //             fuelCapacity: 50,
        //             pricePerHour: 45))
        //     // Container(
        //     //   padding: const EdgeInsets.all(15),
        //     //   margin: EdgeInsets.symmetric(horizontal: 15),
        //     //   decoration: BoxDecoration(
        //     //       color: Colors.white,
        //     //       boxShadow: [
        //     //         BoxShadow(
        //     //           color: Colors.grey.withOpacity(0.5),
        //     //           spreadRadius: 5,
        //     //           blurRadius: 7,
        //     //           // offset: Offset(0, 3), // changes position of shadow
        //     //         ),
        //     //       ],
        //     //       borderRadius: BorderRadius.circular(15)),
        //     //   child: const Column(
        //     //     mainAxisSize: MainAxisSize.min,
        //     //     crossAxisAlignment: CrossAxisAlignment.center,
        //     //     children: [
        //     //       Center(child: Image(image: AssetImage('assets/car_image.png'))),
        //     //       Text(
        //     //         'Fortuner GR',
        //     //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        //     //       ),
        //     //       SizedBox(height: 15),
        //     //       Row(
        //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //         children: [
        //     //           Row(
        //     //             children: [
        //     //               Image(image: AssetImage('assets/gps.png')),
        //     //               Text('870 Km'),
        //     //               Image(image: AssetImage('assets/pump.png')),
        //     //               Text('50 L'),
        //     //             ],
        //     //           ),
        //     //           Text('\$ 45.00/h'),
        //     //         ],
        //     //       )
        //     //     ],
        //     //   ),
        //     // ),
        //   ],
        // ),
        );
  }
}
