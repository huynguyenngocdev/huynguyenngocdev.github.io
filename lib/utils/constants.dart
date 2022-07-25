// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:huy_resume/models/drawer_item_model.dart';
import 'package:huy_resume/utils/app_icons.dart';

import 'page.dart';

const HEADER_TITLE = "NGUYEN NGOC Huy";
const HEADER_SUBTITLE = "FRESHER FLUTTER DEVELOPER";

/* ABOUT */
const Header_Link_1 = "https://www.facebook.com/nguyen.ngoc.huy.2k1";
const Header_Link_2 = "https://github.com/huynguyenngocdev";
const Header_Link_3 = "https://www.linkedin.com/in/nguyen-huy-591b01225";
const Header_Link_4 = "mailto:huynguyenngoc.dev@gmail.com";

const Contact_Info_Title = "Contact Information";
const Contact_Info_Location = ["Location", "Danang, Vietnam"];
const Contact_Info_Email = ["Email", "huynguyenngoc.dev@gmail.com"];
const Contact_Info_Mobile = ["Mobile Number", ""];

const About_Me_Title = "About";
const About_Me_Desc =
    "As an enthusiastic, responsive, passionate, and goal-driven programmer, I am looking to apply my knowledge and want to learn and grow all of my abilities to meet every customer's needs. Furthermore, I usually update and follow the latest tech trends and stacks and attend seminars and meetups."
    "\n\nI'm also looking for a job, so if you need someone who has expertise in mobile/back-end development, or just basically gets in touch and chat, feels free to contact me with these social networks or watch my resume below.";
/* ABOUT */

/* SKILLS */
const Skills_Title = "SKILLS";
const Skills_1 = ["Mobile", "Flutter/Dart, React Native"];
const Skills_2 = ["Web", "HTML, CSS, ReactJS, Laravel, Flutter"];
const Skills_3 = ["Automation test", "Cypress, WebdriverIO"];
const Skills_4 = [
  "Others",
  "Unit Test, Firebase, MongoDB, OOP, SOLID, Agile/Scrum"
];
/* SKILLS */

/* EDUCATION */
const Education_Title = "EDUCATION";
const Education_1 = [
  "Passerelles numériques Vietnam - DanaVTC",
  "Sep 2019  -  Oct 2022",
  "Major: : Information Technology\nGPA: 3.46/4"
];

/* EDUCATION */

/* EXPERIENCE */
const Experience_Title = "WORK EXPERIENCE";

const wInCES = [
  "Code Engine Studio",
  "July 12, 2021 - September 3, 2021 (Back-End NodeJS Developer - Full time Intern)",
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
  "April 4, 2022 - August, 28, 2022 (Front-End Web & Mobile Developer - Full time intern)",
  "\n Main responsibilities:"
      "\n - Developed the mobile version of the website http://umbala.io/"
      "\n - Participated in mobile app development (company internal project) using Flutter"
      "\n - Developed feature login with MetaMask and get the wallet address"
      "\n Developed feature login with MetaMask and get the wallet address"
      "\n - Learned more about OOP, SOLID, Software Architecture(MVC, MVP, MVVM, Clean Architecture), and Design Pattern"
      "\n - Improved the ability to use Flutter ( call API with Retrofit, state management with Provider and BLoC, use DI, deep-link, write unit test,...)"
      "\n - Improved teamwork and Agile Scrum skills"
];
/* EXPERIENCE */

/* ACHIEVEMENTS */
const Achivements_Title = "ACHIEVEMENTS";
const startUpWheel = [
  "Little Star - In the top 100 of Startup Wheel 2022",
  "July, 2022 - Leader",
  "Little Star is an app to help children from 3 to 7 years old learn Vietnamese with listening - reading - speaking skills and watch good videos that have safe content and are useful for the growth of the child.\nRead the full story here."
];
/* ACHIEVEMENTS */

/* PORTFOLIO */
const Portfolio_Title = "PORTFOLIO";

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

/* PORTFOLIO */

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
