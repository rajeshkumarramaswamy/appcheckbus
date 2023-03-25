import 'package:busbooking/screens/bus_list.dart';
import 'package:busbooking/theme/pallet.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookTicket extends StatefulWidget {
  const BookTicket({super.key});

  @override
  State<BookTicket> createState() => _BookTicketState();
}

class _BookTicketState extends State<BookTicket> {
  TextEditingController dateController = TextEditingController();
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
              gradient: Pallet.appGradient,
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
                            image: AssetImage("assets/images/bus_2.png"))),
                  ),
                  const SizedBox(width: 20.0),
                  const Text(
                    "Book my ticket",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Pallet.appTextBlack),
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
                          labelText: 'From',
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
                          labelText: 'To',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: dateController,
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          icon: Icon(Icons.calendar_today, color: Colors.white),
                          labelText: "Enter Date",
                          focusColor: Colors.white,
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Pallet
                                        .appRed, // header background color
                                    onPrimary:
                                        Colors.white, // header text color
                                    onSurface: Colors.black, // body text color
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary:
                                          Pallet.appRed, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateController.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
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
                      color: Pallet.appRed,
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
