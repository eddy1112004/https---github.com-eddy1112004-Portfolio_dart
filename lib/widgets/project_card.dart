import 'package:flutter/material.dart';
import 'package:portfolio/utils/project_utils.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project img
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              project.image,
              height: 124,
              width: 244,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 124,
                  width: 244,
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.broken_image,
                    color: Colors.grey[600],
                  ),
                );
              },
            ),
          ),
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "GitHub Link:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                Tooltip(
                  message: "Open GitHub",
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.githubLink]);
                    },
                    child: Image.asset(
                      "assets/github.png",
                      width: 19,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
