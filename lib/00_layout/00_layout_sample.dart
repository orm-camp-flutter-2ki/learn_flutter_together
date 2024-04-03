import 'package:flutter/material.dart';
import 'package:learn_flutter_together/00_layout/data_source/idol_data_source.dart';
import 'package:learn_flutter_together/00_layout/repository/idol_repository.dart';
import 'package:learn_flutter_together/00_layout/repository/idol_repository_impl.dart';

import 'component/info_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LayoutSample(
        idolRepository: IdolRepositoryImpl(
          IdolDataSource(),
        ),
      ),
    );
  }
}

// main UI
class LayoutSample extends StatefulWidget {
  final IdolRepository idolRepository;

  const LayoutSample({
    super.key,
    required this.idolRepository,
  });

  @override
  State<LayoutSample> createState() => _LayoutSampleState();
}

class _LayoutSampleState extends State<LayoutSample> {
  final Set<int> _favoriteIdolIds = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('연습'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: widget.idolRepository
              .getIdols()
              .map((idol) => InfoCard(
                    idol: idol,
                    isFavorite: _favoriteIdolIds.contains(idol.id),
                    onFavoritePressed: (idol) {
                      setState(() {
                        if (_favoriteIdolIds.contains(idol.id)) {
                          _favoriteIdolIds.remove(idol.id);
                        } else {
                          _favoriteIdolIds.add(idol.id);
                        }
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
