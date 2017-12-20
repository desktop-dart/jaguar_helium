import 'dart-ext:helium';

final Application app = new Application._();

class Application {
  Application._() {

  }

  void init() native 'App::Init';

  void processEvents() native 'App::ProcessEvents';
}

class Window {
  dynamic _handle;

  Window() {
    _handle = _createWindow();
  }

  void show() => visible = true;

  void hide() => visible = false;

  set visible(bool visible) => _setVisibility(_handle, visible);

  set url(String url) => _setUrl(_handle, url);

  void setSize(int x, int y) => _resize(_handle, x, y);

  void _createWindow() native 'Window::Create';

  void _setVisibility(int window, bool visible) native 'Window::SetVisibility';

  void _setUrl(int window, String url) native 'Window::SetUrl';

  void _resize(int window, int x, int y) native 'Window::Resize';
}