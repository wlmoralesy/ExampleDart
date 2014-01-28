import 'dart:html';
import 'package:crypto/crypto.dart';

void main() {
  querySelector("#sample_text_id")
    ..text = "Click me!"
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var sha=new SHA256();
  sha.add(text.codeUnits);
  var temporal=sha.close();
  querySelector("#sample_text_id").text=CryptoUtils.bytesToBase64(temporal);

}
