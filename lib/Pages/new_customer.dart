import 'package:flutter/material.dart';

class new_customer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Add New Customer',
          style: TextStyle(
            fontFamily: 'Inknut Antiqua',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(60, 1, 60, 0),
        child: ListView(
          children: [
            SizedBox(height: 100,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("Customer Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24,),)),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: TextEditingController(),
              textCapitalization: TextCapitalization.words,
              // keyboardType: TextInputType.number,
              // textInputAction: TextInputAction.done,
              // obscureText: false,
              // autocorrect: true,
              // enableSuggestions: true,
              maxLength: 30,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 2
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2
                    )
                ),
                labelText: 'Name',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                hintText: 'Customer Name',
                prefixIcon: Icon(Icons.person),
              ),
              style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
              cursorColor: Colors.grey,
              cursorWidth: 2,
            ),

            TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.number,
              maxLength: 30,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 2
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2
                    )
                ),
                labelText: 'Number',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.call),
              ),
              style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
              cursorColor: Colors.grey,
              cursorWidth: 2,
            ),

            TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.number,
              maxLength: 30,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 2
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2
                    )
                ),
                labelText: 'CNIC',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                hintText: 'ID Card Number',
                prefixIcon: Icon(Icons.credit_card),
              ),
              style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
              cursorColor: Colors.grey,
              cursorWidth: 2,
            ),
            TextField(
              controller: TextEditingController(),
              // keyboardType: TextInputType.text,
              // maxLength: 30,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 2
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2
                    )
                ),
                labelText: 'Address',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                hintText: 'Customer Address',
                prefixIcon: Icon(Icons.location_on),
              ),
              style: TextStyle(fontSize: 16, color: Colors.grey.shade900,fontWeight: FontWeight.bold),
              cursorColor: Colors.grey,
              cursorWidth: 2,
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Register"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade900, // Background color
                    foregroundColor: Colors.white,    // Text color
                    shadowColor: Colors.black,  // Shadow color
                    elevation: 8,               // Elevation depth
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }

}