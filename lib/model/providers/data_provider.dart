import '../../model/ship_model.dart';
import '../../model/services/bliss_api_service.dart';
import '../../model/services/escape_api_service.dart';
import '../../model/services/sky_api_service.dart';
import 'package:ncl_tech_assesment/model/services/sky_api_service.dart';
import 'package:riverpod/riverpod.dart';

final skyDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(skyApiProvider).getService();
});

final escapeDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(escapeApiProvider).getService();
});

final blissDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(blissApiProvider).getService();
});

FutureProvider<ShipModel> getShipProvider(String title) {
  switch (title) {
    case "sky":
      return skyDataProvider;
    case "escape":
      return escapeDataProvider;
    case "bliss":
      return blissDataProvider;
    default:
      return skyDataProvider;
  }
}
