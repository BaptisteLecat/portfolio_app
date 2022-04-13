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
      appBar: AppBar(
        title: Text("Mission"),
      ),
      body: SafeArea(
        child: BlocBuilder<MissionBloc, MissionState>(
          builder: (context, state) {
            switch (state.status) {
              case MissionStatus.select:
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Html(
                    data: state.mission.content,
                    customRenders: {
                      headline1Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline1!),
                      ),
                      headline2Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline2!),
                      ),
                      headline3Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline3!),
                      ),
                      headline4Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline4!),
                      ),
                      headline5Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline5!),
                      ),
                      headline6Matcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .headline6!),
                      ),
                      paragraphMatcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .bodyText1!),
                      ),
                      liMatcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Text(
                            "${context.tree.element!.text}",
                            style: Theme.of(context.buildContext)
                                .textTheme
                                .bodyText1!),
                      ),
                      imgMatcher(): CustomRender.widget(
                        widget: (context, buildChildren) => Image.network(
                            "${context.tree.element!.attributes["src"]}",
                            height: 100,
                            width: 200),
                      ),
                      iframeYT():
                          CustomRender.widget(widget: (context, buildChildren) {
                        double? width = double.tryParse(
                            context.tree.attributes['width'] ?? "");
                        double? height = double.tryParse(
                            context.tree.attributes['height'] ?? "");
                        print(height);
                        print(width);
                        return Container(
                          color: Colors.red,
                          width: 100,
                          height: 100,
                          child: WebView(
                            initialUrl: context.tree.attributes['src']!,
                            javascriptMode: JavascriptMode.unrestricted,
                            navigationDelegate:
                                (NavigationRequest request) async {
                              //no need to load any url besides the embedded youtube url when displaying embedded youtube, so prevent url loading
                              if (!request.url.contains("youtube.com")) {
                                return NavigationDecision.prevent;
                              } else {
                                return NavigationDecision.navigate;
                              }
                            },
                          ),
                        );
                      }),
                    },
                    tagsList: Html.tags..addAll(["bird", "flutter"]),
                  ),
                );
              case MissionStatus.failure:
                return Center(
                  child: Text("Une erreur s'est produite"),
                );
              default:
                return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

CustomRenderMatcher headline1Matcher() =>
    (context) => context.tree.element?.localName == 'h1';
CustomRenderMatcher headline2Matcher() =>
    (context) => context.tree.element?.localName == 'h2';
CustomRenderMatcher headline3Matcher() =>
    (context) => context.tree.element?.localName == 'h3';
CustomRenderMatcher headline4Matcher() =>
    (context) => context.tree.element?.localName == 'h4';
CustomRenderMatcher headline5Matcher() =>
    (context) => context.tree.element?.localName == 'h5';
CustomRenderMatcher headline6Matcher() =>
    (context) => context.tree.element?.localName == 'h6';

CustomRenderMatcher paragraphMatcher() =>
    (context) => context.tree.element?.localName == 'p';
CustomRenderMatcher liMatcher() =>
    (context) => context.tree.element?.localName == 'li';

CustomRenderMatcher imgMatcher() =>
    (context) => context.tree.element?.localName == 'img';
CustomRenderMatcher iframeYT() => (context) =>
    context.tree.element?.localName == 'iframe' &&
    (context.tree.element?.attributes['src']?.contains("youtube.com") ?? false);
