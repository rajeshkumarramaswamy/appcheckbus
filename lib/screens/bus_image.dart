import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BusTicketDetails extends StatefulWidget {
  const BusTicketDetails({super.key});

  @override
  State<BusTicketDetails> createState() => _BusTicketDetailsState();
}

class _BusTicketDetailsState extends State<BusTicketDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: ProjectTheme.appRed,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              Positioned(
                top: 150,
                left: 300,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/bus_logo.png"))),
                ),
              ),
              Positioned(
                top: 50,
                left: 15,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(20),
                      primary: ProjectTheme.appRed),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                      FluentSystemIcons.ic_fluent_chevron_left_filled),
                ),
              ),
              Positioned(
                  top: 170,
                  left: 30,
                  child: Text(
                    "SVR tours",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: ProjectTheme.appYellow),
                  )),
              Positioned(
                  top: 210,
                  left: 30,
                  child: Text(
                    "NON AC",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: ProjectTheme.appYellow),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: Container(
              height: 75,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: ProjectTheme.appGrey),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Departure",
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "Colombo",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "8.00 pm",
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                      size: 50.0,
                      color: Colors.grey,
                      FluentSystemIcons.ic_fluent_arrow_right_circle_regular),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Departure",
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "Jaffna",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "8.00 pm",
                          style: TextStyle(
                            color: ProjectTheme.appGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
