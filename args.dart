// #!/usr/bin/env dart

void hello() {
  print('Hello World!');
}

void name(String name) {
  print(name.toUpperCase());
}

void listOptions() {
  print('--hello,   -o                        - Print Hello World!');
  print('--name,    -n [--name YOUR NAME]     - Print name!');
  print('--version, -v                        - Get version');
}

void main(List<String> args) {
  if (args.length > 0) {
    for (var i = 0; i < args.length; i++) {
      if (args[i] == '--hello' || args[i] == '-o') {
        hello();
      }
      if (args[i] == '--name' || args[i] == '-n') {
        name(args[i + 1]);
      }
      if (args[i] == '--version' || args[i] == '-v') {
        print('Test Dart Lang! :)');
      }
    }
    return;
  }
  listOptions();
}
