import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int searchproductsint = 1;

  @action
  void updateIntSearchBottom(value) {
    searchproductsint = value;
  }
}
