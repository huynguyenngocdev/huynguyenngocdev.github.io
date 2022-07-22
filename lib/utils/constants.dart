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
    "\n\nI'm also looking for a job, so if you need someone who has expertise in mobile/back-end development, or just basically gets in touch and chat, feels free to contact me with these social networks below.";
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

/* MILESTONES */
const Milestone_Title = "WORK EXPERIENCE";
const mClinicaGoes1stFlutterPHEvent = [
  "mClinica goes to Flutter Philippines’ 1st ever study jam",
  "September 25, 2019",
  "A Medium article I wrote for Flutter Philippines's 1st study jam for its upcoming hackathon event. Read all the details here."
];
const digitalLogbookEDSS = [
  "With mobile app, pharmacy logbooks to go digital by 2020",
  "November 4, 2018",
  "A news article from Rappler explaining the positive effects of implementing a digitized prescription platform here in Philippines. To know more, read this article below."
];
const fdaToUseEDSS = [
  "FDA to use mClinica app to monitor prescriptions",
  "October 11, 2018",
  "A news article from BusinessWorld about the partnership of mClinica and FDA (Food and Drug Administration) of implementing a mobile app named, eDSS (Electronic Drug Safety System). Read all about it here."
];
/* MILESTONES */

/* ACHIEVEMENTS */
const Achivements_Title = "ACHIEVEMENTS";
const startUpWheel = [
  "Little Star - In the top 100 of Startup Wheel 2022",
  "July, 2022 - Leader",
  "Little Star is an app to help children from 3 to 7 years old learn Vietnamese with listening - reading - speaking skills and watch good videos that have safe content and are useful for the growth of the child.\nRead the full story here."
];

/* ACHIEVEMENTS */

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
