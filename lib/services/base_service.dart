import '../model/ship_model.dart';

abstract class BaseService {
  String endpoint = "";

  Future<ShipModel> getService();
}
