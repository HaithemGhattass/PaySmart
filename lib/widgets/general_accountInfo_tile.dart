// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paysmart/utils/constants.dart';

class GeneralAccountInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const GeneralAccountInfo(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultSpacing, vertical: defaultSpacing / 2),
        child: Image.asset(imageUrl),
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: fontHeading),
      ),
      subtitle: Text(subtitle,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: fontSubHeading)),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: fontSubHeading,
      ),
    );
  }
}

class ProfileAccountInfo extends StatelessWidget {
  final String heading;
  final String imageUrl;
  const ProfileAccountInfo(
      {super.key, required this.heading, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: defaultSpacing * 2),
        child: Image.asset(imageUrl),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
        child: Text(
          heading,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: fontHeading),
        ),
      ),
      const Expanded(
          flex: 1,
          child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: defaultSpacing),
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: fontSubHeading,
                ),
              )))
    ]);
  }
}
