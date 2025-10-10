class ConversionUtils {
  ConversionUtils._(); // Private constructor to prevent instantiation

  static double fahrenheitToCelsius(double toConvert) {
    return (toConvert - 32) / 1.8;
  }

  static double milesToKilometers(double toConvert) {
    return toConvert * 1.609344;
  }

  static double cupsToDeciliters(double toConvert) {
    return toConvert * 2.365882365;
  }
}