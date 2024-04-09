import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:portfolio_app/src/mock/profile_mock.dart';
import 'package:portfolio_app/src/routing/app_router.dart';

class PersonnalScreen extends StatelessWidget {
  const PersonnalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Theme.of(context).brightness == Brightness.dark
              ? IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 36,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : null,
          title: Text(
            'Edit Profile',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Theme.of(context).scaffoldBackgroundColor
                      : Theme.of(context).dividerColor,
                ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  expandedHeight: 160,
                  collapsedHeight: 160,
                  flexibleSpace: Row(
                    children: [
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).dividerColor,
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.asset(
                                  "assets/icons/profile/profile_1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              GoRouter.of(context).push(
                                  "${AppRoute.settings.route}/${AppRoute.settingsPersonnal.route}/${AppRoute.settingsPersonnalEdit.route}");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).dividerColor,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Center(
                                  child: Text(
                                    "Change Avatar",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color:
                                                Theme.of(context).dividerColor),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                    ],
                  )),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full Name",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 50,
                      child: TextFormField(
                        cursorColor: Theme.of(context).dividerColor,
                        decoration: InputDecoration(hintText: 'Full Name'),
                        initialValue: profileMocked.fullName,
                      ),
                    ),
                    Text("Email Address",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 50,
                      child: TextFormField(
                        cursorColor: Theme.of(context).dividerColor,
                        decoration: InputDecoration(hintText: 'Email'),
                        initialValue: profileMocked.email,
                      ),
                    ),
                    Text("Phone Number",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 50,
                      child: TextFormField(
                        cursorColor: Theme.of(context).dividerColor,
                        decoration: InputDecoration(hintText: 'Phone'),
                        initialValue: profileMocked.phoneNumber,
                      ),
                    ),
                    Text("City and Country",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: 50,
                      child: TextFormField(
                        cursorColor: Theme.of(context).dividerColor,
                        decoration:
                            InputDecoration(hintText: 'City and Country'),
                        initialValue:
                            "${profileMocked.city}, ${profileMocked.country}",
                      ),
                    ),
                    const SizedBox(height: 26),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Center(
                            child: Text('Update Changes',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(
                  height: 120,
                ),
              )
            ],
          ),
        ));
  }
}
