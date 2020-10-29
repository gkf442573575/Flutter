import 'package:flutter/material.dart';

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
    final Color purpleColor = Colors.deepPurpleAccent;
    return Container(
        color: Colors.white,
        width: 350,
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
                TextFormField(
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或邮箱',
                      labelStyle: TextStyle(color: purpleColor),
                      prefixIcon: Icon(
                        Icons.person,
                        color: purpleColor,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: purpleColor))),
                  validator: (v) {
                    // 校验用户名
                    return v.trim().length > 0 ? null : '用户名不能为空';
                  },
                )
              ],
            )));
  }
}
