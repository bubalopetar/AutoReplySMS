import 'flavors.dart';
import '../main.dart' as runner;

void main() {
  F.appFlavor = Flavor.debuging;
  runner.main();
}
