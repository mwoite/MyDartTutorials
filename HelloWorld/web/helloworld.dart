import 'dart:html';

ButtonElement button;
String inputName;
String inputVorname;

void main() {
  
  querySelector('#inputName').onInput.listen(refreshStringName);
  querySelector('#inputVorname').onInput.listen(refreshStringVorname);
    
  
  button = querySelector('#buttonSpeichern');
  button.onClick.listen(buttonClickHandler);
  
}


// write the ne Input Name on Screen
void setName(String newName){
  querySelector('#ausgabeName').text = newName;
}

void refreshStringName(Event e){
  inputName = (e.target as InputElement).value;
}
void refreshStringVorname(Event e){
  inputVorname = (e.target as InputElement).value;
}

void buttonClickHandler(Event e){
  
  var sCon = inputName + ' ' + inputVorname;
  
  setName(sCon);
}

