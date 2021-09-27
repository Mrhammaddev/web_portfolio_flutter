import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true);
    }
  }

  // static Future<void> downloadResume() async {
  //   final readValue = await rootBundle.load('assets/cv.pdf');

  //   // Call the "saveAs" method from the FileSaver.js libray
  //   js.context.callMethod("saveAs", [
  //     html.Blob([readValue]),
  //     "Malik Hammad CV.pdf",
  //   ]);
  // }
}
