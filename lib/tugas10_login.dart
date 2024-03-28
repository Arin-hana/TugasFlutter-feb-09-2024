import 'package:flutter/material.dart';
import './tugas10_success.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldContainerchild extends StatelessWidget {
  final Widget child;

  const TextFieldContainerchild({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white, // Mengatur warna latar belakang menjadi putih
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String hintText;

  const TextFieldContainer({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  createState() {
    return Tugas10Login();
  }
}

class SignUpPage extends StatefulWidget {
  @override
  createState() {
    return SignUpPageState();
  }
}

class Tugas10Login extends State<FormLogin> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          scaffoldBackgroundColor: const Color.fromRGBO(213, 242, 232, 1.0),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(213, 242, 232, 1.0)),
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome Back !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30), // Menambahkan jarak di sini
                  const Text(
                    'Log In to your account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign:
                        TextAlign.right, // Teks akan berada di sebelah kanan
                  ),
                  const SizedBox(height: 40),
                  const TextFieldContainerchild(
                    child: TextField(
                      style: TextStyle(
                          color: Colors
                              .black), // Mengatur warna teks menjadi hitam
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors
                                .grey), // Mengatur warna hint menjadi abu-abu
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const TextFieldContainerchild(
                    child: TextField(
                      style: TextStyle(
                          color: Colors
                              .black), // Mengatur warna teks menjadi hitam
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors
                                .grey), // Mengatur warna hint menjadi abu-abu
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe, // Menetapkan nilai checkbox
                        onChanged: (value) {
                          setState(() {
                            _rememberMe =
                                value ?? false; // Memperbarui nilai checkbox
                          });
                        },
                      ),
                      const Text('Remember Me'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgotten_password');
                        },
                        child: const Text(
                          'Forgotten password?',
                          style: TextStyle(
                            color: Colors.blue, // Ubah warna teks menjadi biru
                            decoration: TextDecoration
                                .underline, // Berikan garis bawah pada teks
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(45, 73, 144, 1.0),
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      maximumSize: const Size(196, 55),
                      minimumSize: const Size(196, 55),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Success_login()));
                    },
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text('OR'),
                  const SizedBox(height: 30),
                  OutlinedButton.icon(
                    onPressed: () {},
                    // icon: Image.asset('Assets/1. logo.png',
                    //     width: 24, height: 24),
                    label: const Text(
                      'Log in with your Google account',
                      style: TextStyle(
                        color:
                            Colors.black, // Mengatur warna teks menjadi hitam
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors
                          .white, // Mengatur warna latar belakang menjadi putih
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign_up');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF2D4990),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class SignUpPageState extends State<SignUpPage> {
  bool _rememberMe = false; // Deklarasi dan inisialisasi variabel _rememberMe

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(),
          scaffoldBackgroundColor: const Color.fromRGBO(213, 242, 232, 1.0),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(213, 242, 232, 1.0)),
        ),
        home: Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Sign up for the Chunky app',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextFieldContainer(
                      hintText: 'Enter your name',
                    ),
                    const SizedBox(height: 30),
                    const TextFieldContainer(
                      hintText: 'Last name',
                    ),
                    const SizedBox(height: 30),
                    const TextFieldContainer(
                      hintText: 'Email/phone number',
                    ),
                    const SizedBox(height: 30),
                    const TextFieldContainer(
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 30),
                    const TextFieldContainer(
                      hintText: 'Confirm password',
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Checkbox(
                            value: _rememberMe, // Gunakan variabel _rememberMe
                            onChanged: (value) {
                              setState(() {
                                _rememberMe =
                                    value ?? false; // Toggle nilai _rememberMe
                              });
                            },
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'By clicking on ‘sign up’, you’re agreeing to the Chunky app ',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  maxLines: 2, // Maksimum 2 baris
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Handle aksi syarat dan ketentuan di sini
                                      },
                                      child: const Text(
                                        'Terms of Service',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(
                                              0xFF2D4990), // Warna latar belakang: #2D4990
                                          backgroundColor: Color(0xFFD5F2E8),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      ' and ',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Handle aksi kebijakan privasi di sini
                                      },
                                      child: const Text(
                                        'Privacy Policy',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(
                                              0xFF2D4990), // Warna latar belakang: #2D4990
                                          backgroundColor: Color(0xFFD5F2E8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(45, 73, 144, 1.0),
                        shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        maximumSize: const Size(196, 55),
                        minimumSize: const Size(196, 55),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Success()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            )));
  }
}
