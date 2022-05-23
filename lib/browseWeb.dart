import 'package:flutter/material.dart';
import 'package:mymaikapp/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowseWeb extends StatelessWidget {
  final String webUrl;
  const BrowseWeb({Key? key, required this.webUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff960001),
        title: const Text('MyMaik App'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text('About'),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text('Exit'),
              ),
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: (webUrl),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  BrowseWeb(webUrl: 'https://www.e-maik.my/v2/')),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
        break;
    }
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          ListTile(
            title: Text('Zakat Fitrah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BrowseWeb(webUrl: 'https://zakat.e-maik.my/fitrah/')),
              );
            },
          ),
          ListTile(
            title: Text('Fidyah'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BrowseWeb(webUrl: 'https://zakat.e-maik.my/fidyah/')),
              );
            },
          ),
          ListTile(
            title: Text('Zakat Harta Individu'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BrowseWeb(
                        webUrl: 'https://zakat.e-maik.my/v8/index.php')),
              );
            },
          ),
          ListTile(
            title: Text('Zakat Harta Korporat B2C'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BrowseWeb(
                        webUrl: 'https://zakat.e-maik.my/v8/indexv8_2c.php')),
              );
            },
          ),
          ListTile(
            title: Text('Zakat Harta Korporat B2B'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BrowseWeb(
                        webUrl: 'https://zakat.e-maik.my/v8/indexv8_2b.php')),
              );
            },
          ),
          ListTile(
            title: Text('Waqaf Tunai'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BrowseWeb(webUrl: 'https://waqaf.e-maik.my/emandate/')),
              );
            },
          ),
        ],
      );
}
