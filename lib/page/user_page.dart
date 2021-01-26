import 'package:flutter/material.dart';
import 'package:test_json/model/user.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Account Details"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 40),
              Text(
                'Account Active: ${user.isActive}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                'Account Number: ${user.accountNumber}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                'Balance: \R${user.balance.toString()}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Text(
                'Overdraft: \R${user.overdraft.toString()}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 64),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                color: Colors.teal,
                child: Text(
                  'Deposit',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 1),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                color: Colors.teal,
                child: Text(
                  'Withdraw',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
}
