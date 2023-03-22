import 'package:busbooking/utils/project_theme.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: ProjectTheme.appRed,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
        // Positioned(
        //   top: 120,
        //   child: Column(
        //     children: [
        //       ListTile(
        //         leading: Icon(FluentSystemIcons.ic_fluent_history_regular),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
