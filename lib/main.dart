import 'package:flutter/material.dart';
import 'my_icons_icons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE70B89)),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF6BF6C3), Color(0xFF3D79F8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: ImageSection(
                    image: 'images/guruji.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 35),
                  child: Text(
                    'Learn Graphic and UI/UX designing in Hindi for free with live projects.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GurujiInputForm(hint: 'Email Address'),
                GurujiInputForm(hint: 'Password'),
                GurujiButton(),
                TextParagraph(
                    text: 'Forgot Password?',
                    underlinedText: '',
                    paddingTop: 10,
                    paddingBottom: 20,
                    textAlign: TextAlign.end),
                GurujiOtherLoginMethod(),
                TextParagraphLower(
                    text: 'Don\'t have an account? ',
                    underlinedText: 'Register now',
                    paddingTop: 10,
                    paddingBottom: 10,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 200,
      height: 150,
      fit: BoxFit.contain,
    );
  }
}

class GurujiInputForm extends StatelessWidget {
  const GurujiInputForm({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
          elevation: 3,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xFF6CC5DE),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 26, vertical: 17),
              hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(width: 2.5, color: Colors.blue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(width: 0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(width: 0),
              ),
              hintText: hint,
            ),
          )),
    );
  }
}

class GurujiButton extends StatelessWidget {
  const GurujiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          shadowColor: Colors.greenAccent,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          minimumSize: const Size(500, 63),
        ),
        onPressed: () {},
        child: const Text(
          'LOGIN',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class TextParagraph extends StatelessWidget {
  const TextParagraph({
    super.key,
    required this.text,
    required this.underlinedText,
    required this.paddingTop,
    required this.paddingBottom,
    required this.textAlign,
  });

  final TextAlign textAlign;
  final String text, underlinedText;
  final double paddingTop, paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
        child: Row(children: [
          Expanded(
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: text,
                  ),
                  TextSpan(
                    text: underlinedText,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textAlign: textAlign,
            ),
          ),
        ]));
  }
}

class TextParagraphLower extends TextParagraph {
  const TextParagraphLower(
      {super.key,
      required super.text,
      required super.underlinedText,
      required super.paddingTop,
      required super.paddingBottom,
      required super.textAlign});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
        child: Row(children: [
          Expanded(
            child: Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: text,
                  ),
                  TextSpan(
                    text: underlinedText,
                    style: const TextStyle(
                      decorationColor: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: textAlign,
            ),
          ),
        ]));
  }
}

class GurujiOtherLoginMethod extends StatelessWidget {
  const GurujiOtherLoginMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const CircularButton(icon: MyIcons.google, color: Colors.red),
        CircularButton(icon: MyIcons.facebook_f, color: Colors.blue[800]),
        const CircularButton(icon: MyIcons.twitter, color: Colors.blue)
      ]),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.icon, required this.color});

  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.white, // <-- Button color
        foregroundColor: color, // <-- Splash color
      ),
      child: Icon(icon, color: color),
    );
  }
}
