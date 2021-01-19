import 'package:flutter/material.dart';
import 'package:DemoApp/Screens/Welcome/welcome_screen.dart';
import 'package:DemoApp/constants.dart';
import 'package:DemoApp/drawer_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  MyProfile({Key key}) : super(key: key);

  var sizeBox = 14.0;

  TextStyle bulletStyle = GoogleFonts.prompt(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  TextStyle contentBulletStyle = GoogleFonts.prompt(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle contentStyle = GoogleFonts.kanit(
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: contentStyle,
        ),
        automaticallyImplyLeading: true,
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        "นิพิฐพนธ์ แสงอรุณ",
                        style: bulletStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      "assets/images/0001.jpg",
                      height: 280.0,
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Align(
                      child: new Text(
                        'สาขาวิชาวิทยาการคอมพิวเตอร์\nคณะศิลปศาสตร์และวิทยาศาสตร์',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ประวัติการศึกษา",
                      style: contentBulletStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Align(
                      child: new Text(
                        'จบชั้นประถมศึกษาชั้นป.1 - 6 โรงเรียนอนุบาลศรีสะเกษ',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1.8, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Align(
                      child: new Text(
                        'จบชั้นมัธยมศึกษาปีที่ 1 - 6 โรงเรียนศรีสะเกษวิทยาลัย',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1.8, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "สำหรับติดต่อ",
                      style: contentBulletStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Align(
                      child: new Text(
                        '094-514-4012',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Align(
                      child: new Text(
                        'https://www.facebook.com/tle.nipitpon1/',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.web),
                    title: Align(
                      child: new Text(
                        'www.comsci-sskru.com',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Align(
                      child: new Text(
                        'nipitpon.sang61@sskru.ac.th',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ประวัติการทำงาน",
                      style: contentBulletStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Align(
                      child: new Text(
                        'เป็นนักศึกษา\n\nคณะศิลปศาสตร์และวิทยาศาสตร์,\n\nมหาวิทยาลัยราชภัฏศรีสะเกษ',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1.8, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ความสามารถพิเศษ",
                      style: contentBulletStyle,
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'Founder of B407Record',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'รับอัดเพลง ทำปกเพลง Mix&Master',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'ถ่ายMusic Video ตัดต่อMusic Video',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
