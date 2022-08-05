import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_tech_assesment/model/ship_names.dart';

import '../../model/ship_model.dart';
import '../../providers/data_provider.dart';

class DetailsPage extends ConsumerWidget {
  final String title;
  const DetailsPage({required this.title, Key? key}) : super(key: key);

  FutureProvider<ShipModel> _getShipProvider(String title) {
    print(title);
    switch (title) {
      case "Sky":
        return skyDataProvider;
      case "Escape":
        return escapeDataProvider;
      case "Bliss":
        return blissDataProvider;
      default:
        return skyDataProvider;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(_getShipProvider(title));
    return Scaffold(
      appBar: AppBar(
        title: Text(title.capitalize()),
      ),
      body: _data.when(
        data: (data) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(data.name),
                Text(data.capacity),
                Text(data.crew),
                Text(data.inauguralDate)
              ],
            ),
          );
        },
        error: (err, s) {
          debugPrint(s.toString());
          return Text(err.toString());
        },
        loading: () => const CircularProgressIndicator(),
      ), //end _data.when
    );
  }
}
