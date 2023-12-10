import 'package:flutter/material.dart';
import 'package:paysmart/data/userInfo.dart';
import 'package:paysmart/utils/constants.dart';
import 'package:paysmart/widgets/general_accountInfo_tile.dart';

class HomeProfileTab extends StatelessWidget {
  const HomeProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: background,
          automaticallyImplyLeading: false,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: fontHeading,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: defaultSpacing),
              child: Icon(
                Icons.settings,
                color: fontSubHeading,
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing,
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(defaultRadius)),
                        child: Image.asset(
                          "assets/images/avatar.PNG",
                          width: 75,
                        ),
                      ),
                      const SizedBox(
                        height: defaultSpacing / 3,
                      ),
                      Text(
                        "${userdata.firstname} ${userdata.lastname}",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: fontHeading),
                      ),
                      Text(userdata.emailAddress,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: fontSubHeading)),
                      const SizedBox(
                        height: defaultSpacing / 2,
                      ),
                      const Chip(
                          backgroundColor: primaryLight,
                          label: Text("Edit Profile")),
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: defaultSpacing),
                      child: Text(
                        "General",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: fontHeading),
                      ),
                    ),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const GeneralAccountInfo(
                        title: "My wallet",
                        subtitle: "Magane Your wallet",
                        imageUrl: "assets/icons/wallet.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultSpacing),
                      child: Text(
                        "Account",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: fontHeading),
                      ),
                    ),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfo(
                        heading: "My account",
                        imageUrl: "assets/icons/user-1.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfo(
                        heading: "Notifications",
                        imageUrl: "assets/icons/bell.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfo(
                        heading: "Privacy",
                        imageUrl: "assets/icons/lock-on.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfo(
                        heading: "About",
                        imageUrl: "assets/icons/info-circle.png"),
                  ]),
            ),
          ],
        )));
  }
}
