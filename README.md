# Welcome to my Portfolio App

This project is my personal app to introduce myself. You'll find all you need to know about me and my work. And I think this is a better way than a resume or cover letter.

![App Onboarding](/.github/assets/app_onboard.png?raw=true "App Onboarding")


## Available on the Play Store

<a href="https://play.google.com/store/apps/details?id=com.baptistelecat.portfolioapp&pcampaignid=web_share"><img src="https://github.com/BaptisteLecat/baptistelecat/assets/60200125/596d6840-5979-4a4b-a598-f975b3ff5922" alt="Play Store" width="40"/></a>

## What's inside?

Welcome to my portfolio application, a platform where I share with you my journey and skills in the world of computer development. As a junior architect passionate about Flutter technologies and Google Cloud Platform, I invite you to discover the projects that have marked my career.

### A Personalized Experience

Navigate through an elegant and intuitive interface that reflects my professional journey, from my first steps as a commercial employee to my current position as a lead Flutter developer and Google Cloud Platform expert.

### My Technical Skills

I present to you a range of my skills, from expertise in mobile development with Flutter to proficiency in Firebase, not to mention API design with Symfony and NestJS. This application is a reflection of my commitment to continuous integration and efficient deployment.

### Project Portfolio

Explore my portfolio showcasing my applications, demonstrating my ability to overcome technical challenges in various development environments. Each project is a testament to my passion and determination to create innovative solutions.

### Easy Contact

I offer you the possibility to contact me directly via the application to discuss collaboration opportunities, talk about your needs, or simply to learn more about my expertise.

## How it works?

Obviously if you are working in tech you wanted to know how I code this app and what's behind.

### Flutter for the life

In 2020, I started to make some technology monitoring about the Flutter framework. Flutter is created by the Google Company and it's a fully open source cross-platform SDK. The aim of this framework is to make it easier and faster to develop a mobile app.
But a few month after, I started to run my first **`flutter pub get`** and it was magical. From this time I haven't stopped creating new projects with Flutter.

So ! My app is available on IOS and Android.

#### Architecture

This topic is really hard to deal with because in small projects we don't care about how we structure the code. But in this app I wanted to code it like a showcase of how I work with Flutter.
My choice is to use the separation of concerns precept, I have 3 main folders:

![Clean Architecture](/.github/assets/clean_architecture.png?raw=true "Clean Architecture")

- **Data**
This layer allows you to fetch data requisite in the application. Thus we find in particular the elements allowing the API calls but also potential systems of data : like SQLite. Data is in charge of the serialization and deserialization process, allowing to format data to Objects.
- **Domain**
In order to have relevant data for the UI it's sometimes necessary to emancipate from the raw data returned by the API. Some attributes, properties or methods may only be relevant in the context of the application and therefore have no place within the API. Thus this layer offers entities which reflect the data from the database, which are added the methods and attributes requisite for the work context.
- **Presentation**
This layer consumes the data returned by the Domain layer. All the screens and widgets are contained inside. They are sorted by features so each part of the app is independent.

## Automated Deployment

As you know my app is available on IOS and Android. So I have to deploy it on the App Store and Google Play Store. I use Fastlane to automate the deployment process.
Because I want to learn more about the way to do it well, I started learning the Github Workflow and Github Actions. I have a dedicated workflow for the deployment of my app.

### The Workflow

Basically I have 2 branches in my repository:
-**main** : This is the branch where the current version of the app is available. It's the production branch.
-**develop** : This is the branch where I work on the app. It's the development branch.

To start working on a new feature, I create a new branch from the develop branch. When the feature is done, I merge the branch into the develop branch. A Github Action is triggered when a new commit is pushed to the develop branch. This action will run the tests to ensure that the app is working well.

When I want to deploy a new version of the app, I have to create a new release on Github. I have a dedicated script to do it. This script will create a new tag with the version number by using a semantic versioning system, thanks to semver Github Action. Then it will create a new release with the tag. The Github Action will be triggered when a new release is created. This action will build the app and deploy it on the App Store and Google Play Store in BETA / INTERNAL TESTING mode.

After that a Pull Request is created to merge the release branch into the main branch. This PR will trigger a new Github Action to deploy the app on the App Store and Google Play Store in PRODUCTION mode.

You can find the Github Actions in the **`.github/workflows`** folder. And a documentation about the CI/CD Setup in the **`.github/CICD_SETUP.md`** file.

## How to run the app?

### Prerequisites

- **Flutter** : You can follow the instructions on the [official website](https://flutter.dev/docs/get-started/install) to install Flutter on your machine.
- **Android Studio** : You can follow the instructions on the [official website](https://developer.android.com/studio) to install Android Studio on your machine.
- **Xcode** : You can follow the instructions on the [official website](https://developer.apple.com/xcode/) to install Xcode on your machine.

### Run the app

- Clone the repository

```bash
git clone
```

- Go to the project directory

```bash
cd portfolio_app
```

- Get the dependencies

```bash
flutter pub get
```

- Run the app

```bash
flutter run
```
