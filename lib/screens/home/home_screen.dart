import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:newets/screens/add_note/add_note_screen.dart';
import 'package:newets/screens/home/widgets/item_note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookStore'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ItemNote(),
          ItemNote(),
          ItemNote(),
          ItemNote(),
          ItemNote(),
          ItemNote(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const AddNoteScreen()));
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}