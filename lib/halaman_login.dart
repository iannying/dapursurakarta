import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController email =
  TextEditingController();

  final TextEditingController password =
  TextEditingController();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(

        children: [

          // BACKGROUND IMAGE
          SizedBox.expand(

            child: Image.asset(
              "assets/images/login.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // DARK OVERLAY
          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          // CONTENT
          SafeArea(

            child: Center(

              child: SingleChildScrollView(

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 24,
                ),

                child: Container(

                  padding: const EdgeInsets.all(28),

                  decoration: BoxDecoration(

                    color: Colors.white.withOpacity(0.12),

                    borderRadius:
                    BorderRadius.circular(30),

                    border: Border.all(
                      color: Colors.white24,
                    ),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    children: [

                      // ICON
                      Container(

                        padding:
                        const EdgeInsets.all(18),

                        decoration: BoxDecoration(

                          color:
                          Colors.orange.shade400,

                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.restaurant_menu,

                          size: 50,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // TITLE
                      const Text(
                        "Dapur Surakarta",

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "Temukan berbagai resep masakan Nusantara terbaik",

                        textAlign: TextAlign.center,

                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 36),

                      // EMAIL
                      TextField(

                        controller: email,

                        style:
                        const TextStyle(
                          color: Colors.white,
                        ),

                        decoration: InputDecoration(

                          hintText: "Email",

                          hintStyle: const TextStyle(
                            color: Colors.white70,
                          ),

                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),

                          filled: true,

                          fillColor:
                          Colors.white.withOpacity(0.15),

                          border: OutlineInputBorder(

                            borderRadius:
                            BorderRadius.circular(18),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // PASSWORD
                      TextField(

                        controller: password,

                        obscureText: isHidden,

                        style:
                        const TextStyle(
                          color: Colors.white,
                        ),

                        decoration: InputDecoration(

                          hintText: "Password",

                          hintStyle: const TextStyle(
                            color: Colors.white70,
                          ),

                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),

                          suffixIcon: IconButton(

                            onPressed: () {

                              setState(() {

                                isHidden = !isHidden;
                              });
                            },

                            icon: Icon(

                              isHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,

                              color: Colors.white,
                            ),
                          ),

                          filled: true,

                          fillColor:
                          Colors.white.withOpacity(0.15),

                          border: OutlineInputBorder(

                            borderRadius:
                            BorderRadius.circular(18),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // BUTTON LOGIN
                      SizedBox(

                        width: double.infinity,
                        height: 58,

                        child: ElevatedButton(

                          style:
                          ElevatedButton.styleFrom(

                            backgroundColor:
                            Colors.orange,

                            shape:
                            RoundedRectangleBorder(

                              borderRadius:
                              BorderRadius.circular(18),
                            ),
                          ),

                          onPressed: () {

                            Navigator.pushReplacement(
                              context,

                              MaterialPageRoute(
                                builder: (context) =>
                                const HomePage(),
                              ),
                            );
                          },

                          child: const Text(
                            "Login",

                            style: TextStyle(
                              fontSize: 18,
                              fontWeight:
                              FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      TextButton(

                        onPressed: () {},

                        child: const Text(
                          "Belum punya akun? Daftar",

                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}