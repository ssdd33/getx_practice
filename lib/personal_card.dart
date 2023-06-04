import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_practice/controller.dart';

class PersonalCard extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  PersonalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0XFF89dad0)),
                  child: Center(
                      child: GetX<Controller>(
                          builder: (_) =>
                              Text('name:${controller.person().name}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ))))),
              Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0XFF89dad0)),
                  child: Center(
                      child: Obx(() => Text('age:${controller.person().age}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ))))),
              Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0XFF89dad0)),
                  child: Center(
                      child: GetX(
                          init: Controller(),
                          builder: (controller) {
                            return Text(
                                'age:${Get.find<Controller>().person().age}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ));
                          }))),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.updateInfo();
          },
          child: const Icon(
            Icons.add,
            color: Colors.red,
          )),
    );
  }
}
