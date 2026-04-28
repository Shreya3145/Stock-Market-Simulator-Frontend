import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockmarket_simulator_1/lessons/lessons_list_page.dart';
import 'package:stockmarket_simulator_1/trade/trade_page.dart';
import 'package:stockmarket_simulator_1/utils/user_preference.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() {
    return _DashboardPage();
  }
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/icon.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain, // keeps full image visible
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Statistics: ',
              textAlign: TextAlign.start,
              style: GoogleFonts.openSans(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lessons: ${user.lessonsCompleted} / 5',
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 10,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Balance : ₹${user.balance}',
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LessonsListPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(175, 42),
                ),
                child: const Text('LESSONS'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TradePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(175, 42),
                ),
                child: const Text('TRADE'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
