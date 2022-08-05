import 'package:flutter/material.dart';
import 'package:ncl_tech_assesment/ui/screens/details_screen.dart';

import '../../model/ship_names.dart';

class ShipButtons extends StatelessWidget {
  final ShipName shipTitle;
  final String url;
  const ShipButtons(this.shipTitle, this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                title: shipTitle.name,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.lightBlueAccent,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3.0,
                blurRadius: 4,
                offset: Offset(7, 7),
              ),
              BoxShadow(
                color: Colors.blue,
                blurRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(url),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color(0x7780D1EA),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        shipTitle.name.capitalize(),
                        style: const TextStyle(
                          fontSize: 40,
                          // color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
