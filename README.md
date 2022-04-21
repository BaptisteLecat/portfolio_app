# Welcome to my Portfolio App!

This project is my personal app to introduce myself. You'll find all you need to know about me and my work. And I think this is a better way than a resume or cover letter.

## What's inside?

I thought this app would be as easy as possible. In the HomePage you can see some stats about my code time and languages I used. Also there are some articles about my missions at work or during my personal experience. For those who want to see my career you can find all you need in the experience section : my education and also my work experiences.

![Clean Architecture](https://portfolio-api.baptistelecat-dev.fr/assets/readme/screen1.png)
![Clean Architecture](https://portfolio-api.baptistelecat-dev.fr/assets/readme/screen2.png)
![Clean Architecture](https://portfolio-api.baptistelecat-dev.fr/assets/readme/screen3.png)

## How it works?

Obviously if you are working in tech you wanted to know how I code this app and what's behind.

### Flutter for the life

In 2020, I started to make some technology monitoring about the Flutter framework. Flutter is created by the Google Company and it's a fully open source cross-platform SDK. The aim of this framework is to make it easier and faster to develop a mobile app. 
But a few month after, I started to run my first **`flutter pub get`** and it was magical. From this time I haven't stopped creating new projects with Flutter.

So ! My app is available on IOS and Android.

#### Architecture
This topic is really hard to deal with because in small projects we don't care about how we structure the code. But in this app I wanted to code it like a showcase of how I work with Flutter.
My choice is to use the separation of concerns precept, I have 3 main folders:

![Clean Architecture](https://portfolio-api.baptistelecat-dev.fr/assets/readme/clean-architecture.png)

-  **Data**
This layer allows you to fetch data requisite in the application. Thus we find in particular the elements allowing the API calls but also potential systems of data : like SQLite. Data is in charge of the serialization and deserialization process, allowing to format data to Objects.
- **Domain**
In order to have relevant data for the UI it's sometimes necessary to emancipate from the raw data returned by the API. Some attributes, properties or methods may only be relevant in the context of the application and therefore have no place within the API. Thus this layer offers entities which reflect the data from the database, which are added the methods and attributes requisite for the work context.
- **Presentation**
This layer consumes the data returned by the Domain layer. All the screens and widgets are contained inside. They are sorted by features so each part of the app is independent.


