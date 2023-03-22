import 'package:busbooking/screens/bus_items.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BusList extends StatefulWidget {
  const BusList({super.key});

  @override
  State<BusList> createState() => _BusListState();
}

class _BusListState extends State<BusList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: 100,
          width: 500,
          child: Container(
            width: 150,
            height: 150,
            color: ProjectTheme.appRed,
          ),
        ),
        Positioned(
          top: 60,
          left: 30,
          width: 355,
          height: 80,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
            width: 150,
            child: Row(
              children: [
                IconButton(
                  iconSize: 40,
                  icon: const Icon(
                      FluentSystemIcons.ic_fluent_chevron_left_filled),
                  color: ProjectTheme.appGrey,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "From",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Colombo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  iconSize: 35,
                  icon: const Icon(
                      FluentSystemIcons.ic_fluent_arrow_right_filled),
                  color: ProjectTheme.appGrey,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "To",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Jaffna",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: 40,
          width: 340,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "35 busses",
                    style: TextStyle(
                        color: ProjectTheme.appGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  child: Text(
                    "Mar 23, 2023",
                    style: TextStyle(
                        color: ProjectTheme.appGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 180,
          bottom: 0,
          left: 0,
          right: 0,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              BusItems(
                busName: "Svr",
                busType: "Non AC",
                busCost: "Rs 2345",
              ),
              BusItems(
                busName: "Autoit",
                busType: "Non AC",
                busCost: "Rs 1232",
              ),
              BusItems(
                busName: "Bose",
                busType: "Non AC",
                busCost: "Rs 2123",
              ),
              BusItems(
                busName: "Srilankan",
                busType: "Non AC",
                busCost: "Rs 2333",
              ),
              BusItems(
                busName: "Bharath",
                busType: "Non AC",
                busCost: "Rs 1234",
              ),
              BusItems(
                busName: "Orange",
                busType: "AC",
                busCost: "Rs 3245",
              ),
              BusItems(
                busName: "Green",
                busType: "Non AC",
                busCost: "Rs 2499",
              ),
              BusItems(
                busName: "Krishna",
                busType: "Non AC",
                busCost: "Rs 1999",
              ),
              BusItems(
                busName: "Amman",
                busType: "AC",
                busCost: "Rs 3222",
              ),
              BusItems(
                busName: "Srivari",
                busType: "Non AC",
                busCost: "Rs 2499",
              ),
              BusItems(
                busName: "Venkateswara",
                busType: "Non AC",
                busCost: "Rs 2499",
              ),
              BusItems(
                busName: "Jon",
                busType: "Non AC",
                busCost: "Rs 1299",
              ),
              BusItems(
                busName: "Stewart",
                busType: "Non AC",
                busCost: "Rs 1300",
              ),
              BusItems(
                busName: "Anthony",
                busType: "Non Ac",
                busCost: "Rs 2345",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
