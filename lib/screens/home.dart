import 'package:flutter/material.dart';
import 'package:home_saathi/widgets/custom_card.dart';
import 'screens/legal_literacy_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeRouteHomePage();
  }
}

class SafeRouteHomePage extends StatelessWidget {
  const SafeRouteHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBEFE6),
      body: SafeArea(
        child: Stack(
          children: [
            // 🗺️ Dark Map Background
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: Stack(
                children: [
                  // 🧭 Blue location marker
                  const Center(
                    child: Icon(
                      Icons.navigation,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                  ),
                  // 🔍 Search icon
                  const Positioned(
                    top: 16,
                    right: 16,
                    child: Icon(Icons.search, color: Colors.amber, size: 28),
                  ),
                ],
              ),
            ),

            // 🟣 Bottom Purple Card Section
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xFF5C2E84),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomCard(
                      icon: Icons.route,
                      title: 'Safe Route Finder',
                      subtitle: 'Navigate the safest',
                    ),
                    const SizedBox(height: 12),
                    const CustomCard(
                      icon: Icons.report_problem,
                      title: 'Report Incident',
                      subtitle: 'Let others know',
                    ),
                    const SizedBox(height: 12),
                    CustomCard(
                      icon: Icons.article_outlined,
                      title: 'Legal Literacy',
                      subtitle: 'Know more about your rights',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LegalLiteracyPage()),
                        );
                      },
                    ),

                    const SizedBox(height: 24),
                    // 🧭 Bottom Navigation Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.home, color: Colors.amber),
                        Icon(Icons.shield, color: Colors.amber),
                        Icon(Icons.search, color: Colors.amber),
                        Icon(Icons.notifications, color: Colors.amber),
                        Icon(Icons.person, color: Colors.amber),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

