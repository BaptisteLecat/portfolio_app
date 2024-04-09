import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).dividerColor,
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                            "assets/icons/profile/profile_3.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Lecat Baptiste",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Text(
                      "Google Cloud Junior Architect\nFlutter Developper",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 55),
                    child: Container(
                      padding: const EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.person,
                                  color: Theme.of(context).dividerColor,
                                  size: 28,
                                ))),
                            title: Text("Personnal Informations",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 22,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            onTap: () {
                              GoRouter.of(context)
                                  .push("${AppRoute.settings.route}/personnal");
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListTile(
                            leading: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.language,
                                  color: Theme.of(context).dividerColor,
                                  size: 28,
                                ))),
                            title: Text("Language",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 22,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            onTap: () {
                              GoRouter.of(context)
                                  .push("${AppRoute.settings.route}/language");
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListTile(
                            leading: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.settings,
                                  color: Theme.of(context).dividerColor,
                                  size: 28,
                                ))),
                            title: Text("Settings",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 22,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            onTap: () {
                              GoRouter.of(context)
                                  .push("${AppRoute.settings.route}/setting");
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListTile(
                            leading: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.question_answer,
                                  color: Theme.of(context).dividerColor,
                                  size: 28,
                                ))),
                            title: Text("FAQ",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 22,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            onTap: () {
                              GoRouter.of(context)
                                  .push("${AppRoute.settings.route}/faq");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 110,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Theme.of(context).scaffoldBackgroundColor
                            : Theme.of(context).listTileTheme.tileColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("90",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).dividerColor,
                                        )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Hours\ncoding",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color:
                                              Theme.of(context).dividerColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dividerColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Dart",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).dividerColor,
                                      ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Prefered\nLanguage",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color:
                                              Theme.of(context).dividerColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).dividerColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 3,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "492",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).dividerColor,
                                      ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Monthly\nCommits",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color:
                                              Theme.of(context).dividerColor),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
