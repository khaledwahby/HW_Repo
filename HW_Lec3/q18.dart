void main() {
  /*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
  */

  Map<String, String?> env = {
    'APP_ENV': 'prod',
    'DB_HOST': null,
    'LOG_LEVEL': 'debug',
  };

  String appEnv = env['APP_ENV'] ?? 'dev';
  String dbHost = env['DB_HOST'] ?? 'localhost';
  String logLevel = env['LOG_LEVEL'] ?? 'info';

  print(appEnv.toUpperCase());
  print(dbHost.toUpperCase());
  print(logLevel.toUpperCase());

  if (appEnv == 'prod') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
