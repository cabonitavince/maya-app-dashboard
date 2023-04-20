import 'package:flutter/material.dart';
import 'package:maya/models/transaction_model.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<TransactionModel> transactions = [
      TransactionModel(
        transactionType: "Purchased on",
        transactionName: "APPLE.COM/BILL",
        transactionDate: "29 Jun 2022",
        amount: "-₱49.00",
        isAdded: false,
      ),
      TransactionModel(
        transactionType: "Received money from",
        transactionName: "Maya",
        transactionDate: "21 Jun 2022",
        amount: "₱1.00",
        isAdded: true,
      ),
      TransactionModel(
        transactionType: "Purchased on",
        transactionName: "PayMaya Shop",
        transactionDate: "05 Jun 2022",
        amount: "-₱10.00",
        isAdded: false
      ),
      TransactionModel(
        transactionType: "Refunded money from",
        transactionName: "PayMaya ShopCG3 Pioneer St PH",
        transactionDate: "05 Jun 2022",
        amount: "₱10.00",
        isAdded: true,
      ),
      TransactionModel(
        transactionType: "Purchased on",
        transactionName: "PayMaya Shop",
        transactionDate: "05 Jun 2022",
        amount: "₱10.00",
        isAdded: true,
      ),
    ];
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text("Transactions", style: Theme.of(context).textTheme.titleLarge.copyWith(
                fontWeight: FontWeight.w500
              ),),
              Expanded(child: Container()),
              Text("See All", style: Theme.of(context).textTheme.labelMedium.copyWith(
                color: Colors.green, fontWeight: FontWeight.bold
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Column(
            children: transactions.map((transaction) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(transaction.transactionType, style: Theme.of(context).textTheme.labelMedium.copyWith(
                          color: Colors.grey
                        ),),
                        Expanded(child: Container()),
                        Text(transaction.transactionDate, style: Theme.of(context).textTheme.labelMedium.copyWith(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(transaction.transactionName, style: Theme.of(context).textTheme.labelLarge.copyWith(
                          fontWeight: FontWeight.bold
                        ),),
                        Expanded(child: Container()),
                        Text(transaction.amount, style: Theme.of(context).textTheme.labelLarge.copyWith(
                            fontWeight: FontWeight.bold, color: transaction.isAdded ? Colors.green : Colors.black
                        ),),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }


}
