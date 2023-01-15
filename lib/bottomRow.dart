import 'package:day1/page2.dart';
import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: const Color.fromARGB(255, 48, 48, 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
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
            ),
            Expanded(
              child: Column(
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
            ),
            Expanded(
              child: Column(
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
                      'Support\nLoctions\nSocial Media\nContact Form\nGet a quote'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
