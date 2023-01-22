import 'dart:html';

import 'package:day1/page2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  TextButton(
                      onPressed: () async {
                        const url = 'https://www.mvpitsolutions.com/home';

                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        }
                      },
                      child: const Text('MVP IT Solutions')),
                  const SizedBox(height: 1),
                  IconButton(
                      color: Colors.white,
                      onPressed: () async {
                        const url =
                            'https://www.linkedin.com/company/mvp-it-solutions';

                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url));
                        }
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedinIn,
                      )),
                  const SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () async {
                          const phoneNumber = '386-320-8802';
                          const url = 'tel:$phoneNumber';

                          if (await canLaunchUrl(Uri.parse(url))) {
                            await launchUrl(Uri.parse(url));
                          }
                        },
                        child: const Text(
                          '386-320-8802',
                        ),
                      ),
                      const Text(
                        'US/CAN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () async {
                      const toEmail = 'dev@mvpitsolutions.com';
                      const subject = 'MVP IT Inquiry';
                      const message = 'I am interested in working with MVPIT';
                      const url =
                          'mailto:$toEmail?subject=${subject}&body=${message}';

                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      }
                    },
                    child: const Text(
                      'dev@mvpitsolutions.com',
                    ),
                  ),
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
                    child: const Text(
                      'Services',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Software Development\n\nHome IT Services\n\nBusiness IT services\n\nPC & Mobile Device Repair\n\nTechnology Consulting',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                    'Support\nLoctions\nSocial Media\nContact Form\nGet a quote',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
