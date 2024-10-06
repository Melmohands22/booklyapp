import 'package:booklyapp/Core/utils/functions/custom_snackbar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri _uri = Uri.parse(url);
    if (!await canLaunchUrl(_uri)) {
      await launchUrl(_uri);
    } else {
      CustomSnackBar(context, 'cannot launch $url');
    }
  }
}
