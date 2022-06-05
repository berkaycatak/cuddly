import 'package:flutter/material.dart';
import 'package:kontrollu_saglik/constants/Theme.dart';
import 'package:kontrollu_saglik/widgets/drawer.dart';
import 'package:kontrollu_saglik/widgets/navbar.dart';
import 'package:kontrollu_saglik/widgets/table-cell.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchValueOne;
  bool switchValueTwo;

  void initState() {
    setState(() {
      switchValueOne = true;
      switchValueTwo = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          title: "Ayarlar",
        ),
        drawer: NowDrawer(currentPage: "Settings"),
        body: Container(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 25, right: 25),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Önemli Ayarlar",
                        style: TextStyle(
                            color: UIColors.text,
                            fontWeight: FontWeight.bold,
                            fontSize: 23)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Giriş için Parmak İzi/FaceID kullan",
                        style: TextStyle(fontSize: 19, color: UIColors.text)),
                    Switch.adaptive(
                      value: switchValueOne,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueOne = newValue),
                      activeColor: UIColors.primary,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Otomatik Kilit",
                        style: TextStyle(fontSize: 19, color: UIColors.text)),
                    Switch.adaptive(
                      value: switchValueTwo,
                      onChanged: (bool newValue) =>
                          setState(() => switchValueTwo = newValue),
                      activeColor: UIColors.primary,
                    )
                  ],
                ),
                TableCellSettings(
                    title: "Bildirim Ayarları",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                SizedBox(height: 40.0),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Ödeme Ayarları",
                        style: TextStyle(
                            color: UIColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 23)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TableCellSettings(title: "Ödeme Ayarlarını Yapılandır"),
                SizedBox(
                  height: 12,
                ),
                TableCellSettings(title: "Kart Bilgisi"),
                SizedBox(
                  height: 36.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text("Gizlilik",
                        style: TextStyle(
                            color: UIColors.text,
                            fontWeight: FontWeight.w600,
                            fontSize: 23)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("", style: TextStyle(color: UIColors.time)),
                  ),
                ),
                TableCellSettings(
                    title: "Kullanıcı Sözleşmesi",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                SizedBox(
                  height: 12,
                ),
                TableCellSettings(
                    title: "Gizlilik Sözleşmesi",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
                SizedBox(
                  height: 12,
                ),
                TableCellSettings(
                    title: "Hakkımızda",
                    onTap: () {
                      Navigator.pushNamed(context, '/pro');
                    }),
              ],
            ),
          ),
        )));
  }
}
