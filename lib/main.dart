import 'package:password_generator/app/view/app.dart';
import 'package:password_generator/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new);
}
