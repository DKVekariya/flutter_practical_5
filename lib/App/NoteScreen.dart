import 'package:flutter/material.dart';
import 'package:flutter_practical_5/Style/Text/AppTextStyle.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  NoteScreenState createState() => NoteScreenState();
}

class NoteScreenState extends State<NoteScreen> {
  final TextEditingController _noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _noteController.text = 'This is your note...';
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  void _resetNote() {
    setState(() {
      _noteController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Note', style: AppTextStyle.header2(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green.shade400,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextField(
                controller: _noteController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                maxLines: 999999,
                style: AppTextStyle.noteContentFont(fontSize: 22),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetNote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400,
              ),
              child: const Text('Reset Note', style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
          ],
        ),
      )
    );
  }
}