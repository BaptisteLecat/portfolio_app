import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        direction: Axis.vertical,
                        children: [
                          Text("Baptiste Lecat",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(color: secondaryColor)),
                          Text("Développeur Mobile Flutter",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: secondaryColorBrighter)),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: secondaryColorLessOpacity.withOpacity(0.5),
                thickness: 1.5,
              ),
            ),
          ),
          Expanded(flex: 5, child: AccountList()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: secondaryColorLessOpacity.withOpacity(0.5),
                thickness: 1.5,
              ),
            ),
          ),
          Expanded(flex: 5, child: AccountList()),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Container(
                  height: 68,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.email),
                      Text("N'hésitez pas à me contacter si vous le souhaitez.",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class AccountList extends StatelessWidget {
  const AccountList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: secondaryColorLessOpacity,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.power_off_outlined, color: secondaryColor),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Text("Données personnelles",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: secondaryColor,
                          )),
                ),
                Icon(Icons.chevron_right, color: secondaryColor),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: secondaryColorLessOpacity,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.power_off_outlined, color: secondaryColor),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Text("Données personnelles",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: secondaryColor,
                          )),
                ),
                Icon(Icons.chevron_right, color: secondaryColor),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: secondaryColorLessOpacity,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.power_off_outlined, color: secondaryColor),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Text("Données personnelles",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: secondaryColor,
                          )),
                ),
                Icon(Icons.chevron_right, color: secondaryColor),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: secondaryColorLessOpacity,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.power_off_outlined, color: secondaryColor),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: Text("Données personnelles",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: secondaryColor,
                          )),
                ),
                Icon(Icons.chevron_right, color: secondaryColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
