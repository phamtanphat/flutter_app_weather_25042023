class ThrowableUtil {

  static String parserThrowableFromJson(Map<String, dynamic> json) {
    // Example: {cod: 404, message: city not found}
    return json["message"] ??= "";
  }
}