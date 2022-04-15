import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/practice/bloc/course_bloc.dart';
import 'package:portfolio_app/presentation/feature/practice/bloc/work_bloc.dart';
import 'package:portfolio_app/presentation/feature/practice/screen/course_screen.dart';
import 'package:portfolio_app/presentation/feature/practice/screen/work_screen.dart';
import 'package:portfolio_app/presentation/feature/practice/widget/practice_card.dart';
import 'package:portfolio_app/presentation/widget/shimmer/shimmer_export.dart';
import 'package:portfolio_app/presentation/widget/theme/colors.dart';

class PracticesView extends StatelessWidget {
  final WorkBloc workBloc = WorkBloc();
  final CourseBloc courseBloc = CourseBloc();
  PracticesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: workBloc..add(WorkFetchAll()),
        ),
        BlocProvider.value(
          value: courseBloc..add(CourseFetchAll()),
        ),
      ],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Flex(
              mainAxisSize: MainAxisSize.min,
              direction: Axis.vertical,
              children: [
                SizedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cursus Scolaire",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      BlocBuilder<CourseBloc, CourseState>(
                        buildWhen: ((previous, current) =>
                            previous.courses != current.courses),
                        builder: (context, state) {
                          switch (state.status) {
                            case CourseStatus.success:
                              return SizedBox(
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state.courses.length,
                                    itemBuilder: ((context, index) {
                                      Course course = state.courses[index];
                                      return GestureDetector(
                                          onTap: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        CourseScreen(
                                                          course: course,
                                                        ))));
                                          }),
                                          child: PracticeCard(
                                            companyName: (course.school != null)
                                                ? "${course.school!.name}"
                                                : "",
                                            title: "${course.title}",
                                            locationLabel: (course.location !=
                                                    null)
                                                ? "${course.location!.label}"
                                                : "",
                                            picture: course.picture!,
                                          ));
                                    })),
                              );
                            case CourseStatus.failure:
                              return Center(
                                child: Text("${state.message}"),
                              );
                            default:
                              return const ShimmerList(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  customShimmer: CustomShimmer(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 3);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Experiences professionnelles",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      BlocBuilder<WorkBloc, WorkState>(
                        builder: (context, state) {
                          switch (state.status) {
                            case WorkStatus.success:
                              return SizedBox(
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: state.works.length,
                                    itemBuilder: ((context, index) {
                                      Work work = state.works[index];
                                      return GestureDetector(
                                          onTap: (() {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: ((context) =>
                                                        WorkScreen(
                                                            work: work))));
                                          }),
                                          child: PracticeCard(
                                            companyName: (work.company != null)
                                                ? "${work.company!.name}"
                                                : "",
                                            locationLabel:
                                                (work.location != null)
                                                    ? "${work.location!.label}"
                                                    : "",
                                            title: "${work.title}",
                                            picture: work.picture!,
                                          ));
                                    })),
                              );
                            case WorkStatus.failure:
                              return Center(
                                child: Text("${state.message}"),
                              );
                            default:
                              return const ShimmerList(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  customShimmer: CustomShimmer(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                  ),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 3);
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
