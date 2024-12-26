import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExecuitiveMembersScreen extends StatelessWidget {

  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://gtcci.org.pk/landingpage/media-1/"));


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        elevation: 0.00,

        backgroundColor: Color(0xff2af598),
        title: Text("Execuitive Members", style: TextStyle(fontWeight: FontWeight.bold ),
        ),
        titleSpacing: 00.0,
      ),

      body: WebViewWidget(
        controller: controller,
      ),
    );

  }
}