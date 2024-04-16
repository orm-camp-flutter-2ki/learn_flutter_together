import 'package:flutter/material.dart';
import 'package:learn_flutter_together/08_debounce/presentation/photo_detail/photo_detail_screen.dart';
import 'package:learn_flutter_together/08_debounce/presentation/search_list/components/image_card_widget.dart';
import 'package:learn_flutter_together/08_debounce/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({super.key});

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
            onChanged: (value) {
              viewModel.onSearch(value);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: '검색어',
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
