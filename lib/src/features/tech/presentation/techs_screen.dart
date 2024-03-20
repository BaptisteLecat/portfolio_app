import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_app/src/features/tech/presentation/widgets/tech_widget.dart';

class TechsScreen extends StatelessWidget {
  const TechsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      TechWidget(
        title: "Mobile Development with Flutter",
        level: "Expert",
        iconPath: "assets/icons/tech/flutter.png",
        color: Color.fromARGB(30, 71, 197, 251),
      ),
      TechWidget(
          title: "API Development with Symfony",
          level: "Intermediate",
          iconPath: "assets/icons/tech/symfony.png",
          color: Color.fromARGB(30, 0, 0, 0)),
      TechWidget(
        title: "Mobile Backend with Firebase",
        level: "Confirmed",
        iconPath: "assets/icons/tech/firebase.png",
        color: Color.fromARGB(30, 255, 160, 0),
        scale: 1.4,
      ),
      TechWidget(
        title: "API Development with NestJS",
        level: "Intermediate",
        iconPath: "assets/icons/tech/nestjs.png",
        color: Color.fromARGB(30, 224, 35, 78),
        scale: 0.9,
      ),
      TechWidget(
        title: "Cloud Architecture with GCP",
        level: "Intermediate",
        iconPath: "assets/icons/tech/gcp.png",
        color: Color.fromARGB(30, 52, 168, 83),
        scale: 0.9,
      ),
      TechWidget(
        title: "DevOps with Docker",
        level: "Intermediate",
        iconPath: "assets/icons/tech/docker.png",
        color: Color.fromARGB(30, 0, 155, 197),
        scale: 1.4,
      ),
      TechWidget(
        title: "CI/CD with Github Actions",
        level: "Confirmed",
        iconPath: "assets/icons/tech/github-actions.png",
        color: Color.fromARGB(30, 32, 137, 255),
        scale: 0.9,
      ),
      TechWidget(
        title: "Algorithmic / Mobile with Dart",
        level: "Intermediate",
        iconPath: "assets/icons/tech/dart.png",
        color: Color.fromARGB(30, 0, 197, 179),
        scale: 0.9,
      ),
      TechWidget(
        title: "API Development with ExpressJS",
        level: "Intermediate",
        iconPath: "assets/icons/tech/express.png",
        color: Color.fromARGB(30, 0, 0, 0),
      ),
      TechWidget(
        title: "Design with Figma",
        level: "Intermediate",
        iconPath: "assets/icons/tech/figma.png",
        color: Color.fromARGB(30, 163, 88, 255),
      ),
      TechWidget(
        title: "Versioning with Github",
        level: "Intermediate",
        iconPath: "assets/icons/tech/github.png",
        color: Color.fromARGB(30, 24, 22, 22),
      ),
      TechWidget(
        title: "Versioning with Gitlab",
        level: "Intermediate",
        iconPath: "assets/icons/tech/gitlab.png",
        color: Color.fromARGB(30, 224, 66, 40),
      ),
      TechWidget(
        title: "Infrastructure as Code with Terraform",
        level: "Intermediate",
        iconPath: "assets/icons/tech/terraform.png",
        color: Color.fromARGB(30, 92, 78, 229),
      ),
      TechWidget(
        title: "Deployment / Scaling with Kubernetes",
        level: "Novice",
        iconPath: "assets/icons/tech/kubernetes.png",
        color: Color.fromARGB(30, 72, 108, 179),
      ),
      TechWidget(
        title: "Data Science with Pandas",
        level: "Novice",
        iconPath: "assets/icons/tech/panda.png",
        color: Color.fromARGB(30, 18, 6, 84),
      ),
      TechWidget(
        title: "Web Development with PHP",
        level: "Intermediate",
        iconPath: "assets/icons/tech/php.png",
        color: Color.fromARGB(30, 118, 122, 179),
      ),
      TechWidget(
        title: "Docker Monitoring with Portainer",
        level: "Intermediate",
        iconPath: "assets/icons/tech/portainer.png",
        color: Color.fromARGB(30, 58, 187, 237),
      ),
      TechWidget(
        title: "API Testing with Postman",
        level: "Intermediate",
        iconPath: "assets/icons/tech/postman.png",
        color: Color.fromARGB(30, 243, 112, 54),
      ),
      TechWidget(
        title: "Datavisualisation with R",
        level: "Novice",
        iconPath: "assets/icons/tech/r.png",
        color: Color.fromARGB(30, 188, 190, 194),
      ),
      TechWidget(
        title: "API and Scripting with Typescript",
        level: "Intermediate",
        iconPath: "assets/icons/tech/typescript.png",
        color: Color.fromARGB(30, 0, 122, 205),
        scale: 0.8,
      ),
    ];
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skill Spectrum',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                      'A snapshot of my technical prowess in coding, frameworks, and deployment, highlighting tools that empower continuous integration and delivery',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                          )),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SliverList.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: list[index],
                  );
                })
          ])),
    );
  }
}
