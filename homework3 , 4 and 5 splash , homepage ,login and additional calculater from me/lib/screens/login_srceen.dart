import 'package:flutter/material.dart';
import 'package:audioplayer/screens/languages_list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  bool isObscureText = true;
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffc83cef),
          title: Text(
            " تسجيل الدخول",
            style: TextStyle(color: Colors.white, fontFamily: "Tajawal"),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _key,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/2.jpg"),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: userNameController,
                      // initialValue: "Flutter@gmail.com",
                      enabled: true,
                      maxLength: 30,
                      // maxLines: 6,
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xffc83cef),
                            width: 2,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        hint: Text("user name"),
                        labelText: "اسم المستخدم",
                        helperText: "يجب ان يكون الادخال 3 احرف على الأقل",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Tajawal",
                        ),
                        errorStyle: TextStyle(fontFamily: "Tajawal"),
                        filled: true,
                        fillColor: Color(0xffe1e0e0),
                        // icon: Icon(Icons.person),
                        // prefix: Icon(Icons.person),
                        prefixIcon: Icon(Icons.person),
                        // suffix: Icon(Icons.person),
                        // suffixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "يجب عليك ادخال اسم المستخدم";
                        }

                        if (value.length < 6) {
                          return "اسم المستخدم يجب ان يكون اكبر من 6 احرف";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: userPasswordController,
                      maxLength: 10,
                      // maxLines: 6,
                      keyboardType: TextInputType.text,
                      obscureText: isObscureText,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "يجب عليك ادخال كلمة سر المستخدم";
                        }

                        if (value.length < 6) {
                          return "كلمة سر المستخدم يجب ان تكون اكبر من 6 احرف";
                        }
                        return null;
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color(0xffc83cef),
                            width: 2,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        errorStyle: TextStyle(fontFamily: "Tajawal"),
                        hint: Text("user password"),
                        labelText: "كلمة السر",
                        helperText: "يجب ان كلمة السر خليط من الارقام والحروف",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: "Tajawal",
                        ),
                        prefixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(Icons.remove_red_eye),
                        ),
                        filled: true,
                        fillColor: Color(0xffe1e0e0),
                      ),
                    ),
                    SizedBox(height: 40),

                    GestureDetector(
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          if (userNameController.text == "admin123" &&
                              userPasswordController.text == "admin123") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LanguagesListScreen(),
                              ),
                            );
                          } else {
                            print("username or pw is wrong");
                          }
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffc83cef),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Tajawal",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
