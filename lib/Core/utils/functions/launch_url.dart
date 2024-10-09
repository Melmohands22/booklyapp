import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchCustomUrl(context, String? url) async {
  Uri _uri = Uri.parse(url!);
  await canLaunchUrl(_uri);
  await launchUrl(_uri);
}
