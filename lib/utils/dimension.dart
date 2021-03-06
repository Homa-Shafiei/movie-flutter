import 'package:flutter/material.dart';

double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double standardSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 36;
  } else
    return MediaQuery.of(context).size.width / 26;
}

double largeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 22;
  } else
    return MediaQuery.of(context).size.width / 14;
}

double xLargeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 18;
  }
  return MediaQuery.of(context).size.width / 6;
}

double xxLargeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 13;
  }
  return MediaQuery.of(context).size.width / 3;
}

double xxxLargeSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 11;
  }
  return MediaQuery.of(context).size.width / 2;
}

double mediumSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 32;
  }
  return MediaQuery.of(context).size.width / 22;
}

double smallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 40;
  } else
    return MediaQuery.of(context).size.width / 30;
}

double xSmallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 48;
  } else
    return MediaQuery.of(context).size.width / 38;
}

double xxSmallSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 90;
  } else
    return MediaQuery.of(context).size.width / 80;
}

double iconSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 34;
  } else
    return MediaQuery.of(context).size.width / 22;
}

double iconSizeLarge(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 28;
  } else
    return MediaQuery.of(context).size.width / 18;
}
double iconSizeXLarge(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 26;
  } else
    return MediaQuery.of(context).size.width / 16;
}

double iconSizeXXLarge(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 24;
  } else
    return MediaQuery.of(context).size.width / 14;
}

//text size
double headline2Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 20;
  } else
    return MediaQuery.of(context).size.width / 10;
}
double headline3Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 22;
  } else
    return MediaQuery.of(context).size.width / 12;
}

double headline4Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 27;
  } else
    return MediaQuery.of(context).size.width / 17;
}

double headline5Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 27;
  } else
    return MediaQuery.of(context).size.width / 16;
}

double headline6Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 32;
  } else
    return MediaQuery.of(context).size.width / 21;
}

double subTitle1Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 36;
  } else
    return MediaQuery.of(context).size.width / 26;
}

double subTitle2Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 36;
  } else
    return MediaQuery.of(context).size.width / 27;
}

double bodyText1Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 35;
  } else
    return MediaQuery.of(context).size.width / 25;
}

double bodyText2Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 36;
  } else
    return MediaQuery.of(context).size.width / 27;
}

double caption1Size(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 36;
  } else
    return MediaQuery.of(context).size.width / 31;
}

double overLineSize(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return MediaQuery.of(context).size.width / 41;
  } else
    return MediaQuery.of(context).size.width / 36;
}

