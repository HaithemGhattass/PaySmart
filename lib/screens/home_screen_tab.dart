import 'package:flutter/material.dart';
import 'package:paysmart/data/userInfo.dart';
import 'package:paysmart/utils/constants.dart';
import 'package:paysmart/widgets/total_expense_card.dart';
import 'package:paysmart/widgets/transaction_item_tile.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              title: Text("Hey  ${userdata.firstname}! "),
              leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(defaultRadius)),
                child: Image.asset(
                  "assets/images/avatar.PNG",
                ),
              ),
              trailing: Image.asset("assets/icons/bell.png"),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    ("1200 Dt"),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: fontSizeHeading, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text(
                    ("Total Expenses"),
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: fontSubHeading),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TotalExpensesButtons(
                //    imagePath: "assets/images/steg.png", buttonText: "facture"),
                Expanded(
                  child: TotalExpenseCard(
                    expenseData: ExpenseData(
                        "bills", "1000 dt", Icons.arrow_downward_rounded),
                    color: accent,
                  ),
                ),
                SizedBox(width: defaultSpacing),

                Expanded(
                  child: TotalExpenseCard(
                    expenseData: ExpenseData(
                        "subscription", "170 dt", Icons.arrow_downward_rounded),
                    color: primaryDark,
                  ),
                ),
                SizedBox(width: defaultSpacing),
                Expanded(
                  child: TotalExpenseCard(
                    expenseData: ExpenseData(
                        "School", "30 dt", Icons.arrow_upward_rounded),
                    color: secondaryLight,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Text(
              "Recent Transactions",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            ...userdata.transaction.map(
                (transaction) => TransactionItemTile(transaction: transaction)),
            const SizedBox(
              height: defaultSpacing,
            ),
            // const Text(
            //   "Today",
            //   style: TextStyle(color: fontSubHeading),
            // ),
            // ...userdata.transaction.map(
            //     (transaction) => TransactionItemTile(transaction: transaction)),
          ],
        ),
      ),
    );
  }
}
