import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/home/widget/mission_card.dart';
import 'package:portfolio_app/presentation/feature/home/widget/project_card.dart';
import 'package:portfolio_app/presentation/feature/mission/bloc/mission_bloc.dart';
import 'package:portfolio_app/presentation/feature/mission/screen/mission_screen.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class MissionList extends StatelessWidget {
  const MissionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Missions",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: secondaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 74,
            child: BlocBuilder<MissionBloc, MissionState>(
              buildWhen: ((previous, current) =>
                  (previous.missions != current.missions)),
              builder: (context, state) {
                switch (state.status) {
                  case MissionStatus.success:
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.missions.length,
                        itemBuilder: ((context, index) {
                          Mission mission = state.missions[index];
                          return GestureDetector(
                              onTap: (() {
                                context
                                    .read<MissionBloc>()
                                    .add(MissionSelect(mission: mission));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MissionScreen()));
                              }),
                              child: MissionCard(
                                title: mission.title,
                              ));
                        }));
                  case MissionStatus.failure:
                    return Center(
                      child: Text("Une erreur s'est produite."),
                    );
                  default:
                    return Center(child: CircularProgressIndicator());
                }
              },
            ),
          )
        ]);
  }
}
