import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_tech_assesment/model/ship_names.dart';

import '../../providers/data_provider.dart';
import '../widgets/detail_cards.dart';

class DetailsPage extends ConsumerWidget {
  final ShipName ship;
  const DetailsPage({required this.ship, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _state = ref.watch(getShipProvider(ship));
    return Scaffold(
      appBar: AppBar(
        title: Text(ship.name.capitalize()),
      ),
      body: _state.when(
        data: (data) {
          // When the provider has data this view is shown
          return Column(
            children: [
              Image.network(data.imageUrl),
              Expanded(
                child: ListView(
                  children: [
                    DetailCard(text: data.name, title: "Ship Name"),
                    DetailCard(text: data.capacity, title: "Capacity"),
                    DetailCard(text: data.crew, title: "Crew size"),
                    DetailCard(
                        text: data.inauguralDate, title: "Inaugural Date"),
                  ],
                ),
              ),
            ],
          );
        },
        error: (err, s) {
          // If the data has an error
          debugPrint(s.toString());
          return Text(err.toString());
        },
        //While loading the state is a CPI
        loading: () => const Center(child: CircularProgressIndicator()),
      ), //end _state.when
    );
  }
}
