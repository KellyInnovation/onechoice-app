
# Set Java Version for the Current User environment
(https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x)

* Find Java Versions available:
``` $ /usr/libexec/java_home -V ```
* Set the version for the Current User
``` `export JAVA_HOME=`/usr/libexec/java_home -v <version>` ```
* Use this for FLUTTER to avoid Android SDK error:
``` $ export JAVA_HOME=`/usr/libexec/java_home -v 1.8` ```

## Running a Flutter app
*unfinished


1. Run the emulator of your choice:
``` $ flutter run <emulator> ```
EXAMPLES:
  1. Open the iPhone emulator from Terminal:
  ``` $ open -a Simulator.app ```
  2. W/in VSCode:
  Debug > Start Debugging

2. Flutter *wants* to run the `main.dart` file, usually -> `lib/main.dart`