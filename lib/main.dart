import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Please log in'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //

  final emailController = TextEditingController();
  final password = TextEditingController();
  final String correctEmail = "james@gmail.com";
  final String correctPassword = 'TestP@ss1';
  final String incorrectEmailMsg = 'This email is not registered. Try again';
  final String invalidEmailMsg = 'This email  is not valid. Try again';
  final String incorrectPass = 'Incorrect Password. Try again';
  final String invalidPass = 'This password  is not valid. Try again';
  String errorEmailText = '';
  String errorPassText = '';
  List<String> specialChars = ['!', "@", "#", "\$", "%", "&"];

  bool checkEmailValid(String text) {
    if (text.contains('@') && text.contains('.')) {
      return true;
    } else {
      return false;
    }
  }

  bool checkRegEmail(String text) {
    if (text == correctEmail) {
      return true;
    } else {
      return false;
    }
  }

  bool checkPassword(String text) {
    if (text == correctPassword) {
      return true;
    } else {
      return false;
    }
  }

  bool checkPasswordChars(String text) {
    for (final char in specialChars) {
      if (text.contains(char)) {
        return true;
      }
    }
    return false;
  }

  bool isPassVisible = true;

  @override
  Widget build(BuildContext context) {
    bool checkTheShit() {
      if (!checkEmailValid(emailController.text)) {
        setState(() {
          errorEmailText = invalidEmailMsg;
        });

        return false;
      }

      if (!checkRegEmail(emailController.text)) {
        setState(() {
          errorEmailText = incorrectEmailMsg;
        });

        return false;
      }

      if (!checkPasswordChars(password.text)) {
        setState(() {
          errorPassText = invalidPass;
        });

        return false;
      }

      if (!checkPassword(password.text)) {
        setState(() {
          errorPassText = incorrectPass;
        });

        return false;
      }
      return true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Please enter email and password',
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Email',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => emailController.clear(),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              if (errorEmailText.isNotEmpty) Text(errorEmailText),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: isPassVisible
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () =>
                        setState(() => isPassVisible = !isPassVisible),
                  ),
                ),
                obscureText: isPassVisible,
              ),
              const SizedBox(height: 10),
              if (errorPassText.isNotEmpty) Text(errorPassText),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                ),
                child: const Text('Log in'),
                onPressed: () {
                  if (!checkTheShit()) return;

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Page2(
                            title: 'Page 2',
                            text: 'Page 2 center text',
                          )));
                },
              ),
              const SizedBox(
                height: 50,
              ),
              const BottomRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final String title;
  final String text;
  const Page2({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(text)),
    );
  }
}

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 48, 48, 48),
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'MVP IT \nSolutions',
              ),
              const SizedBox(
                height: 1,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Page2(
                              title: 'Page 2',
                              text: 'Page 2 center text',
                            )));
                  },
                  icon: const Icon(
                    Icons.link_rounded,
                  )),
              const SizedBox(
                height: 1,
              ),
              const Text('(1)234-567-8910   US/CAN'),
              const SizedBox(
                height: 15,
              ),
              const Text('dev@mvpitsolutions.com'),
            ],
          ),
          const SizedBox(width: 100),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Page2(
                              title: 'Services',
                              text: 'Services Page',
                            )));
                  },
                  child: const Text('Services')),
              const SizedBox(height: 10),
              const Text(
                  'Software Development\nHome IT Services\nBusiness IT services\nPC & Mobile Device Repair\nTechnology Consulting'),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Page2(
                              title: 'Contact Page',
                              text: 'Contact Us',
                            )));
                  },
                  child: const Text('Contact Us')),
              const SizedBox(height: 10),
              const Text(
                  'Support\nLoctions\nSocial Media\n Contact Form\nGet a quote'),
            ],
          )
        ],
      ),
    );
  }
}
