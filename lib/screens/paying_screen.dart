import 'package:flutter/material.dart';
import 'package:paysmart/data/userInfo.dart';
import 'package:paysmart/utils/constants.dart';
import 'package:paysmart/widgets/total_expenses_buttons.dart';
import 'package:paysmart/widgets/unpayed_item_tile.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PayingScreen extends StatelessWidget {
  const PayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultSpacing),
      child: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            Text("Pay Subscription",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(
              height: defaultSpacing,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TotalExpensesButtons(
                    imagePath: "assets/images/met.png", buttonText: ""),
                TotalExpensesButtons(
                    imagePath: "assets/images/tunisieAutoroutes1 copy.png",
                    buttonText: ""),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Unpaied invoices",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w700)),
                IconButton(
                    onPressed: () {
                      Alert(
                          context: context,
                          title: "Add invoice",
                          style: AlertStyle(
                            animationType: AnimationType.fromTop,
                            isCloseButton: false,
                            isOverlayTapDismiss: false,
                            descStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            animationDuration:
                                const Duration(milliseconds: 400),
                            backgroundColor: Colors.white,
                            alertBorder: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(defaultRadius),
                              side: const BorderSide(
                                color: fontLight,
                              ),
                            ),
                            titleStyle: const TextStyle(
                              color: accent,
                            ),
                          ),
                          content: Column(
                            children: <Widget>[
                              DropdownButtonFormField<String>(
                                value: 'Steg',
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Steg',
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/steg.png',
                                            width: 20,
                                            height:
                                                20), // Replace 'image1.png' with your image asset
                                        const SizedBox(width: 10),
                                        Text('Steg'),
                                      ],
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Sonede',
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/sonede.png',
                                            width: 20,
                                            height:
                                                20), // Replace 'image2.png' with your image asset
                                        const SizedBox(width: 10),
                                        Text('Sonede'),
                                      ],
                                    ),
                                  ),
                                ],
                                onChanged: (String? value) {},
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.qr_code_2),
                                  labelText: 'Enter reference',
                                ),
                              ),
                            ],
                          ),
                          buttons: [
                            DialogButton(
                              color: primaryDark,
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Add To my Bills",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                            DialogButton(
                              color: accent,
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )
                          ]).show();
                    },
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: primaryDark,
                    ))
              ],
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            ...userdata.unpaiedtransactions.map((unpaiedtransactions) =>
                UnpayedItemTile(transaction: unpaiedtransactions)),
          ],
        ),
      ),
    );
  }
}
