import 'dart:convert';

import 'package:http/http.dart';
import 'package:ncl_tech_assesment/model/services/base_service.dart';
import 'package:ncl_tech_assesment/model/ship_model.dart';
import 'package:riverpod/riverpod.dart';

class EscapeServiceAPI implements BaseService {
  @override
  String endpoint = "https://www.ncl.com/cms-service/cruise-ships/ESCAPE";

  Future<ShipModel> getEscape() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final Map<String, dynamic> result = jsonDecode(response.body);
      return ShipModel.fromJson(result);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  @override
  Future<ShipModel> getService() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final Map<String, dynamic> result = jsonDecode(response.body);
      return ShipModel.fromJson(result);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final escapeApiProvider =
    Provider<EscapeServiceAPI>((ref) => EscapeServiceAPI());
