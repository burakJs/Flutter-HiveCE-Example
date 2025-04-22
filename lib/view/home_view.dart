import 'package:flutter/material.dart';
import 'package:hive_example/hive/model/user_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserModel? _userModel = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await UserModel(
                name: 'John243',
                email: 'john@example.com',
                password: '123456',
                token: '123456',
              ).save();
            },
            child: const Text('Save'),
          ),
          ElevatedButton(
            onPressed: () async {
              _userModel = await UserModel().get();
              print(_userModel);
              setState(() {});
            },
            child: const Text('Get'),
          ),
          Text(_userModel?.name ?? ''),
          Text(_userModel?.email ?? ''),
          Text(_userModel?.password ?? ''),
          Text(_userModel?.token ?? ''),
        ],
      ),
    );
  }
}
