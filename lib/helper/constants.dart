import 'package:flutter/material.dart';

const Color intenseGray = Color(0xFFc2c2c2);

const mainColorDarkBlue = Color(0xff19002D);
const mainColorGreen = Color(0xff00BC96);
const mainColorRed = Color(0xffEA5840);

const reducedColorGreen = Color(0xffE0F7F2);

const Color simpleGray = Color(0xfff5f5f5);
const progressColor = Color(0xff8ce0d7);
const containerBorderColor = Color(0xffCECECE);

var librayContainerColor = Color(0xffA2A2A2).withAlpha(10);

var simpleBackgroundContainerColor = Color(0xffA2A2A2).withAlpha(10);

const timeagoColor = Color(0xff9C9C9C);
const authorNameColor = Color(0xffA9A9A9);
const genreTextColor = Color(0xffEA5840);

const addressInfoColor = Color(0xff979797);

const userNameColor = Color(0xff000000);

const buttonBorderColor = Color(0xff707070);
const buttonTextColor = Color(0xff0A0808);

const proposalBookAuthorColor = Color(0xff8D8D8D);

const pubBorderColor = Color(0xff979797);

//HOME

var bottomNaviagtionColor = Color(0xffA2A2A2);

//Library Colors

const librayUserNameColor = Color(0xff1A022E);
const librayaContactColor = Color(0xff9D9D9D);
const libraryProfileContactColor = Color(0xff050505);
const libraryFollowButtonTextColor = Color(0xffEBEBEB);

//PUBLICATION

const libraryPublicationColor = Color(0xff0D0F0E);

//REGISTRATION

const passwordContainerColor = Color(0xffF6F6F6);

//STYLES

getProgressColor(percent) {
  return (percent < 30)
      ? Colors.redAccent.withOpacity(0.7)
      : (percent >= 30 && percent < 60)
          ? Colors.orange.withOpacity(0.5)
          : Color(0xff8ce0d7);
}
