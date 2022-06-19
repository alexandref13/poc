import 'package:flutter/material.dart';

import '../../../dependencies/dependencies.dart';
import '../store/store.dart';

class ConfigsScreen extends StatefulWidget {
  const ConfigsScreen({Key? key}) : super(key: key);

  @override
  State<ConfigsScreen> createState() => _ConfigsScreenState();
}

class _ConfigsScreenState extends State<ConfigsScreen> {
  @override
  void initState() {
    super.initState();

    store.permissionsStore.getPermissions();
    store.networkStore.getNetworkType();
    store.dataConsumptionStore.getDataConsumption();
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  final store = Modular.get<ConfigsStore>();

  final String _screen = 'configs';
  final String _backScreen = '/welcome';

  removePermissions() {
    if (store.permissionsStore.state.isGranted) {
      store.permissionsStore
          .setPermissions(PermissionsEntity(isGranted: false));
      Modular.to.navigate(_backScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OneColumnScreen(
      children: [
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][7]['title']),
          leading: const Icon(Icons.signal_wifi_4_bar_outlined),
          trailing: TripleBuilder(
            store: store.networkStore,
            builder: (_, triple) {
              return Text(store.networkStore.state.type);
            },
          ),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][2]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][2]['subtitle']),
          leading: const Icon(Icons.bar_chart_outlined),
          trailing: TripleBuilder(
            store: store.dataConsumptionStore,
            builder: (_, triple) {
              return Text(store.dataConsumptionStore.bytesPipe());
            },
          ),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][3]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][3]['subtitle']),
          leading: const Icon(Icons.signal_cellular_off_outlined),
          trailing: const Text('1GB'),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][4]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][4]['subtitle']),
          leading: const Icon(Icons.perm_data_setting_outlined),
          trailing: const Text('30'),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][1]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][1]['subtitle']),
          leading: const Icon(Icons.calendar_month_outlined),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][5]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][5]['subtitle']),
          leading: const Icon(Icons.perm_device_info_rounded),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][0]['title']),
          leading: const Icon(Icons.palette_outlined),
          trailing: PrimaryButton(
            child: Text(L10N(context).text(_screen)['list'][0]['disabled']),
            onPressed: () {},
          ),
        ),
        DefaultListItem(
          title: Text(L10N(context).text(_screen)['list'][6]['title']),
          subtitle: Text(L10N(context).text(_screen)['list'][6]['subtitle']),
          leading: const Icon(Icons.lock_reset_outlined),
          trailing: RedButton(
            child: Text(L10N(context).text(_screen)['list'][6]['button']),
            onPressed: () => removePermissions(),
          ),
        ),
        Heights.h32.value,
      ],
    );
  }
}
