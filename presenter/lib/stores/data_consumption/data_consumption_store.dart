import '../../../dependencies/dependencies.dart';

const kBaseUnit = 1024;

class DataConsumptionStore
    extends NotifierStore<Exception, DataConsumptionEntity> with Disposable {
  DataConsumptionStore({
    required this.getDataConsumptionUsecase,
    required this.setDataConsumptionUsecase,
  }) : super(DataConsumptionEntity());

  final IGetDataConsumptionUsecase getDataConsumptionUsecase;
  final ISetDataConsumptionUsecase setDataConsumptionUsecase;

  @override
  void dispose() {
    destroy();
  }

  Future<void> getDataConsumption() async {
    setLoading(true);
    await getDataConsumptionUsecase().then((value) {
      value.fold(
        (l) => setError(l),
        (r) => update(r),
      );
      setLoading(false);
    });
  }

  Future<void> setDataConsumption(DataConsumptionEntity dataConsumption) async {
    setLoading(true);
    await setDataConsumptionUsecase(dataConsumption: dataConsumption)
        .then((value) {
      value.fold(
        (l) => setError(l),
        (r) => update(dataConsumption),
      );
      setLoading(false);
    });
  }

  int calculateTransferredData(double value) {
    int speedTime = 1;
    double ret = (value * 125000);
    ret = speedTime * ret;
    return int.parse(ret.toStringAsFixed(0));
  }

  String bytesPipe() {
    double value = state.consumption;

    if (value.isNaN || value.isInfinite) return '0 bytes';

    var units = [
      DataUnitsEnum.bytes,
      DataUnitsEnum.kb,
      DataUnitsEnum.mb,
      DataUnitsEnum.gb,
      DataUnitsEnum.tb,
      DataUnitsEnum.pb,
    ];

    var key = 0;

    while (value >= kBaseUnit) {
      value /= kBaseUnit;
      key++;
    }

    return '${value.toStringAsFixed(2)} ${units[key].unit}';
  }
}
