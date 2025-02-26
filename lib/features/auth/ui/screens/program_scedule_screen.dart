import 'package:bjp/app/assets_path.dart';
import 'package:flutter/material.dart';

class ProgramSceduleScreen extends StatefulWidget {
  @override
  State<ProgramSceduleScreen> createState() => _ProgramSceduleScreenState();
}

class _ProgramSceduleScreenState extends State<ProgramSceduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('অনুষ্ঠানের সময়'),
        backgroundColor: Color(0xFF00B1B0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Image and Header Section
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      assetsPath.picture_of_man), // Ensure this image exists
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "পরিবর্তনে যোগ দিন!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Row of Buttons (দিন, মাস, বছর, etc.)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryButton('দিন'),
                  SizedBox(width: 10),
                  _buildCategoryButton('বছর'),
                  SizedBox(width: 10),
                  _buildCategoryButton('মিনিট'),
                  SizedBox(width: 10),
                  _buildCategoryButton('সেকেন্ড'),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Event List Section
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Set the number of events
                itemBuilder: (context, index) {
                  return EventItem(
                    date: '২১ ফেব্রুয়ারী, ২০২৫',
                    description: 'আন্তর্জাতিক মাতৃভাষা দিবস',
                    location: 'বনানী, ঢাকা',
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new event action
        },
        backgroundColor: Color(0xFF00B1B0),
        child: Icon(Icons.add),
      ),
    );
  }

  // Helper method to create the buttons
  Widget _buildCategoryButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Color(0xFF00B1B0), // Add border
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  final String date;
  final String description;
  final String location;

  const EventItem({
    required this.date,
    required this.description,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4, // Add shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          date,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(description, style: TextStyle(fontSize: 14)),
            SizedBox(height: 4),
            Text(location, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // Action for "প্রবেশ করুন"
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00B1B0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
          ),
          child: Text("প্রবেশ করুন"),
        ),
      ),
    );
  }
}
