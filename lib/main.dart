import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE1BEE7), // Light purple background
        appBar: AppBar(
          title: Text("KuroKami's Task 0"),
          backgroundColor: Color(0xFFCE93D8),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // GitHub Button
              ElevatedButton(
                onPressed: () async {
                  final Uri githubUrl = Uri.parse("https://github.com/EkeBlack/HNG_flutter.git");
                  if (!await launchUrl(githubUrl, mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch $githubUrl';
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Button color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text("Open GitHub"),
              ),

              SizedBox(height: 20), // Space between buttons

              // Website Button (Replace URL with any website)
              ElevatedButton(
                onPressed: () async {
                  final Uri websiteUrl = Uri.parse("https://hng.tech/hire/flutter-developers");
                  if (!await launchUrl(websiteUrl, mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch $websiteUrl';
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Different button color
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Text("Visit HNG Flutter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
