import 'package:flutter/material.dart';
import 'package:hive_example/hive/hive_cache_manager.dart';
import 'package:hive_example/view/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveCacheManager.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: const HomeView());
  }
}
