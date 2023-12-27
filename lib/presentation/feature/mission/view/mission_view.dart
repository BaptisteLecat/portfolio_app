import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:portfolio_app/presentation/feature/mission/bloc/mission_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MissionView extends StatelessWidget {
  final String kHtml = '''
<h1>Heading</h1>
<h2>Heading</h2>
<h3>Heading</h3>
<h4>Heading</h4>
<h5>Heading</h5>
<h6>Heading</h6>
<p>A paragraph with <strong>strong</strong> <em>emphasized</em> text.</p>
<ol>
  <li>List item number one</li>
  <li>
    Two
    <ul>
      <li>2.1 (nested)</li>
      <li>2.2</li>
    </ul>
  </li>
  <li>Three</li>
</ol>
<img src='https://docs.flutter.dev/assets/images/docs/arch-overview/color-picker.png'/>
<p>And YouTube video!</p>
<iframe src="https://www.youtube.com/watch?v=sQ0oH9B69z4" width="156" height="235"></iframe>
''';
  const MissionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
