import 'package:book_my_seat/book_my_seat.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI &&
        colI == (other as SeatNumber).colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}

class BusTicketDetails extends StatefulWidget {
  const BusTicketDetails({super.key});

  @override
  State<BusTicketDetails> createState() => _BusTicketDetailsState();
}

class _BusTicketDetailsState extends State<BusTicketDetails> {
  Set<SeatNumber> selectedSeats = Set();
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
              width: 380,
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
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg_disabled_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Disabled')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg_sold_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Sold')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg_unselected_bus_seat.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Available')
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg_selected_bus_seats.svg',
                      width: 15,
                      height: 15,
                    ),
                    const Text('Selected')
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 400,
            decoration: BoxDecoration(border: Border.all(width: 2.0)),
            child: SeatLayoutWidget(
                onSeatStateChanged: (rowI, colI, seatState) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: seatState == SeatState.selected
                          ? Text("Selected Seat[$rowI][$colI]")
                          : Text("De-selected Seat[$rowI][$colI]"),
                    ),
                  );
                  if (seatState == SeatState.selected) {
                    selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
                  } else {
                    selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
                  }
                },
                stateModel: const SeatLayoutStateModel(
                    pathDisabledSeat: 'assets/images/svg_disabled_bus_seat.svg',
                    pathSelectedSeat:
                        'assets/images/svg_selected_bus_seats.svg',
                    pathSoldSeat: 'assets/images/svg_sold_bus_seat.svg',
                    pathUnSelectedSeat:
                        'assets/images/svg_unselected_bus_seat.svg',
                    rows: 10,
                    cols: 4,
                    seatSvgSize: 14,
                    currentSeatsState: [
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                      [
                        SeatState.sold,
                        SeatState.sold,
                        SeatState.empty,
                        SeatState.unselected,
                        SeatState.unselected,
                      ],
                    ])),
          )
        ],
      ),
    );
  }
}
