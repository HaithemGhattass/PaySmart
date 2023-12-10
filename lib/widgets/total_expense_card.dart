import 'package:flutter/material.dart';
import 'package:paysmart/utils/constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;
  const ExpenseData(this.label, this.amount, this.icon);
}

class TotalExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;
  final Color color;
  const TotalExpenseCard(
      {Key? key, required this.expenseData, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                offset: Offset.zero,
                spreadRadius: 3,
                blurRadius: 12)
          ],
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(defaultRadius))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expenseData.label,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultSpacing / 3),
                  child: Text(
                    expenseData.amount,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
