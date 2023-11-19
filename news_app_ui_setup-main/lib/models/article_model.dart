// import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher.dart';
 

class ArticleModel {
  final String? image;
  final String headtitle;
  final String? subtitle;
  final String url;

  const ArticleModel({
    required this.url,
    required this.image,
    required this.headtitle,
    required this.subtitle,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json["urlToImage"],
        headtitle: json["title"],
        subtitle: json["description"],
        url: json["url"]);
  }

  Future<bool> canLaunchUrl() async {
    return canLaunch(url);
  }

  Future<void> launchUrl() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  // void openLink() {
  //   Webview(url: url,);
  // }
}
