import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50], // light background
      appBar: AppBar(
        backgroundColor: Colors.orange[100], // light orange
        elevation: 0,
        centerTitle: true,
        title:
            Text('Edit Profile', style: TextStyle(color: Colors.orange[900])),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.orange[900]),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.orange[900]),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Picture and Info Section
            Container(
              color: Colors.orange[100],
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('images/app.png'), // Placeholder image
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Harshit Yadav',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Icon(Icons.email, size: 16, color: Colors.grey),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      'harshityadav@gmail.com',
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ]),
                  const SizedBox(height: 4),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Icon(Icons.phone, size: 16, color: Colors.grey),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      '+91 9134098901',
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ]),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: const Text('Edit Profile'),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: const Text('Total Credits: 1'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Recent Visits Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Visits',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios, size: 16, color: Colors.grey),
                      Icon(Icons.arrow_forward_ios,
                          size: 16, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildRecentVisitCard('images/app.png'),
                  buildRecentVisitCard('images/app.png'),
                  buildRecentVisitCard('images/app.png'),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child:
                  Text('View All', style: TextStyle(color: Colors.orange[900])),
            ),
            const SizedBox(height: 20),
            // Bottom Buttons Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBottomIconButton(Icons.message, 'Message'),
                  buildBottomIconButton(Icons.add_location, 'Add Places'),
                  buildBottomIconButton(Icons.help_outline, 'Help'),
                  buildBottomIconButton(Icons.logout, 'Logout'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Footer Section
            const Text(
              'From',
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              'Anuation Labs',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Beta Version',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildRecentVisitCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath, // Placeholder image paths
          width: 120,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildBottomIconButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.orange[100],
          child: Icon(icon, color: Colors.orange[900]),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.orange[900])),
      ],
    );
  }
}
