import 'package:flutter/material.dart';
import '../utils/global.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey _formKey = new GlobalKey<_LoginState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Card(
          color: Colors.blueAccent,
          elevation: 20.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          clipBehavior: Clip.antiAlias,
          semanticContainer: false,
          child: loginContainer(),
        ),
      ),
    );
  }

  loginContainer() {
    final Color purpleColor = Global.primaryColor;
    return Container(
        color: Global.bgColor,
        width: 390,
        height: 450,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Text(
                    '登录',
                    style:
                        TextStyle(fontSize: 20, color: purpleColor, height: 1),
                  ),
                ),
                // 实现一个阴影 无边框 TextFormField
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        // labelText: '用户名',
                        hintText: '用户名或邮箱',
                        labelStyle: TextStyle(color: purpleColor),
                        prefixIcon: Icon(
                          Icons.person,
                          color: purpleColor,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 4.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                    validator: (v) {
                      // 校验用户名
                      return v.trim().length > 0 ? null : '用户名不能为空';
                    },
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(218, 232, 237, 0.52),
                          blurRadius: 5.0,
                        ),
                      ]),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        // labelText: '密码',
                        hintText: '请输入密码',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: purpleColor,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 4.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                    validator: (v) {
                      // 校验用户名
                      return v.trim().length > 0 ? null : '密码不能为空';
                    },
                    obscureText: true,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(218, 232, 237, 0.52),
                          blurRadius: 5.0,
                        ),
                      ]),
                ),
              ],
            )));
  }
}
