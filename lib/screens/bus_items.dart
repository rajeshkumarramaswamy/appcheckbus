import 'package:busbooking/screens/bus_image.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BusItems extends StatefulWidget {
  const BusItems({super.key});

  @override
  State<BusItems> createState() => _BusItemsState();
}

class _BusItemsState extends State<BusItems> {
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Hero(
            createRectTween: (Rect? begin, Rect? end) {
              return MaterialRectCenterArcTween(begin: begin, end: end);
            },
            tag: 'BusImage',
            child: Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/xeat_logo.png"))),
            ),
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return ListTile(
        leading: Hero(
            tag: "BusImage",
            createRectTween: (Rect? begin, Rect? end) {
              return MaterialRectCenterArcTween(begin: begin, end: end);
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/xeat_logo.png"))),
            )),
        title: Text("Travel to Jaffna"),
        onTap: () => _gotoDetailsPage(context));
  }
}
