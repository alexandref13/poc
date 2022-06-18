import '../../../dependencies/dependencies.dart';

class NavigationBarStore extends NotifierStore<Exception, int> {
  NavigationBarStore() : super(0);

  Future<void> changeIndex(int index) async {
    update(index);
  }
}
