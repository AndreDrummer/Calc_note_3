import "dart:io";
import "package:flutter/material.dart";
import "package:path_provider/path_provider.dart";
import "appointments/appointments.dart";
import "contacts/contacts.dart";
import "notes/notes.dart";
import "tasks/tasks.dart";
import "utils.dart" as utils;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  startMeUp() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(CalcNote3());
  }

  startMeUp();
}

class CalcNote3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.green,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Calc Note'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.date_range),
                  text: "Appointments",
                ),
                Tab(
                  icon: Icon(Icons.contacts),
                  text: "Contacts",
                ),
                Tab(
                  icon: Icon(Icons.note),
                  text: "Notes",
                ),
                Tab(
                  icon: Icon(Icons.assignment_turned_in),
                  text: "Tasks",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Appointments(),
              Contacts(),
              Notes(),
              Tasks(),
            ],
          ),
        ),
      ),
    );
  }
}
