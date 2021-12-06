import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final companyController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final password = TextEditingController();
  String? company;

  String? firstName;
  String? lastName;
  String? email;
  String? passwordText;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CUSTOMER ENROLMENT",
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
          SizedBox(
            height: 20,
          ),
          _formLogin(),
          GestureDetector(
            onTap: () {
              if (firstNameController.text.isNotEmpty &&
                  emailController.text.isNotEmpty &&
                  lastNameController.text.isNotEmpty &&
                  companyController.text.isNotEmpty &&
                  password.text.isNotEmpty &&
                  EmailValidator.validate(emailController.text)) {
                _firestore.collection("newusers").add({
                  "firstName": firstNameController.text,
                  "email": emailController.text.isNotEmpty,
                  "lastName": lastNameController.text,
                  "companyName": companyController.text,
                });
                lastNameController.clear();
                firstNameController.clear();
                companyController.clear();
                emailController.clear();
                password.clear();
                final snackBar = SnackBar(
                  content: const Text('Succesfully saved'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                final snackBar = SnackBar(
                  content: const Text(
                      'Some field are empty or validation problems check the fields'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              child: Text(
                "ENROLL...",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 229, 146),
                  borderRadius: BorderRadius.circular(5)),
            ),
          )
        ],
      ),
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter Company Name',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: companyController,
          onChanged: (value) {
            company = value;
          },
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter First Name',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: firstNameController,
          onChanged: (value) {
            firstName = value;
          },
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter a LastName',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: lastNameController,
          onChanged: (value) {
            lastName = value;
          },
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter email ',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: emailController,
          onChanged: (value) {
            email = value;
          },
        ),
        SizedBox(height: 30),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'password',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: TextStyle(fontSize: 12),
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey.shade50),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          controller: password,
          onChanged: (value) {
            passwordText = value;
          },
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
