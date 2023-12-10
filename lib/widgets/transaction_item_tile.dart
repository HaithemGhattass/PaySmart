import 'package:flutter/material.dart';
import 'package:paysmart/data/userInfo.dart';
import 'package:paysmart/utils/constants.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;
  const TransactionItemTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultSpacing / 2),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                blurRadius: 10,
                spreadRadius: 4)
          ],
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius))),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(defaultSpacing / 2),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultRadius / 2))),
            child: transaction.categoryType.name == "tunisieAutoroutes"
                ? Image.asset("assets/images/tunisieAutoroutes1 copy.png")
                : Image.asset(
                    "assets/images/${transaction.categoryType.name}.png")),
        title: Text(
          transaction.categoryType.name,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: fontSizeTitle, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          transaction.transactionType.name,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: fontSubHeading,
              fontSize: fontSizeBody,
              fontWeight: FontWeight.w800),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              transaction.amount,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.red,
                    fontSize: fontSizeTitle,
                  ),
            ),
            Text(
              transaction.date,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: fontSubHeading,
                    fontSize: fontSizeBody,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
