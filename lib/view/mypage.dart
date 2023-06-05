import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/controller.dart';
import 'package:getx_practice/view/product_tile.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});
  final controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('chef shop'),
          backgroundColor: Colors.black87,
          elevation: 0,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.view_list_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ]),
      body: Obx(
        () => controller.loading.value
            ? const CircularProgressIndicator()
            : Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ProductTile(
                          controller.productList[index], controller.addToCart);
                    },
                    itemCount: controller.productList.length,
                  ),
                ),
              ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'item:${controller.selectedItem.value.length}',
            style: const TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.add_shopping_cart_outlined),
          backgroundColor: Colors.deepOrangeAccent[400],
        ),
      ),
    );
  }
}
