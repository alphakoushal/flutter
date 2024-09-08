import "package:flutter/material.dart";

class Register extends StatefulWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1412147398.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2002830724.
  const Register({super.key, required this.title});
  final String title;
  @override
  State<Register> createState() => _RegisterState();
}

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2323432588.
class _RegisterState extends State<Register> {
  @override
// Suggested code may be subject to a license. Learn more: ~LicenseLog:362073171.
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Image.asset('images/app.png'),
        const SizedBox(height: 5),
        const Text(
          'Register for free',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 228, 224, 224)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread of the shadow
                      blurRadius: 5, // Blur effect
                      offset:
                          const Offset(0, 3), // Offset in x and y directions
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12), // Border radius
                ),
                child: const TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Color.fromRGBO(244, 202, 136, 1)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 241, 230, 209), // Custom border color
                      width: 1.0, // Custom border width
                    ), // Rounded border
                  ),
                )))),
        const SizedBox(height: 10),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 228, 224, 224)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread of the shadow
                      blurRadius: 5, // Blur effect
                      offset:
                          const Offset(0, 3), // Offset in x and y directions
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12), // Border radius
                ),
                child: const TextField(
                    decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Color.fromRGBO(244, 202, 136, 1)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 241, 230, 209), // Custom border color
                      width: 1.0, // Custom border width
                    ), // Rounded border
                  ),
                )))),
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
            ])),
        const Text(
          'Or',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 253, 239, 220),
                        Color.fromARGB(255, 255, 212, 157)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Google',
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
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 253, 239, 220),
                        Color.fromARGB(255, 255, 212, 157)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Facebook',
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
      ]),
    ));
  }
}
