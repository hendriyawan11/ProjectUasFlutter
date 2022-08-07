import 'package:ecommerce_sparepart/config/asset.dart';
import 'package:ecommerce_sparepart/page/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
  var _controllerEmail = TextEditingController();
  var _controllerPassword = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  var _obsecure = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Asset.colorBackground,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, -0.6),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(width: 5, color: Asset.colorAccent),
              ),
              child: Icon(
                Icons.account_circle,
                size: 150,
                color: Asset.colorAccent,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.5 + 15,
            left: 30,
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 24,
                color: Asset.colorAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            bottom: 0,
            left: 0,
            right: 0,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Colors.black26,
                        offset: Offset(0, -3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _controllerEmail,
                                      validator: (value) =>
                                          value == '' ? "Jangan Kosong!" : null,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email,
                                            color: Asset.colorPrimary),
                                        hintText: 'email@gmail.com',
                                        border: styleBorder(),
                                        enabledBorder: styleBorder(),
                                        focusedBorder: styleBorder(),
                                        disabledBorder: styleBorder(),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        fillColor: Asset.colorAccent,
                                        filled: true,
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Obx(
                                      () => TextFormField(
                                        controller: _controllerPassword,
                                        validator: (value) => value == ''
                                            ? "Jangan Kosong!"
                                            : null,
                                        obscureText: _obsecure.value,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.vpn_key,
                                              color: Asset.colorPrimary),
                                          hintText: 'password',
                                          suffixIcon: Obx(
                                            () => GestureDetector(
                                              onTap: () {
                                                _obsecure.value =
                                                    !_obsecure.value;
                                              },
                                              child: Icon(
                                                _obsecure.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Asset.colorPrimary,
                                              ),
                                            ),
                                          ),
                                          border: styleBorder(),
                                          enabledBorder: styleBorder(),
                                          focusedBorder: styleBorder(),
                                          disabledBorder: styleBorder(),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 8),
                                          fillColor: Asset.colorAccent,
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Material(
                                      color: Asset.colorPrimary,
                                      borderRadius: BorderRadius.circular(30),
                                      child: InkWell(
                                        onTap: () {
                                          if (_formkey.currentState!
                                              .validate()) {
                                            print('login');
                                          }
                                        },
                                        borderRadius: BorderRadius.circular(30),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 30,
                                            vertical: 12,
                                          ),
                                          child: Text(
                                            'LOGIN',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Tida Memiliki Akun?'),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(Register());
                                    },
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Asset.colorPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  InputBorder styleBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        width: 0,
        color: Asset.colorAccent,
      ),
    );
  }
}
