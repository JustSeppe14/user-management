import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UserListPageState();
}

class _UserListPageState extends State {
  List<String> userList = ["George Bluth", "Janet Weaver", "Emma Wong"];
  int count = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: _userListItems(),
      ),
    );
  }

  ListView _userListItems() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: Text(userList[position]),
        );
      },
    );
  }
}
