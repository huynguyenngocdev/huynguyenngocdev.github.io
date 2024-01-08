// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:huy_resume/models/drawer_item_model.dart';
import 'package:huy_resume/utils/app_icons.dart';

import 'page.dart';

const HEADER_TITLE = "NGUYEN NGOC Huy";
const HEADER_SUBTITLE = "FRESHER MOBILE DEVELOPER\n(Flutter/RN/Swift)";

/* ABOUT */
const Header_Link_1 = "https://www.facebook.com/nguyen.ngoc.huy.2k1";
const Header_Link_2 = "https://github.com/huynguyenngocdev";
const Header_Link_3 = "https://www.linkedin.com/in/nguyen-huy-591b01225";
const Header_Link_4 = "mailto:huynguyenngoc.dev@gmail.com";

const Contact_Info_Title = "Contact Information";
const Contact_Info_Location = ["Location", "Danang, Vietnam"];
const Contact_Info_Email = ["Email", "huynguyenngoc.dev@gmail.com"];
const Contact_Info_Mobile = ["Mobile Number", "0355621838"];

const About_Me_Title = "About";
const About_Me_Desc =
    "As an enthusiastic, responsive, passionate, and goal-driven programmer, I am looking to apply my knowledge and want to learn and grow all of my abilities to meet every customer's needs. Furthermore, I usually update and follow the latest tech trends and stacks and attend seminars and meetups."
    "\n\nI'm also looking for a job, so if you need someone who has expertise in mobile/back-end development, or just basically gets in touch and chat, feels free to contact me with these social networks or watch my resume below.";
/* END ABOUT */

/* SKILLS */
const Skills_Title = "SKILLS";
const Skills_1 = ["Mobile", "Flutter/Dart, UIKit, SwiftUI, React Native"];
const Skills_2 = ["Web", "HTML, CSS, ReactJS, Laravel, Flutter"];
const Skills_3 = ["Automation test", "Cypress, WebdriverIO"];
const Skills_4 = [
  "Others",
  "Unit Test, Firebase, MongoDB, OOP, SOLID, Agile/Scrum, Clean Architecture"
];
/* END SKILLS */

/* EDUCATION */
const Education_Title = "EDUCATION";
const Education_1 = [
  "Passerelles numériques Vietnam - DanaVTC",
  "Sep 2019  -  Oct 2022",
  "Major: : Information Technology\nGPA: 3.8/4"
];

/* END EDUCATION */

/* EXPERIENCE */
const Experience_Title = "WORK EXPERIENCE";

const wInCES = [
  "Code Engine Studio",
  "July, 2021 - September, 2021 (Back-End NodeJS Developer - Full time Intern)",
  "We made a project about a virtual classroom application (with an idea from Google Classroom)."
      "\n Main responsibilities:"
      "\n - Created and developed API with Node.js and MongoDB"
      "\n - Develop function “Login with Google”"
      "\n - Writing the API documentation"
      "\n - Develop function “Upload files to Google Drive”"
      "\n\n Link project here: "
];
const LinkProject_CES = "https://pnv-ces-classwork.herokuapp.com/docs/";

const wInUmbala = [
  "Umbala Metaverse Company",
  "April, 2022 - August, 2022 (Front-End Web & Mobile Developer - Full time intern)",
  "\n Main responsibilities:"
      "\n - Developed the mobile version for the landing page of company"
      "\n - Participated in mobile app development (company internal project) using Flutter"
      "\n - Developed feature login with MetaMask and get the wallet address"
      "\n - Developed feature take a photo and save to mobile phone's storage"
      "\n Achievements and skills gained:"
      "\n - Learned more about OOP, SOLID, Software Architecture(MVC, MVP, MVVM, Clean Architecture), and Design Pattern"
      "\n - Improved the ability to use Flutter ( call API with Retrofit, state management with Provider and BLoC, use DI, deep-link, write unit test,...)"
      "\n - Improved teamwork and Agile Scrum skills"
];

const wInDF = [
  "Digital Fortress Company",
  "September, 2022 - Present (Mobile Developer)",
  "\n Main responsibilities:"
      "\n - Responsible for and developing the entire app(built infrastructure, built UI/UX, developed all features, published to App Store) to control and manage smart devices by Matter protocol with SwiftUI and Objective-C"
      "\n - Worked as a Scum Master to manage the project and team members"
      "\n - Research, understand, and test the implementation of new IoT technologies"
      "\n - Developed an app to manage and control smart devices (ESP32) by BLE, TCP Socket, and WebSocket with Swift (UIkit), using Amazon Cognito to make identity provider and Amazon S3 to manage images"
      "\n - Joined in the process of developing the product of the company by SwiftUI with Swift Package Module, using Google Maps and MapKit to optimize map display, pick locations, and recommend locations"
      "\n - Built a Flutter codebase that follows the clean architecture and made it scalable with a modularization approach"
      "\n - Helped other members get started with SwiftUI and Flutter Boilerplate"
      "\n Achievements and skills gained:"
      "\n - Learned Swift language and Modular Project Structure with (SPM)"
      "\n - Understood more MQTT and used the AWS services(Cognito, Alexa,...)"
      "\n - Improved English skills when meeting 1-1 with client"
      "\n"
];

const LinkProject_DF =
    "https://github.com/digitalfortress-dev/flutter-boilerplate";

/* END EXPERIENCE */

/* ACHIEVEMENTS */
const Achivements_Title = "ACHIEVEMENTS";
const startUpWheel = [
  "Little Star - In the top 100 of Startup Wheel 2022",
  "July, 2022 - Leader",
  "Little Star is an app to help children from 3 to 7 years old learn Vietnamese with listening - reading - speaking skills and watch good videos that have safe content and are useful for the growth of the child.\nRead the full story here."
];
/* END ACHIEVEMENTS */

/* PORTFOLIO */
const Portfolio_Title = "PORTFOLIO";

const pFlutterBoilerplate = [
  "Flutter Boilerplate",
  "6 - 11, October 2022 (Mobile Developer)",
  "A Flutter Boilerplate follows the clean architecture and makes it easy scalable with a modularization approach."
      "\n Main responsibilities:"
      "\n - Setup environment dev, staging and product for boilerplate"
      "\n - Created the code base following the clean architecture and used BloC for state management"
      "\n - Write a document for boilerplate and how to apply Clean Architecture"
      "\n - Created an example"
];
const LinkProjectFlutterBoilerplate =
    "https://github.com/digitalfortress-dev/flutter-boilerplate";

const pLittleStar = [
  "Little Star Application (Graduation Project)",
  "November, 2021 - March, 2022 (Leader - Flutter Mobile Developer)",
  "Little Star is an app to help children from 3 to 7 years old learn Vietnamese with listening - reading - speaking skills and watch good videos that have safe content and are useful for the growth of the child."
      "\n Main responsibilities:"
      "\n - Made a plan, wrote Business Model Canvas, made the slide, and reports"
      "\n - Developed the Flutter mobile app  for kids to practice listening, reading, and speaking skills and a dashboard for parents to check lessons history, time using the app, videos that kids watched"
      "\n - Apply Scrum, manage tasks and progress of team members, held meetings with mentors, and support team members"
      "\n Recognition and Gains:"
      '\n - Top 1 in the "Moment of Trust" contest in Passerelles numériques Vietnam'
      "\n - In the top 100 of Startup Wheel 2022"
];
const LinkProjectLittleStar = "http://little-star-web.herokuapp.com/";

const pTotoroMilkTea = [
  "Totoro Milk Tea Website",
  "May 2021 - June 2021 (Team Leader & Full-Stack Developer)",
  " Main responsibilities:"
      "\n - Assigned tasks to team members"
      "\n - Designed and developed user interface and functions (add to card, upload images, show ads sale off,...) with ReactJS"
      "\n - Developed RESTful API and protecting it by JWT with NodeJS"
      "\n - Handle images in API (convert from base64 to images)"
];
const LinkTotoroMilkTeaWeb = "http://totoromilktea.herokuapp.com";
const LinkTMTSourceWeb = "https://github.com/huynguyenngocdev/TotoroMilkTea";
const LinkTMTSourceAPI = "https://github.com/huynguyenngocdev/TotoroMilkTeaAPI";

const pPNVWeb = [
  "Rebuild Passerelles numériques Vietnam(PNV)",
  "June 2021 - July 2021 (Team Leader & Full-Stack Developer)",
  'This is a project for the "Rebuild the landing page PNV" contest.'
      ' Of course, our website is a FAKE page, it is only used for demonstration when presenting.'
      ' (REAL PAGE of PNV is here: https://www.passerellesnumeriques.org/)'
      " Main responsibilities:"
      "\n - Management and assigned tasks to team members"
      "\n - Developed landing page with ReactJS: "
      "\n   + Implement UI"
      "\n   + Implement API"
      "\n   + Add Facebook messenger customer chat function"
      "\n   + Add Facebook messenger customer chat function"
      "\n   + Handled send email function"
      "\n   + Handled routes"
      "\n   + Handled upload image to API"
      "\n   + Created animation the numbers run when scrolled to"
      "\n   + Review and merge code for team members"
      "\n - Developed API with Laravel:"
      "\n   + Created function upload images to 'imgbb.com'"
      "\n   + Protecting API by Passport"
      "\n   + Handled API endpoint and middleware"
      "\n   + Analyzed and created the database"
      "\n   + Set up for migration the database"
      "\n   + Created controller to CRUD the database and return JSON when API called"
      "\n   + Deploy to serve"
];
const LinkPNVWeb =
    "https://pnv22web-passerellesnumeriques-robusta.netlify.app/";

/* END PORTFOLIO */

final List<DrawerItemModel> DRAWER_LIST = [
  DrawerItemModel(
    icon: AppIcons.person,
    title: "About Me",
    page: PAGE.about,
  ),
  DrawerItemModel(
    icon: AppIcons.lightbulb_outline,
    title: "Skills",
    page: PAGE.skills,
  ),
  DrawerItemModel(
    icon: Icons.menu_book_rounded,
    title: "Education",
    page: PAGE.education,
  ),
  DrawerItemModel(
    icon: AppIcons.pin,
    title: "Experience",
    page: PAGE.experience,
  ),
  DrawerItemModel(
    icon: AppIcons.star,
    title: "Portfolio",
    page: PAGE.portfolio,
  ),
  DrawerItemModel(
    icon: AppIcons.award,
    title: "Achievements",
    page: PAGE.achievements,
  ),
];
