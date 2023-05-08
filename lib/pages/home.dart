import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    Provider.of<TaskController>(context, listen: false).tasks;
  }

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<TaskController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de chamados'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(Icons.add)
          )
        ],
      ),
      body: provider.tasks.isEmpty ? const Center(
        child: Text('Lista vazia'),
      )
      :
      ListView.builder(
        itemCount: provider.tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              provider.tasks[index].number.toString()
            ),
            subtitle: Text(
              provider.tasks[index].name
            ),
          );
        },
      ),
    );
  }
}