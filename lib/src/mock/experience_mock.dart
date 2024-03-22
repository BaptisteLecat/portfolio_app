import 'package:portfolio_app/src/features/experiences/domain/entities/experience.dart';

final mockedExperiences = [
  Experience(
    id: 4,
    title: "Lead Flutter / Google Cloud Platform Junior",
    description: """
Responsable de la migration du Système d'Information existant vers le Cloud (Google Cloud Platform).
- Conteneurisation de l'existant
- Mise en place des services tels que : 
 - Cloud Run
 - Artifact Registry
 - Cloud Functions
 - Firebase AUTH
- Monitoring, Tracing et Alerting
- Gestion des droits et de la sécurité

En tant que Lead Tech Flutter je suis en charge de l'équipe de développement et des relations entre le métier et la technique.

Enfin j'ai pu mettre en place une plateforme de CI/CD Self Hosted avec Gitlab pour permettre le déploiement dans le Cloud mais aussi sur AppStore et Google Play Store.""",
    startYear: "2023",
    endYear: "2024",
    city: "Nantes",
    country: "France",
    company: "Windle",
    salary: "45k€",
    time: "7 m - current",
    workType: "Hybrid",
  ),
  Experience(
    id: 3,
    title: "Developpeur (Symfony, Flutter) & Chef de Projet Junior",
    description:
        """Chargé du développement de projet interne au groupe d'entreprise WeTeam. Je suis amené à gérer des équipes sur des projet de développement d'application en Flutter, ainsi que la partie Back-End en Symfony.
En tant que chef de projet (SCRUM) j'élabore des Users Stories, planifie les Sprints et m'assure de l'échéance des livraisons.""",
    startYear: "2022",
    endYear: "2023",
    city: "Nantes",
    country: "France",
    company: "Windle",
    salary: "40k€",
    time: "1 y 1 m",
    workType: "Hybrid",
  ),
  Experience(
    id: 2,
    title: "Developpeur Flutter / API Symfony",
    description:
        """En charge du développement de l'application mobile Flutter. Elaboration d'interface intuitives et de composant logiciels.
Développement de l'API REST en Symfony avec API Platform.""",
    startYear: "2021",
    endYear: "2022",
    city: "Nantes",
    country: "France",
    company: "Windle",
    salary: "35k€",
    time: "1 y 2 m",
    workType: "On site",
  ),
  Experience(
    id: 1,
    title: "Developpeur FullStack PHP",
    description:
        """En charge du développement de l'application web en PHP. Elaboration d'interface intuitives et de composant logiciels.""",
    startYear: "2021",
    endYear: "2021",
    city: "Saint-Herblain",
    country: "France",
    company: "IP Developpement",
    salary: "30k€",
    time: "2 m",
    workType: "Hybrid",
  ),
  Experience(
    id: 0,
    title: "Employé Commercial",
    description:
        """Chargé des rayons BAZAR comprenant aussi les rayons informatiques:
- Mise en rayon des produits
- Conseils des clients
- Lancement des promos et organisation des rayons""",
    startYear: "2020",
    endYear: "2020",
    city: "Montoir de Bretagne",
    country: "France",
    company: "Super U",
    salary: "20k€",
    time: "2 m",
    workType: "On site",
  ),
];
