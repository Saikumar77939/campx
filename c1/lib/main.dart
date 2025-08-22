import 'package:flutter/material.dart';

void main() {
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.menu, color: Colors.black),
            const Spacer(),
            const Icon(Icons.notifications_none, color: Colors.black),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Section
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi  Sai Kumar,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Good Evening, Wednesday, 20 August"),
                      Row(
                        children: [
                          Icon(Icons.cloud, size: 18),
                          SizedBox(width: 4),
                          Text("24.5 °C"),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: const Text("View Schedule"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Essentials Title
            const Text("ESSENTIALS",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 10)),

            const SizedBox(height: 20),

            // Essentials Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _buildCard(
                    title: "Attendance",
                    subtitle: "78.99 %",
                    color: Colors.blue.shade100,
                    icon: Icons.calendar_today,
                  ),
                  _buildCard(
                    title: "Fee Payments",
                    subtitle: "already Paid",
                    color: Colors.grey.shade100,
                    icon: Icons.account_balance_wallet,
                  ),
                  _buildCard(
                    title: "Campus Events",
                    subtitle: "",
                    color: Colors.yellow.shade100,
                    icon: Icons.event,
                  ),
                  _buildCard(
                    title: "Campus Clubs",
                    subtitle: "",
                    color: Colors.red.shade100,
                    icon: Icons.groups,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Tools Section
            const Text("TOOLS",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 8)),
            const SizedBox(height: 8),
            _buildCard(
              title: "Feedbacks",
              subtitle: "",
              color: Colors.pink.shade100,
              icon: Icons.star,
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: Colors.black87),
          const SizedBox(height: 10),
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 10)),
          if (subtitle.isNotEmpty)
            Text(subtitle,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
