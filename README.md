A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.


  CREATING OWN LIBS AND PACKAGES
  1. API PACKAGES. Recomended create own lib in /lib/src in case use as API.
  2. Own libs located in /lib/src/ can be imported only as a package: ( import 'package:dart_application_2/src/my_add.dart'; ) (calc_API.dart)
  3. We can export some func or all functionality of libs using ( export 'src/my_add.dart'; ) in file API(calc_API.dart)
  4. We can import it as package dependency in other Projects:
		in file pubspec.yaml  add
     		dependencies:
	     		cacl_API:
		    		path: ../cacl_API

	