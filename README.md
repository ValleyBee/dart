# Lessons of Dart
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, `lib/src`, `bin/src` and example unit test in `test/`.


# CALC
  #### CREATING OWN LIBS AND PACKAGES
  1. API PACKAGES. Recomended create own lib in /lib/src in case use as API.
  2. Own libs located in /lib/src/ can be imported only as a package: ( import 'package:dart_application_2/src/my_add.dart'; ) (calc_API.dart)
  3. We can export some func or all functionality of libs using ( export 'src/my_add.dart'; ) in file API (calc_API.dart)
  4. We can import it as package dependency in other Projects:
		in file pubspec.yaml  add
     		dependencies:
	     		cacl_API:
		    		path: ../cacl_API

# LESSON14
 #### GENERATING FUNCTION SYNC & ASYNC

  Synchronous Generator in Dart
 The synchronous generator returns an iterable object i.e. it returns the collection of values, or “elements”, that can be accessed sequentially.

 #### Asynchronous Generator in Dart
The asynchronous generator returns a stream object. A Stream provides a way to receive a sequence of events. Each event is either a data event, also called an element of the stream, or an error event, which is a notification that something has failed. 

	