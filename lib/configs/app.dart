import 'package:flutter/material.dart';
import 'package:list_tasks/providers/task_controller.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskController(),
      child: const MaterialApp(
        
      ),
    );
  }
}