import 'model.dart';
import 'view.dart';

class Presenter {
  View ui = View();
  Model model = Model();

  Presenter() {
    String word=model.create();
    if (word!='') 
    {
      ui.Writeview(word);
    }
  }

  void presenter_save(String word) {
 
  if (word!='') 
  {
  model.save(word);
  }
  }

  void presenter_load() {
    String word =model.load();
    if (word.length>1) 
    {
      ui.Writeview(word);
    }
    else 
    {
      print("Файл пустой !");
    }
  }

  
}
