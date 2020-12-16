import 'package:CalcNote3/BaseModel.dart';

class Note {
  int id;
  String title;
  String content;
  String color;

  String toStrinng() {
    return 'id=$id, tile = $title, content=$content, color=$color';
  }
}

class NotesModel extends BaseModel {
  String color;

  void setColor(String inColor) {
    color = inColor;
    notifyListeners();
  }
}

NotesModel notesModel = NotesModel();
