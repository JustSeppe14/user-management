import 'package:flutter/material.dart';
import 'pages/user_list.dart';

void main() {
  runApp(const UserManagementApp());
}

class UserManagementApp extends StatelessWidget {
  const UserManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const UserListPage(),
    );
  }
}
