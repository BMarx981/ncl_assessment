import '../../model/ship_model.dart';
import '../../services/bliss_api_service.dart';
import '../../services/escape_api_service.dart';
import '../../services/sky_api_service.dart';
import 'package:ncl_tech_assesment/services/sky_api_service.dart';
import 'package:riverpod/riverpod.dart';

import '../model/ship_names.dart';

final skyDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(skyApiProvider).getService();
});

final escapeDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(escapeApiProvider).getService();
});

final blissDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(blissApiProvider).getService();
});

FutureProvider<ShipModel> getShipProvider(ShipName ship) {
  switch (ship) {
    case ShipName.sky:
      return skyDataProvider;
    case ShipName.escape:
      return escapeDataProvider;
    case ShipName.bliss:
      return blissDataProvider;
  }
}
