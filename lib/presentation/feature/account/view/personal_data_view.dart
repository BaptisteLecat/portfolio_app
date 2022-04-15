import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/feature/account/widget/fake_form_inputtext.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PersonalDataView extends StatelessWidget {
  const PersonalDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Center(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Données Personnelles",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontSize: 18, color: secondaryColor),
                          ),
                        ],
                      ),
                      Positioned(
                          left: 20,
                          top: 0,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.keyboard_arrow_left,
                              color: secondaryColor,
                              size: 28,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                    child: Container(
                  height: 110,
                  width: 110,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 88,
                          width: 88,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: primaryColor,
                          ),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(2, 2),
                                      spreadRadius: 0,
                                      blurRadius: 6,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: primaryColor,
                                  ),
                                  child:
                                      Center(child: Icon(Icons.photo_camera)),
                                ),
                              )))
                    ],
                  ),
                )),
              ),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        FakeFormInputText(label: "Nom", value: "Lecat"),
                        FakeFormInputText(label: "Prénom", value: "Baptiste"),
                        FakeFormInputText(label: "Age", value: "20 ans"),
                        FakeFormInputText(label: "Adresse", value: "Nantes")
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
