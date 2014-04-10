import 'dart:html';

ButtonElement button;
String inputName;
var anschrift = new Anschrift();
void main() {
  querySelector('#inputName').onInput.listen(refreshStringName);
  
  button = querySelector('#buttonSpeichern')
  ..text = 'Click to Confirm';
  
  button.onClick.listen(buttonClickHandler);
  
 
  anschrift.hnr = 2;
  anschrift.ort = 'Testort';
  anschrift.str = 'Straße';
  
}


// write the ne Input Name on Screen
void setName(String newName){
  querySelector('#ausgabeName').text = newName;
}
void setAnschrift( String newAnschrift){
  querySelector('#ausgabeAnschrift').text = newAnschrift;
}

void refreshStringName(Event e){
  inputName = (e.target as InputElement).value;
  
}

void buttonClickHandler(Event e){
  setName(inputName);
  setAnschrift(anschrift.getCompleteAnschrift());
}

class Anschrift {
  var ort;
  var plz;
  var str;
  var hnr;
  
  getCompleteAnschrift(){
    
    return ort; //+ ' ' + plz + ', ' + str + ' ' + hnr;
  }
}
