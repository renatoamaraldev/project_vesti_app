import 'package:mobx/mobx.dart';

part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  @observable
  String txtSearch = '';

  @observable
  int searchproductsint = 1;

  @observable
  var snapshot;

  @action
  void updateSnapshot(value) {
    snapshot = value;
  }

  @action
  void updateIntSearchBottom(value) {
    searchproductsint = value;
  }

  @action
  void updateTxtSearch(value) {
    txtSearch = value;
  }
}
