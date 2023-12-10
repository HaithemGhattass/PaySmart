enum TransactionType { invoice, subscription }

enum ItemCategoryType { steg, sonede, tunisieAutoroutes }

class UserInfo {
  final String firstname;
  final String lastname;
  final String phoneNumber;
  final String emailAddress;
  final List<Transaction> transaction;
  final List<Transaction> unpaiedtransactions;

  const UserInfo({
    required this.firstname,
    required this.lastname,
    required this.phoneNumber,
    required this.emailAddress,
    required this.transaction,
    required this.unpaiedtransactions,
  });
}

const List<Transaction> transactions = [
  Transaction(
      ItemCategoryType.sonede, TransactionType.invoice, "100 Dt", "Dec, 9"),
  Transaction(
      ItemCategoryType.steg, TransactionType.invoice, "250 Dt", "Oct, 24"),
  Transaction(ItemCategoryType.tunisieAutoroutes, TransactionType.subscription,
      "30 Dt", "Jul, 24"),
  Transaction(
      ItemCategoryType.sonede, TransactionType.invoice, "30 Dt", "Jul, 24"),
  Transaction(
      ItemCategoryType.steg, TransactionType.invoice, "30 Dt", "Jul, 24"),
];
const List<Transaction> unpaiedtransactions = [
  Transaction(
      ItemCategoryType.sonede, TransactionType.invoice, "40 Dt", "Dec, 9"),
  Transaction(
      ItemCategoryType.sonede, TransactionType.invoice, "30 Dt", "Jul, 24"),
  Transaction(
      ItemCategoryType.steg, TransactionType.invoice, "280 Dt", "Jul, 24"),
];

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String amount;
  final String date;
  const Transaction(
      this.categoryType, this.transactionType, this.amount, this.date);
}

const userdata = UserInfo(
    firstname: 'Haithem',
    lastname: 'Ghattas',
    emailAddress: 'haithemghattas@gmail.com',
    phoneNumber: '52693684',
    transaction: transactions,
    unpaiedtransactions: unpaiedtransactions);
