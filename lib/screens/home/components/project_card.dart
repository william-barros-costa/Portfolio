import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

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
                child: SingleChildScrollView(
                    child: Expanded(
                  child: ProjectCardWidget(
                    project: project,
                    spacer: SizedBox(
                      height: defaultPadding,
                    ),
                    maxlines: 300,
                  ),
                )),
              ),
            ),
          );
        },
        child: ProjectCardWidget(
          project: project,
        ),
      ),
    );
  }
}

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    Key? key,
    required this.project,
    this.spacer = const Spacer(),
    this.maxlines = 4,
  }) : super(key: key);

  final Project project;
  final Widget spacer;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        height: MediaQuery.of(context).size.height * 0.7,
        color: secondaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              project.description!,
              maxLines: maxlines,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
            if (maxlines == 4)
              TextButton(
                onPressed: () {},
                child: Text(
                  "Read More >>",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            if (maxlines > 4)
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Skills: ${project.tasks}",
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Used Technologies: ${project.technology}",
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
