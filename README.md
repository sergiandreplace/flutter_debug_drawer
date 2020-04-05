# flutter_debug_drawer

A debug drawer menu for better development. This is an initial release with very few functionalities.

This project is heavily inspired on a similar project for Android (<https://github.com/palaima/DebugDrawer>)

<img  src="https://raw.githubusercontent.com/sergiandreplace/flutter_debug_drawer/master/readme/screenshot.jpg" alt="Screenshot" width="400">

## Getting Started

Include the last version of the library in your `pubspec.yaml`:

```yaml
dependencies:
    flutter_debug_drawer:
```

Now, you can customize your debug drawer adding it to your main application object:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter debug drawer demo',
      builder: DebugDrawerBuilder.build(modules: [
        PlatformModule(),
        MediaQueryModule(),
        PackageModule(),
        SharedPreferencesModule(),
      ]),
      home: MyHomePage(),
    );
  }
}
```

Right now, only PlatformModule, MediaQueryModule, PackageModule, and SharedPreferencesModule are available. More will come soon.
