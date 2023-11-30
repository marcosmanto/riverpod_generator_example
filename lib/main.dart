import 'dart:async';
import 'dart:ui';

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
      scrollBehavior: MyCustomScrollBehavior(),
      home: Home(),
    );
  }
}

@riverpod
Future<List<String>> fetchItems(FetchItemsRef ref, {required int page}) async {
  // keeps state for 5 minutes
  final keepAliveLink = ref.keepAlive();
  Timer(Duration(minutes: 5), () {
    // after 5 minutes the state if not used is destroyed
    keepAliveLink.close();
  });

  await Future.delayed(const Duration(seconds: 3));

  if (page > 2) return ['a', 'b'];

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
      body: ListView.builder(
        itemBuilder: (context, index) {
          final page = index ~/ 50;
          final itemIndexOnPage = index % 50;
          final pageValue = ref.watch(fetchItemsProvider(page: page));

          return pageValue.when(
            data: (items) {
              // stop adding items when the index of the item on the page is above the items fetched count
              if (itemIndexOnPage >= items.length) return null;
              return Text(items[itemIndexOnPage]);
            },
            error: (error, stackTrace) => Text('err $error'),
            loading: () {
              // only generate one Loading text within a page. If not the first item on the page return null
              if (itemIndexOnPage != 0) return null;
              return Text('Loading...');
            },
          );
        },
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
