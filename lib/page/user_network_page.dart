import 'package:flutter/material.dart';
import 'package:test_json/api/users_api.dart';
import 'package:test_json/model/user.dart';
import 'package:test_json/page/user_page.dart';

class UserNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<User>>(
          future: UsersApi.getUsers(),
          builder: (context, snapshot) {
            final users = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  return buildUsers(users);
                }
            }
          },
        ),
      );

  Widget buildUsers(List<User> users) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => UserPage(user: user),
            )),
            child: Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: FittedBox(
                      child: Text('\R${user.balance.toString()}'),
                    ),
                  ),
                ),
                title: Text(
                  user.name,
                ),
              ),
            ),
          );
        },
      );
}
