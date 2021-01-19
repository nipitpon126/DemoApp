import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:DemoApp/drawer_menu.dart';
import 'package:http/http.dart' as Http;
import '../Login/components/background.dart';
import 'package:DemoApp/profile.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var jsonData;
  List<ThailandNewsData> dataList = [];

  Future<String> _GetNewsAPI() async {
    var response = await Http.get(
        'https://l.facebook.com/l.php?u=http%3A%2F%2Fnewsapi.org%2Fv2%2Ftop-headlines%3Fcountry%3Dth%26apiKey%3D28e04e2b99d24aa5bac2d2e2435ea720%26fbclid%3DIwAR0otaezx7z1n8Pyu7pfh-PeHrqfqHw3YdUYoN4TCqO5AwPSZM1mxQOs9e8&h=AT1bhdIXV2hp2680wz6pxN1JsqFp4RbKHWtHbl4743zBW2dWN7vw1a2WZhdVF8nxmeoK2pqLUegPtBVogKWJixCE1AUwTsxqpm05jtPFXZb-OXc8Z_mwv1MNLKf55WmA9_Js6A');

    jsonData = json.decode(utf8.decode(response.bodyBytes));
    for (var data in jsonData['articles']) {
      ThailandNewsData news = ThailandNewsData(
          data['title'], data['description'], data['urlToImage']);
      dataList.add(news);
    }

    return 'OK';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thailand News'),
      ),
      drawer: DrawerMenu(),
      body: Background(
        child: FutureBuilder(
          future: _GetNewsAPI(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Image.network('${dataList[index].urlToImage}'),
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          margin: EdgeInsets.all(15),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Align(
                            child: Text(
                              '${dataList[index].title}',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                          child: Align(
                            child: Text('${dataList[index].description}',
                                style: TextStyle(color: Colors.grey[600])),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  );
                },
              );
            } else {
              return Container(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class ThailandNewsData {
  String title;
  String description;
  String urlToImage;
  ThailandNewsData(this.title, this.description, this.urlToImage);
}
