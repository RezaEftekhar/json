import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:json_place_holder/users/presentation/bloc/user_bloc.dart';
import 'package:json_place_holder/users/presentation/widgets/user_items_widget.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  void didChangeDependencies() {
    GetIt.I<UserBloc>().add(GetAllUsers());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is GetAllUsersCompleted) {
            return ListView.builder(
              itemCount: state.users!.length,
              itemBuilder: (context, index) {
                return UserItemsWidget(item: state.users![index]);
              },
            );
          } else if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
