import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
String label(LabelRef ref) => 'Hello world';

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Home(),
    );
  }
}

@riverpod
Future<List<String>> fetchItems(FetchItemsRef ref, {required int page}) async {
  await Future.delayed(const Duration(seconds: 3));
  return List.generate(50, (index) => 'Hello in page $page, item $index');
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite scrolling'),
      ),
      body: Container(),
    );
  }
}
