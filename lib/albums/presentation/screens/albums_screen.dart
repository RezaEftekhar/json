import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/albums/presentation/bloc/albums_bloc.dart';
import 'package:json_place_holder/albums/presentation/widgets/album_items_widget.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  @override
  void didChangeDependencies() {
    GetIt.I<AlbumsBloc>().add(GetAlbums());
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Albums'),),
      body: BlocBuilder<AlbumsBloc,AlbumsState>(
        builder: (context, state) {
        if(state is GetAllAlbumsCompleted){
          return GridView.builder(
            itemCount: state.albums!.length,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             itemBuilder: (context, index) {
               return AlbumeItemsWidget(item: state.albums![index]);
             },);
        }else if(state is AlbumsLoading){
          return const Center(child: CircularProgressIndicator());
        }else{
          return const SizedBox.shrink();
        }
      },),
    );
  }
}