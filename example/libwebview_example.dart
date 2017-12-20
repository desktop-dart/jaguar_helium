import 'dart:async';
import 'package:jaguar_helium/jaguar_helium.dart';

Window window;

main() async {
  app.init();

  window = new Window();
  window.show();
  window.setSize(400, 400);
  window.url = "https://google.com";

  new Timer.periodic(new Duration(microseconds: 100), (_) {
    app.processEvents();
  });
}
