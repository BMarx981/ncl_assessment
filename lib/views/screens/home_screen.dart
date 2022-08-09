import 'package:flutter/material.dart';
import 'package:ncl_tech_assesment/views/widgets/ship_buttons.dart';

import '../../model/ship_image_urls.dart';
import '../../model/ship_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Norwegian Cruise Lines"),
        elevation: 13.0,
      ),
      body: ListView(
        children: [
          ShipButtons(ShipName.sky, skyImageUrl),
          ShipButtons(ShipName.escape, escapeImageUrl),
          ShipButtons(ShipName.bliss, blissImageUrl),
        ],
      ),
    );
  }
}
