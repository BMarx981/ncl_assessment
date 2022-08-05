import '../model/ship_model.dart';
import '../services/bliss_api_service.dart';
import '../services/escape_api_service.dart';
import '../services/sky_api_service.dart';
import 'package:ncl_tech_assesment/services/sky_api_service.dart';
import 'package:riverpod/riverpod.dart';

final skyDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(skyApiProvider).getSky();
});

final escapeDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(escapeApiProvider).getEscape();
});

final blissDataProvider = FutureProvider<ShipModel>((ref) async {
  return ref.read(blissApiProvider).getBliss();
});
