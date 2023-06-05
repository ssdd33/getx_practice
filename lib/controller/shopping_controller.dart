import 'package:get/get.dart';
import 'package:getx_practice/model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    //초기 데이터 api 호출
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    var productData = [
      Product(
        id: 1,
        price: 30,
        productName: 'Mouse',
        productDescription: 'some description about product',
      ),
      Product(
        id: 2,
        price: 30,
        productName: 'keyboard',
        productDescription: 'some description about product',
      ),
      Product(
        id: 3,
        price: 30,
        productName: 'speaker',
        productDescription: 'some description about product',
      ),
      Product(
        id: 4,
        price: 30,
        productName: 'monitor',
        productDescription: 'some description about product',
      ),
      Product(
        id: 5,
        price: 30,
        productName: 'ram',
        productDescription: 'some description about product',
      ),
    ];

    products.assignAll(productData);
  }
}
