import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_tech_assesment/ui/widgets/ship_buttons.dart';

import '../../model/ship_names.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Norwegian Cruise Lines"),
        elevation: 3.0,
      ),
      body: ListView(
        children: const [
          ShipButtons(ShipName.sky,
              "https://www.ncl.com/sites/default/files/NCL_Sky_Main_Image_700x475.jpg"),
          ShipButtons(ShipName.escape,
              "https://www.ncl.com/sites/default/files/700x475_MainImage_Escape_110315.jpg"),
          ShipButtons(ShipName.bliss,
              "https://www.ncl.com/sites/default/files/HERO_Bliss_072618.jpg"),
        ],
      ),
    );
  }
}
