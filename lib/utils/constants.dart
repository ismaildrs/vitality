import 'package:intl/intl.dart';

class Constants {
  static int darkTheme = 0xff181818;
  static int darkBlueTheme = 0xff005CE4;
  static int blueTheme = 0xff0065FB;
  static int lightBlueTheme = 0xffC6DDFF;
  static int darkGreyTheme = 0xffEFEFEF;
  static int greyTheme = 0xffF7F7F7;
  static int lightGreyTheme = 0xffF9F9F9;

  static double padding = 15;
  static double borderRadius = 7;

  static String getFormattedDate() {
    return DateFormat('kk:mm').format(DateTime.now());
  }
}
