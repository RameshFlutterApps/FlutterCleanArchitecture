import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  // Send the value to main page
  final Function(bool) onStateChanged;

  const PageProfile({required this.onStateChanged});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  bool isThemeChanged = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile' ,style: Theme.of(context).textTheme.headlineLarge),

        actions: [
          Switch(
            activeColor: Colors.white,
              value: isThemeChanged,
              onChanged: (value){
            setState(() {
              isThemeChanged = value;
              widget.onStateChanged(isThemeChanged);
            });
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Center(
                child: Column(
                  children: [
                    // Profile Picture with Change Button
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                              'assets/profile_picture.png'), // Replace with your image
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.camera_alt),
                            onPressed: () {
                              // Action to change profile picture
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // User Name
                    Text(
                      'Ramesh Rajamanickam',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 8),

                    // Email
                    Text(
                      'Rameshflutterapps@gmail.com',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 8),

                    // Phone
                    Text(
                      '+91 9876543210',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              // Bio Section
              Text(
                'Flutter',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8),
              Text(
                'A passionate Flutter developer. Always eager to learn and improve.',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 32),

              // Settings Section
              Text(
                'Settings',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Divider(),

              // Theme Settings

              ListTile(
                title: Text(
                  'Theme',

                ),
                subtitle: Text('Light'),
                leading: Icon(Icons.brightness_6),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Action to change theme
                  print('Change Theme');
                },
              ),

              // Notifications Settings

              ListTile(
                title: Text(
                  'Notifications',
                ),
                subtitle: Text('Enabled'),
                leading: Icon(Icons.notifications),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Action to change notification settings
                  print('Change Notifications');
                },
              ),

              // Privacy Settings
              ListTile(
                title: Text('Privacy'),
                subtitle: Text('Public'),
                leading: Icon(Icons.lock),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Action to change privacy settings
                  print('Change Privacy');
                },
              ),
              SizedBox(height: 32),

              // Logout Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Action for logging out
                    print('Logged out');
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    textStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
