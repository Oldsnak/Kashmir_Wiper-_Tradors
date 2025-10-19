import 'dart:ui';

import 'package:flutter/material.dart';

import '../Pages/add_category.dart';
import '../Pages/add_item.dart';
import '../Pages/remove_items.dart';

class Dr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        // color: Color(0xFF9677CE), // Set drawer background color
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                // color: Color(0xFF8359CA), // Set header background color
                  color: Colors.grey.shade900
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 90,
                    child: Text(
                      'KWT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inovation',
                      ),
                    ),
                  ),
                  Text("(Kashmir Wipers Tradors)", style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'Inovation')),
                ],
              ),
            ),
            // Drawer Buttons
            ListTile(
              leading: Icon(Icons.update, color: Colors.grey.shade900),
              title: Text(
                'Update Info',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => register_customer()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics, color: Colors.grey.shade900),
              title: Text(
                'Analytics',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Action for Analytics
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart, color: Colors.grey.shade900),
              title: Text(
                'Add New Item',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => add_item()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.category, color: Colors.grey.shade900),
              title: Text(
                'Add Category',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddCategoryPage()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.delete, color: Colors.grey.shade900),
              title: Text(
                'Remove Item',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => remove_items()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey.shade900),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Action for Settings
              },
            ),
          ],
        ),
      ),
    );
  }
}