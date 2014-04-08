import 'dart:html';

ButtonElement button;
String inputName;

void main() {
  querySelector('#inputName').onInput.listen(refreshStringName);
  
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

void buttonClickHandler(Event e){
  setName(inputName);
}

