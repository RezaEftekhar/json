import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/Features/photos/presentation/bloc/photos_bloc.dart';
import 'package:json_place_holder/Features/photos/presentation/widgets/photo_items_widget.dart';

class PhotosScreen extends StatefulWidget {
  const PhotosScreen({super.key});

  @override
  State<PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends State<PhotosScreen> {
  @override
  void didChangeDependencies() {
    GetIt.I<PhotosBloc>().add(GetAllPhotos());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
      ),
      body: BlocBuilder<PhotosBloc, PhotosState>(
        builder: (context, state) {
          if (state is GetAllPhotosCompleted) {
            return ListView.builder(
              itemCount: state.photos!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return PhotoItemsWidget(item: state.photos![index]);
              },
            );
          } else if (state is PhotosLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
