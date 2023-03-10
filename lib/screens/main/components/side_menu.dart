import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Portugal",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Lisbon",
                    ),
                    AreaInfoText(
                      title: "Date of Birth",
                      text: "19/09/1997",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
