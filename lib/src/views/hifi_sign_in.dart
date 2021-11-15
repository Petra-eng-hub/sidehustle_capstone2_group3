import 'package:flutter/material.dart';
import 'package:sidehustle_capstone2_group3/src/constants/constants.dart';
import 'package:sidehustle_capstone2_group3/src/views/lofi_sign.dart';

class HifiScreen extends StatelessWidget {
  static const id = 'HifiView';
  const HifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // created an app bar for navigation to the other Lofi screen. it will be removed in the final product.
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, LofiScreen.id),
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              label: const Text('Go to LoFi Screen'))
        ],
      ),
      backgroundColor: kHifiScafoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Email input
            const Text(
              'Email or Username',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                
                hintText: 'Enter Your Mail or Username',
                hintStyle: const TextStyle(color: Colors.black38),
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            //Remeber me/ forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    const Text(
                      'Remember Me',
                    ),
                  ],
                ),
                const Text('Forget Password?'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.teal),
      body: Center(
        child: FlatButton(
          color: Colors.teal,
          textColor: Colors.white,
          onPressed: () {
            
          },
          child: Text('GO TO SCREEN 2'),
        ),
      ),
    );
  }
}