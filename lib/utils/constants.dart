// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:huy_resume/models/drawer_item_model.dart';
import 'package:huy_resume/utils/app_icons.dart';

import 'page.dart';

const HEADER_TITLE = "NGUYEN NGOC HUY";
const HEADER_SUBTITLE = "SENIOR MOBILE DEVELOPER\n(iOS/Flutter/React Native)";

/* ABOUT */
const Header_Link_1 = "https://www.facebook.com/nguyen.ngoc.huy.2k1";
const Header_Link_2 = "https://github.com/huynguyenngocdev";
const Header_Link_3 = "https://www.linkedin.com/in/huy-nguyen-ngoc/";
const Header_Link_4 = "mailto:huynguyenngoc.dev@gmail.com";

const Contact_Info_Title = "Contact Information";
const Contact_Info_Location = ["Location", "Danang, Vietnam"];
const Contact_Info_Email = ["Email", "huynguyenngoc.dev@gmail.com"];
const Contact_Info_Mobile = ["Mobile Number", "+84355621838"];

const About_Me_Title = "About";
const About_Me_Desc =
    "As an enthusiastic, responsive, passionate, and goal-driven programmer, I am looking to apply my knowledge and want to learn and grow all of my abilities to meet every customer's needs. Furthermore, I usually update and follow the latest tech trends and stacks and attend seminars and meetups."
    "\n\nI'm also looking for a job, so if you need someone who has expertise in mobile/back-end development, or just basically gets in touch and chat, feels free to contact me with these social networks or watch my resume below.";
/* END ABOUT */

/* SKILLS */
const Skills_Title = "SKILLS";
const Skills_1 = [
  "Mobile & Native",
  "Swift (UIKit, SwiftUI, Combine), Objective-C, Flutter/Dart, React Native, Kotlin (basic)"
];
const Skills_2 = [
  "IoT, AI & Realtime",
  "Matter, Thread, BLE, MQTT, WebSocket/WebRTC, OpenCV, MediaPipe, ONNX Runtime, TensorFlow Lite, CoreML"
];
const Skills_3 = [
  "Cloud, Backend & CI/CD",
  "AWS (Cognito, S3, Amplify), Firebase, Node.js/Express, PostgreSQL/MongoDB, GitHub Actions, Fastlane, Jenkins, Docker, Nginx"
];
const Skills_4 = [
  "Architecture & Quality",
  "SOLID, Clean Architecture, MVVM, DI, Unit/UI Test (XCTest, XCUITest, Flutter Test), performance tuning, Agile/Scrum, mentoring"
];
/* END SKILLS */

/* EDUCATION */
const Education_Title = "EDUCATION";
const Education_1 = [
  "Passerelles numériques Vietnam - DanaVTC",
  "Sep 2019  -  Oct 2022",
  "Bachelor of Information Technology\nGPA: 3.8/4"
];

/* END EDUCATION */

/* EXPERIENCE */
const Experience_Title = "WORK EXPERIENCE";

const wInCES = [
  "Code Engine Studio",
  "Jul 2021 - Sep 2021 (Back-End Developer Intern)",
  "Main responsibilities:"
      "\n - Developed RESTful APIs with Node.js/Express for a classroom management platform"
      "\n - Designed data models and implemented authentication (JWT, Google OAuth)"
      "\n - Built upload workflows with Google Drive integration"
      "\n - Wrote API documentation and collaborated with front-end members"
      "\n\nProject link:"
];
const LinkProject_CES = "https://pnv-ces-classwork.herokuapp.com/docs/";

const wInUmbala = [
  "Umbala Metaverse Company",
  "Apr 2022 - Aug 2022 (Front-End Web & Mobile Developer Intern)",
  "Main responsibilities:"
      "\n - Built the mobile version for the company landing page with Flutter"
      "\n - Contributed to internal Flutter products and API integrations"
      "\n - Implemented MetaMask wallet login and camera/storage features"
      "\n\nKey gains:"
      "\n - Practiced SOLID and architecture patterns (MVC, MVP, MVVM, Clean Architecture)"
      "\n - Improved state management skills (Provider/BLoC), DI, deep-linking, and unit testing"
      "\n - Strengthened teamwork and Scrum workflow"
];

const wInDF = [
  "Digital Fortress Company",
  "Sep 2022 - Present (Senior Mobile Developer)",
  "Main responsibilities:"
      "\n - Designed and shipped iOS/macOS/Catalyst apps for Matter smart-home devices using SwiftUI, Combine, and Objective-C"
      "\n - Built commissioning and control flows (QR/manual code, Wi-Fi, Thread, multi-admin, OTA) with realtime attribute subscriptions"
      "\n - Developed Flutter apps with modular Clean Architecture for IoT camera/security products"
      "\n - Integrated BLE onboarding, WebRTC video streaming, MQTT communication, and Firebase analytics/notifications"
      "\n - Implemented AI features with OpenCV, MediaPipe, ONNX Runtime, TensorFlow Lite, and Vision/CoreML"
      "\n - Strengthened app security with TLS pinning, secure storage, anti-tamper checks, and App Attest/DeviceCheck"
      "\n - Built CI/CD pipelines with GitHub Actions, Fastlane, Jenkins, and Nginx to automate build/test/release"
      "\n - Worked directly with overseas clients, mentored interns/juniors, and led Scrum ceremonies for project delivery"
];

const LinkProject_DF =
    "https://github.com/digitalfortress-dev/flutter-boilerplate";

/* END EXPERIENCE */

/* ACHIEVEMENTS */
const Achivements_Title = "ACHIEVEMENTS & CERTIFICATES";
const achievementStartupWheel = [
  "Little Star - In the top 100 of Startup Wheel 2022",
  "July, 2022 - Leader",
  "Little Star is a learning app for children from 3 to 7 years old, focused on listening, reading, and speaking. The project reached Top 100 Startup Wheel 2022."
];
const LinkStartupWheel =
    "https://startupwheel.vn/vi/cong-bo-top-100-startup-wheel-2022-vietnam/";

const achievementYoungTalent = [
  "Young Talent Award - Digital Fortress",
  "2023",
  "Recognized as one of the high-potential engineers for consistent delivery and technical growth."
];
const LinkYoungTalentAward = "/assets/images/achievements/YoungTalentAward.jpg";

const achievementSaoVangCongHien = [
  "Sao Vang Cong Hien Award - Digital Fortress",
  "2024",
  "Awarded for contribution, ownership, and positive impact across projects and team execution."
];
const LinkSaoVangCongHien = "/assets/images/achievements/SaoVangCongHien.jpg";

const achievementMatterTop12 = [
  "Matter Utilities - Top 12",
  "2025",
  "Matter Utilities product entered the Top 12, highlighting product quality and IoT engineering capability."
];
const LinkMatterTop12 =
    "/assets/images/achievements/matter_utilities_top12.png";

const certificateFlutterBootcamp = [
  "Flutter Bootcamp Certificate",
  "2021",
  "Completed the Flutter Bootcamp program and strengthened practical skills in Flutter app development."
];
const LinkFlutterBootcampCertificate =
    "/assets/images/achievements/flutter_bootcamp_certificate.pdf";

const certificateCESInternship = [
  "Code Engine Studio Internship Certificate",
  "2021",
  "Completed internship program with hands-on backend/API experience and strong team collaboration."
];
const LinkCESInternshipCertificate =
    "/assets/images/achievements/internship_certificate.pdf";

const AchievementImageStartupWheel = "";
const AchievementImageYoungTalent =
    "assets/images/achievements/YoungTalentAward.jpg";
const AchievementImageSaoVangCongHien =
    "assets/images/achievements/SaoVangCongHien.jpg";
const AchievementImageMatterTop12 =
    "assets/images/achievements/matter_utilities_top12.png";
const AchievementImageFlutterBootcamp =
    "assets/images/achievements/flutter_bootcamp_certificate.png";
const AchievementImageCESInternship =
    "assets/images/achievements/internship_certificate.png";
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

// ignore: non_constant_identifier_names
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
