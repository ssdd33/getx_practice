import 'package:flutter/material.dart';
import 'package:getx_practice/controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('getx sample')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetBuilder<Controller>(
                init: Controller(),
                builder: (_) =>
                    Text('current value : ${Get.find<Controller>().x}')),
            ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().increment();
                },
                child: const Text('Add button'))
          ]),
        ),
      ),
    );
  }
}
