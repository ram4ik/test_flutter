// Import the test package and Counter class
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_delete_me/counter.dart';
import 'package:test_flutter_delete_me/main.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });


  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));

    // Create the Finders.
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to verify
    // that the Text widgets appear exactly once in the widget tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });

  testWidgets('finds a Text widget', (WidgetTester tester) async {
  // Build an app with a Text widget that displays the letter 'H'.
    await tester.pumpWidget(MyApp());

    // Find a widget that displays the letter 'H'.
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);
  });

  });
}