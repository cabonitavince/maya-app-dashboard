class TransactionModel {
  String transactionType;
  String transactionName;
  String transactionDate;
  String amount;
  bool isAdded;

  TransactionModel(
      {this.transactionType,
      this.transactionName,
      this.transactionDate,
      this.amount, this.isAdded});
}