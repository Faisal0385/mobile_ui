import 'package:flutter/material.dart';
import 'package:mobile_ui/screens/auth/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/circle logo.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            TitleSection("Login Page","Don't have account an account?", SignUpScreen()),
            EmailInput(),
            PasswordInput(),
            ForgotPasswordSection(),
            SubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget SubmitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Submit'),
    );
  }

  Widget ForgotPasswordSection() {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }

  Widget PasswordInput() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        obscureText: !_passwordVisible ? true : false,
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: const Icon(
            Icons.password,
            color: Colors.green,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              _passwordVisible = !_passwordVisible;
              setState(() {});
            },
            icon: _passwordVisible
                ? const Icon(Icons.visibility, color: Colors.blueGrey)
                : const Icon(Icons.visibility_off, color: Colors.green),
          ),
        ),
      ),
    );
  }

  Widget EmailInput() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Email",
          prefixIcon: Icon(
            Icons.email,
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Widget TitleSection(String Title, SubTitle, link) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              Title,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  SubTitle,
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => link));
                  },
                  child: const Text(
                    "Click Here",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
