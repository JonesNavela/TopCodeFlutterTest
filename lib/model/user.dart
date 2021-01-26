import 'package:meta/meta.dart';

class User {
  final String name;
  final int balance;
  final String userId;
  final String accountNumber;
  final bool isActive;
  final int overdraft;

  const User(
      {@required this.name,
      @required this.balance,
      @required this.userId,
      @required this.accountNumber,
      @required this.isActive,
      @required this.overdraft});

  static User fromJson(json) => User(
      name: json['name'],
      balance: json['balance'],
      userId: json['userId'],
      accountNumber: json['accountNumber'],
      overdraft: json['overdraft'],
      isActive: json['active']);
}
