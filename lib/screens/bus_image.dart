import 'dart:ffi';

import 'package:flutter/material.dart';

class BusImage extends StatelessWidget {
  final VoidCallback onzoom;
  const BusImage({required this.onzoom});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
          tag: "BusImage",
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/xeat_logo.png"))),
          )),
      title: Text("Ticket to Jaffna"),
      onTap: () => onzoom,
    );
  }
}
