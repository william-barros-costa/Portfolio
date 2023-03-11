import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

// import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        // HighLightsInfo(),
        SizedBox(height: defaultPadding),
        MyProjects(),
        Responsive(
          mobile: Recommendations(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: Recommendations(crossAxisCount: 2),
          tablet: Recommendations(childAspectRatio: 1.1),
          desktop: Recommendations(),
        )
      ],
    );
  }
}
