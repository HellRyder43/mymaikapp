import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:mymaikapp/browseWeb.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyMaikApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Are You Sure to Exit?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text(
                    'NO',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: const Text(
                    'YES',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
        body: ColorfulSafeArea(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * .20,
                decoration: const BoxDecoration(
                  color: Color(0xff960001),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20.0, bottom: 35.0, left: 40.0, right: 40.0),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                          image: ExactAssetImage('assets/mainMenu.png'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl: 'https://zakat.e-maik.my/fitrah/',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/fitrah.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl: 'https://zakat.e-maik.my/fidyah/',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/fidyah.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl:
                                    'https://zakat.e-maik.my/v8/indexv8_2b.php',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/b2b.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl:
                                    'https://zakat.e-maik.my/v8/indexv8_2c.php',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/b2c.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl: 'https://zakat.e-maik.my/v8/index.php',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/hartaIndividu.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrowseWeb(
                                webUrl: 'https://waqaf.e-maik.my/emandate/',
                              ),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            width: 154.00,
                            height: 160.00,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10.0), // Image border
                              child: SizedBox.fromSize(
                                size:
                                    const Size.fromRadius(20.0), // Image radius
                                child: Image.asset('assets/wakafTunai.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
