import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:share_plus/share_plus.dart';
import 'package:vritant/Settings/licenses.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static const routeName = '/settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  final String subject = 'Hey, check out Vritant, an amazing application that is built upon a comprehensive analysis of children\'s educational needs and the challenges they face while studying. It helps children learn rhymes faster in an easy and lucrative way!- https://github.com/bhattabhi013/Vritant';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SettingsList(
          sections: [
            SettingsSection(
              title: const Text('Common'),
              tiles: <SettingsTile>[

                SettingsTile.navigation(
                  leading: const Icon(Icons.ios_share),
                  title: const Text('Share Vritant'),
                  value: const Text('Help to spread a word about the application!'),
                  onPressed: (t) {
                    Share.share(subject, subject: 'Check out this amazing application!');},
                ),
                SettingsTile.navigation(
                  leading: const Icon(Icons.document_scanner_outlined),
                  title: const Text('Licenses'),
                  value: const Text('See application\'s licenses'),
                  onPressed: (t) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LicensesScreen()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
