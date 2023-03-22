import 'package:busbooking/screens/bus_image.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BusItems extends StatefulWidget {
  final String busName;
  final String busType;
  final String busCost;
  const BusItems(
      {required this.busName, required this.busType, required this.busCost});

  @override
  State<BusItems> createState() => _BusItemsState();
}

class _BusItemsState extends State<BusItems> {
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: ProjectTheme.appRed,
          leading: IconButton(
            iconSize: 35,
            icon: const Icon(FluentSystemIcons.ic_fluent_chevron_left_filled),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Hero(
            createRectTween: (Rect? begin, Rect? end) {
              return MaterialRectCenterArcTween(begin: begin, end: end);
            },
            tag: 'hero-bus-${widget.busName}',
            child: Container(
              height: 400.0,
              width: 400.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/bus_logo.png"))),
            ),
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Hero(
            tag: 'hero-bus-${widget.busName}',
            createRectTween: (Rect? begin, Rect? end) {
              return MaterialRectCenterArcTween(begin: begin, end: end);
            },
            child: GestureDetector(
              onTap: () => _gotoDetailsPage(context),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/bus_logo.png"))),
              ),
            )),
        title: Text(
          widget.busName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:
            Text(widget.busType, style: TextStyle(fontWeight: FontWeight.bold)),
        trailing:
            Text(widget.busCost, style: TextStyle(fontWeight: FontWeight.bold)),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<void>(
            builder: (BuildContext context) => const Scaffold(
              body: BusTicketDetails(),
            ),
          ));
        });
  }
}
