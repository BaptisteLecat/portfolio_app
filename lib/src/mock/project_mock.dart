import 'dart:ui';

import 'package:portfolio_app/src/features/projects/domain/entities/project.dart';
import 'package:portfolio_app/src/features/projects/domain/entities/project_category.dart';
import 'package:portfolio_app/src/features/projects/domain/entities/project_feature.dart';

final mockedProjectCategories = [
  ProjectCategory(id: 1, name: "Mobile"),
  ProjectCategory(id: 2, name: "Cloud"),
  ProjectCategory(id: 3, name: "DevOps"),
  ProjectCategory(id: 4, name: "Web"),
  ProjectCategory(id: 5, name: "Algorithmic"),
];

final mockedProjects = [
  Project(
      id: 1,
      name: "Windle",
      description:
          "Application mobile destiné au monde du chauffage. Windle est un assistant de dimensionnement, qui propose une interface simple et intuitive pour aider les professionnels du chauffage à choisir les pompes à chaleurs les plus adaptés aux besoins.",
      workType: "Alternant",
      color: Color(0xFFFF515B),
      categories: [
        mockedProjectCategories.firstWhere((element) => element.id == 1),
      ],
      features: [
        ProjectFeature(
            id: 1, name: "Authentification Google/Apple", icon: "flutter"),
        ProjectFeature(
            id: 2, name: "Calcul poussé et estimation de conso", icon: "dart"),
        ProjectFeature(
            id: 3,
            name: "Recherche complexe parmis 200000 PAC",
            icon: "firebase"),
      ],
      githubUrl: "https://test.com",
      watchDemoUrl: "https://test.com",
      assetImages: [
        "assets/projects/images/windle_1.png",
        "assets/projects/images/windle_2.png",
        "assets/projects/images/windle_3.png",
        "assets/projects/images/windle_4.png",
        "assets/projects/images/windle_5.png",
      ]),
  Project(
    id: 2,
    name: "Weather Journey",
    description:
        "Application météo boostée à l'IA. Elle permet de consulter la météo grâce à de la génération d'image basé sur les données météorologiques du lieu défini. Vous pouvez ainsi voir le temps qu'il fait en un clin d'oeil.",
    workType: "Personnel",
    color: Color(0xFF6648FF),
    categories: [
      mockedProjectCategories.firstWhere((element) => element.id == 1),
    ],
    features: [
      ProjectFeature(
          id: 1, name: "Prompt Ingeneering (ChatGPT)", icon: "flutter"),
      ProjectFeature(
          id: 2, name: "Génération d'image (MidJourney)", icon: "dart"),
      ProjectFeature(
          id: 3, name: "Système temps réel (Queuing)", icon: "firebase"),
    ],
    githubUrl: "https://test.com",
    watchDemoUrl: "https://test.com",
    assetImages: [
      "assets/projects/images/weather_journey_1.png",
    ],
  ),
  Project(
    id: 3,
    name: "Vsion Habits Tracker",
    description:
        "Application mobile de suivi d'habitudes. Vsion est un tracker d'habitudes qui permet de suivre vos habitudes quotidiennes et de les visualiser pour vous aider à les maintenir.",
    workType: "Personnel",
    color: Color(0xFF6648FF),
    categories: [
      mockedProjectCategories.firstWhere((element) => element.id == 1),
    ],
    features: [
      ProjectFeature(
          id: 1, name: "Algorythme de recommandation", icon: "flutter"),
      ProjectFeature(
          id: 2, name: "Infrastructure totalement Serverless", icon: "dart"),
    ],
    githubUrl: "https://test.com",
    watchDemoUrl: "https://test.com",
    assetImages: [
      "assets/projects/images/vsion_habit_1.png",
    ],
  ),
  Project(
    id: 4,
    name: "ShopHouse",
    description:
        "Application mobile permettant de gérer sa liste de courses et de les partager avec ses proches. Chaque membre du foyer peut ajouter des produits à la liste de courses mais aussi voter pour les repas de la semaine.",
    workType: "Personnel",
    color: Color(0xFFFDAB53),
    categories: [
      mockedProjectCategories.firstWhere((element) => element.id == 1),
    ],
    features: [
      ProjectFeature(id: 1, name: "Interface UI/UX", icon: "flutter"),
      ProjectFeature(
          id: 2, name: "Application mobile cross-platform", icon: "dart"),
    ],
    githubUrl: "https://test.com",
    watchDemoUrl: "https://test.com",
    assetImages: [
      "assets/projects/images/shophouse_1.png",
    ],
  ),
];
