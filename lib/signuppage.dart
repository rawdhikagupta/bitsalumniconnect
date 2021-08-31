import 'package:flutter/material.dart';
import 'progressindicator.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'X',
                        style: TextStyle(color: Color(0XFFBDBDBD), fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Colors.black),
                            textAlign: TextAlign.right,
                          ),
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF4B2E83),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      16,
                      5,
                      16,
                      5,
                    ),
                    width: 400,
                    height: 70,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Color(0xffF6F6F6),
                          filled: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Color(0xffBDBDBD), fontSize: 16)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                  width: 400,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Color(0xffF6F6F6),
                        filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Color(0xffBDBDBD), fontSize: 16)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                  width: 400,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: Color(0xffF6F6F6),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Color(0xffBDBDBD), fontSize: 16),
                      suffix: TextButton(
                          onPressed: () {},
                          child: Text(
                            "SHOW",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF4B2E83),
                            ),
                          )),
                    ),
                  ),
                ),
                Center(
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: Color(0xff4B2E83),
                            value: this.value,
                            onChanged: (bool) {
                              setState(() {
                                this.value = value;
                              });
                            }),
                        Text(
                          'I would like to receive your newsletter and \nother information',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF666666),
                          ),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 20),
                    child: ButtonTheme(
                        minWidth: 343,
                        height: 54,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                            onPressed: () {},
                            color: Color(0xFF4B2E83),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                              child: Text('SIGN UP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  )),
                            )))),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: ButtonTheme(
                    minWidth: 178,
                    height: 19,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot your Password ?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF4B2E83),
                        ),
                      ),
                    ),
                  ),
                ),
               ],
              ),
            )));
  }
}