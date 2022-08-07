import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_tech_assesment/model/ship_names.dart';

import '../../providers/data_provider.dart';
import '../widgets/detail_cards.dart';

class DetailsPage extends ConsumerWidget {
  final String title;
  const DetailsPage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(getShipProvider(title));
    return Scaffold(
      appBar: AppBar(
        title: Text(title.capitalize()),
      ),
      body: _data.when(
        data: (data) {
          return Center(
            child: Stack(
              children: [
                ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(data.imageUrl),
                    DetailCard(text: data.name, title: "Ship Name"),
                    DetailCard(text: data.capacity, title: "Capacty"),
                    DetailCard(text: data.crew, title: "Crew size"),
                    DetailCard(
                        text: data.inauguralDate, title: "Inaugural Date"),
                  ],
                ),
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
