import 'package:url_launcher/url_launcher.dart' as UL;
class Utils {
  static Future<void> sendEmail(
      {required String email, String subject = "", String body = ""}) async {
    String mail = "mailto:$email?subject=$subject&body=${Uri.encodeFull(body)}";
    if (await UL.canLaunchUrl(email as Uri)) {
      await UL.canLaunchUrl(email as Uri);
    } else {
      throw Exception("Unable to open the email");
    }
  }
}