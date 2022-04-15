import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/presentation/feature/account/view/location_view.dart';
import 'package:portfolio_app/presentation/feature/account/view/personal_data_view.dart';
import 'package:portfolio_app/presentation/feature/account/widget/account_list.dart';
import 'package:portfolio_app/presentation/feature/account/widget/setting_tile.dart';
import 'package:portfolio_app/presentation/feature/account/widget/setting_tile_redirect.dart';
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
                  const SizedBox(
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
          Expanded(
              flex: 5,
              child: AccountList(
                settingTiles: [
                  SettingTile(
                    page: PersonalDataView(),
                    title: "Profil",
                    icon: SvgPicture.asset("assets/icons/ui/user.svg",
                        color: secondaryColor),
                  ),
                  SettingTile(
                    page: LocationView(),
                    title: "Localisation",
                    icon: SvgPicture.asset("assets/icons/ui/marker.svg",
                        color: secondaryColor),
                  ),
                  SettingTile(
                    page: PersonalDataView(),
                    title: "Informations",
                    icon: SvgPicture.asset("assets/icons/ui/info.svg",
                        color: secondaryColor),
                  ),
                ],
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: secondaryColorLessOpacity.withOpacity(0.5),
                thickness: 1.5,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: AccountList(
                settingTiles: [
                  SettingTileRedirect(
                      url: 'https://github.com/BaptisteLecat',
                      title: "Github",
                      icon: SvgPicture.asset("assets/icons/github.svg",
                          color: secondaryColor)),
                  SettingTileRedirect(
                      url: 'https://www.linkedin.com/in/baptiste-lecat/',
                      title: "Linkedin",
                      icon: SvgPicture.asset("assets/icons/linkedin.svg",
                          color: secondaryColor)),
                  SettingTile(
                      page: PersonalDataView(),
                      title: "Curriculum Vitae",
                      icon: SvgPicture.asset(
                          "assets/icons/ui/graduation-cap.svg",
                          color: secondaryColor)),
                ],
              )),
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
                      const Icon(Icons.email),
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
