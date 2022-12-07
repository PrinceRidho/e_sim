import 'package:e_sim/pages/home_page.dart';
import 'package:e_sim/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:e_sim/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: whiteTextStyle,
        ),
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width - (2 * edge),
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: blackTextStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF402609),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: whiteTextStyle,
        ),
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width - (2 * edge),
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            obscureText: true,
            style: blackTextStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF402609),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildConfirmPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Confirm Password',
          style: whiteTextStyle,
        ),
        SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width - (2 * edge),
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            obscureText: true,
            style: blackTextStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF402609),
              ),
              hintText: 'Re-type your Password',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password?',
          style: whiteTextStyle,
        ),
      ),
    );
  }

  Widget buildloginBtn() {
    return Container(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Text(
          'Sudah mempunyai akun? Login disini.',
          style: whiteTextStyle,
        ),
      ),
    );
  }

  Widget buildRememberMe() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.purple,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: whiteTextStyle,
          )
        ],
      ),
    );
  }

  Widget buildRegisterBtn() {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * edge),
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: whiteColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(17),
          ),
        ),
        child: Text(
          'Register',
          style: blackTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: edge,
            vertical: 80,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Daftar sebagai Pengguna',
                  style: whiteTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                buildEmail(),
                SizedBox(height: 20),
                buildPassword(),
                SizedBox(height: 20),
                buildConfirmPassword(),
                SizedBox(height: 20),
                buildRememberMe(),
                SizedBox(height: 20),
                buildRegisterBtn(),
                SizedBox(height: 20),
                buildloginBtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
