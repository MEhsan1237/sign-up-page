import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildSocialIcon(String assetUrl, String url) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.grey[200],
          child: ClipOval(
            child: Image.network(
              assetUrl,
              width: 26,
              height: 26,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.error, size: 20),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon(
          'https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg',
          'https://www.google.com',
        ),
        _buildSocialIcon(
          'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png',
          'https://www.facebook.com',
        ),
        _buildSocialIcon(
          'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
          'https://www.instagram.com',
        ),
      ],
    );
  }
}
