import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Column(children: [
        Image.asset(
          'images/login.PNG',
          width: screenWidth,
        ),
        const SizedBox(height: 5),
        const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(children: [
              Text(
                'Account',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ])),
        const SizedBox(
          height: 5,
        ),
        const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Row(children: [
              Text(
                'Login/Create and Account',
                style: TextStyle(fontSize: 15),
              )
            ])),
        const SizedBox(height: 10),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 247, 160, 45),
                        Color.fromARGB(255, 216, 133, 24)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 247, 160, 45),
                        Color.fromARGB(255, 216, 133, 24)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ))
            ])),
        Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 2))),
                child: Row(
                  children: [
                    const Text(
                      'By Clicking | Accept the',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () => {Navigator.pushNamed(context, '/')},
                        child: const Text(
                          'Terms & Conditions',
                          style: TextStyle(
                              fontSize: 11,
                              decoration: TextDecoration.underline),
                        )),
                    const Text(
                      '&',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () => {Navigator.pushNamed(context, '/')},
                        child: const Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 11,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )))
      ])),
    );
  }
}
