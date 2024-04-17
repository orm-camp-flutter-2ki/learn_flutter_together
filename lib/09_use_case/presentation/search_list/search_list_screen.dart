import 'package:flutter/material.dart';
import 'package:learn_flutter_together/09_use_case/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

import '../photo_detail/photo_detail_screen.dart';
import 'components/image_card_widget.dart';

class SearchListScreen extends StatefulWidget {
  const SearchListScreen({super.key});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 1'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _queryTextEditingController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: '검색어',
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  final query = _queryTextEditingController.text;
                  viewModel.onSearch(query);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GridView.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: state.photos
                          .map(
                            (photo) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PhotoDetailScreen(photo: photo),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: photo.id,
                                child: ImageCardWidget(photo: photo),
                              ),
                            ),
                          )
                          .toList(),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
