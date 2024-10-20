import 'dart:io';

class Model {

Model(){}


  
   String create() {
    
    File file = File("text.txt");
    String word='';
      if (!file.existsSync()) {
      file.create();
      print("Файл создан ...");
    } else {
      print("Файл открыт ...");
      word=file.readAsStringSync();
    }

  return word;
  }

void save(String word) 
{
  File file = File("text.txt");
  var sink=file.openWrite(mode: FileMode.append);
  
  sink.write(word);
  sink.close();
  print("Данные записаны ---->${word}");

}

String load() 
{
  File file = File("text.txt");
  String word=file.readAsStringSync();
  print("Данные прочитаны ...");
  return word;
}

}
