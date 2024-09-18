import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class IconBuilder extends StatelessWidget {
  const IconBuilder({super.key});

  static List<String> icons = [
    Assets.imagesGithupIcon,
    Assets.imagesEmaleIcon,
    Assets.imagesLinkedinIcon,
    Assets.imagesFacebookIcon,
    Assets.imagesInstagrameIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/abdulmalek9'));
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[0]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/abdulmalek9'));
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[1]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(
                Uri.parse('https://www.linkedin.com/in/abdulmalek-al-khatib'));
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
            child: Image.asset(icons[2]),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(
                Uri.parse('https://www.facebook.com/abdalmalek.akhatib/'));
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[3]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://www.instagram.com/abdalmalek_ak/'));
          },
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 80, maxHeight: 80),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[4]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
      ],
    );
  }
}

class IconMobileBuilder extends StatelessWidget {
  const IconMobileBuilder({super.key});

  static List<String> icons = [
    Assets.imagesGithupIcon,
    Assets.imagesEmaleIcon,
    Assets.imagesLinkedinIcon,
    Assets.imagesFacebookIcon,
    Assets.imagesInstagrameIcon,
  ];

  final double maxWidth = 70;
  final double maxHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/abdulmalek9'));
          },
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: AspectRatio(aspectRatio: 1, child: Image.asset(icons[0])),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/abdulmalek9'));
          },
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[1]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(
                Uri.parse('https://www.linkedin.com/in/abdulmalek-al-khatib'));
          },
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: Image.asset(icons[2]),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(
                Uri.parse('https://www.facebook.com/abdalmalek.akhatib/'));
          },
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[3]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://www.instagram.com/abdalmalek_ak/'));
          },
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(icons[4]),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 12.0,
        // ),
      ],
    );
  }
}
