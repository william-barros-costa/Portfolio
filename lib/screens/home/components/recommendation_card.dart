import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';

import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: secondaryColor,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView(children: [
                  recommendationCardWidget(context,
                      width: MediaQuery.of(context).size.width * 0.8,
                      maxLines: 200,
                      spacer: false
                      )
                ]),
              ),
            ),
          );
        },
        child: recommendationCardWidget(context, open: false),
      ),
    );
  }

  Container recommendationCardWidget(BuildContext context,
      {double width = 400, int? maxLines = 4, bool open = true, bool spacer = true}) {
    Widget delimeter = spacer ? Spacer() : SizedBox(height: defaultPadding);
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendation.source!),
          delimeter,
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          if (open == false)
            delimeter,
          if (open == false)
            Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
        ],
      ),
    );
  }
}
