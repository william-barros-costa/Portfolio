import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white12),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download,
                  size: 40,
                ),
              ),
            ),
            Spacer(),
            Text(
              "William Costa",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Master's degree in Computer Science and Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            socialMediaButtons(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

Container socialMediaButtons() {
    return Container(
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          splashRadius: 1,
                          onPressed: () {
                            launchUrl(Uri(path: "https://www.linkedin.com/in/william-barros-costa/"));
                          },
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          splashRadius: 1,
                          onPressed: () {
                            launchUrl(Uri(path: "https://github.com/alTaWBC"));
                          },
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          splashRadius: 1,
                          onPressed: () {
                          launchUrl(Uri(path: "https://github.com/william-barros-costa"));
                          },
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  );
  }

}
