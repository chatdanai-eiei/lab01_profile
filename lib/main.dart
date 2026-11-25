import 'package:flutter/material.dart';

// จุดเริ่มต้นของโปรแกรม
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

// สร้าง StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ตัวแปรเก็บจำนวน Like
  int _likes = 0;

  // ฟังก์ชันเพิ่มจำนวน Like
  void _like() {
    setState(() {
      _likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // แถบด้านบนแสดงรหัสนักศึกษา
      appBar: AppBar(
        title: const Text('Lab L1 · 67100263'),
      ),

      // จัดองค์ประกอบให้อยู่กลางหน้าจอ
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // ไอคอนรูปบุคคล
            const Icon(Icons.person, size: 96),

            // ชื่อจริงและรหัสนักศึกษา
            const Text('Chatdanai Nasen - 67100263'),

            // แสดงจำนวน Like
            Text('Likes: $_likes'),

            // ปุ่มเพิ่มจำนวน Like
            FilledButton(
              onPressed: _like,
              child: const Text('Like'),
            ),

          ],
        ),
      ),
    );
  }
}