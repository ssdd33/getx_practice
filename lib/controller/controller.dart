import 'package:get/get.dart';
import 'package:getx_practice/data/services.dart';
import 'package:getx_practice/model/product_model.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;
  var selectedItem = <Product>[].obs;
  var loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    loading.value = true;
    var products = await Services.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
    loading.value = false;
  }

  void addToCart(Product product) {
    selectedItem.add(product);
  }
}
