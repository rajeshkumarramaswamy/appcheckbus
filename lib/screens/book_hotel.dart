import 'package:busbooking/screens/bus_list.dart';
import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_field/date_field.dart';

class BookHotel extends StatefulWidget {
  const BookHotel({super.key});

  @override
  State<BookHotel> createState() => _BookHotelState();
}

class _BookHotelState extends State<BookHotel> {
  TextEditingController dateController = TextEditingController();
  DateTime? startDate;
  DateTime? endDate;
  @override
  void initState() {
    dateController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
              color: ProjectTheme.appRed,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/hotel.png"))),
                  ),
                  const SizedBox(width: 20.0),
                  const Text(
                    "Book my hotel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      decoration: const InputDecoration(
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'City',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusColor: Colors.white,
                          labelText: 'Hotel',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Positioned(
                    top: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200.0,
                          child: DateTimeFormField(
                            decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintStyle: TextStyle(color: Colors.white),
                                errorStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(
                                  Icons.event_note,
                                  color: Colors.white,
                                ),
                                labelText: 'Start date',
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            mode: DateTimeFieldPickerMode.dateAndTime,
                            autovalidateMode: AutovalidateMode.always,
                            validator: (e) => (e?.day ?? 0) == 1
                                ? 'Please not the first day'
                                : null,
                            onDateSelected: (DateTime value) {
                              print(value);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 200.0,
                          child: DateTimeFormField(
                            decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintStyle: TextStyle(color: Colors.white),
                                errorStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(
                                  Icons.event_note,
                                  color: Colors.white,
                                ),
                                labelText: 'End date',
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            mode: DateTimeFieldPickerMode.dateAndTime,
                            autovalidateMode: AutovalidateMode.always,
                            validator: (e) => (e?.day ?? 0) == 1
                                ? 'Please not the first day'
                                : null,
                            onDateSelected: (DateTime value) {
                              print(value);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // MaterialButton(
                  //     color: Colors.deepOrangeAccent,
                  //     onPressed: () {
                  //       showCustomDateRangePicker(
                  //         context,
                  //         dismissible: true,
                  //         minimumDate:
                  //             DateTime.now().subtract(const Duration(days: 30)),
                  //         maximumDate:
                  //             DateTime.now().add(const Duration(days: 30)),
                  //         endDate: endDate,
                  //         startDate: startDate,
                  //         backgroundColor: Colors.white,
                  //         primaryColor: Colors.black,
                  //         onApplyClick: (start, end) {
                  //           setState(() {
                  //             endDate = end;
                  //             startDate = start;
                  //           });
                  //         },
                  //         onCancelClick: () {
                  //           setState(() {
                  //             endDate = null;
                  //             startDate = null;
                  //           });
                  //         },
                  //       );
                  //     },
                  //     child: new Text("Pick date range")),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 10.0,
                      ),
                    ]),
                    child: IconButton(
                      iconSize: 80,
                      icon: const Icon(FluentSystemIcons
                          .ic_fluent_arrow_right_circle_filled),
                      color: ProjectTheme.appRed,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (BuildContext context) => Scaffold(
                            body: BusList(),
                          ),
                        ));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
