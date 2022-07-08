import '../../../../dependencies/dependencies.dart';
import '../../todo.dart';

class GetTodoDataDatasource implements IGetTodoDataDatasource {
  final ISharedPreferencesDriver preferences;

  GetTodoDataDatasource({required this.preferences});

  @override
  Future<Either<Exception, List<String>>> call() async {
    return preferences.getStringListByKey(key: 'data').then((value) {
      return value.fold((l) => Left(l), (r) {
        return Right(r);
      });
    });
  }
}
