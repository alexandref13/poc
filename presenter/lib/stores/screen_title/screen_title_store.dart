import '../../dependencies/dependencies.dart';

class ScreenTitleStore extends NotifierStore<Exception, String> {
  ScreenTitleStore() : super('');

  Future<void> changeTitle(String title) async {
    update(title);
  }
}
