import 'package:bjp/features/auth/ui/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';

class MemberList extends StatefulWidget {
  const MemberList({super.key});

  static const String name = '/member_list';

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Text(
        'Index 0: Dashboard',
      ),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Member List',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Search By Mobile'),
              ),
            ],
          )
        ],
      ),
    ),
    Text(
      'Index 2: Program Schedule',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: AppLogoWidget(
                  height: 5,
                  width: 5,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_4),
              title: Text('Members'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Program Schedule'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          //title: Text('practice one'),
          backgroundColor: Colors.tealAccent,
          actions: [
            IconButton(
              onPressed: () {
                //snackbar(context, 'add icon');
              },
              icon: Icon(Icons.logout),
            ),
          ]),
    );
  }
}
