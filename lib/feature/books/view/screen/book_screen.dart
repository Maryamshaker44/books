import 'package:books/feature/books/cubit/book_cubit.dart';
import 'package:books/feature/books/data/book_data.dart';
import 'package:books/feature/books/view/widget/custom_app_bar.dart';
import 'package:books/feature/books/view/widget/success_widget_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit(BookData())..getDataCubit(),
      child: Scaffold(
        appBar: CustomAppBar(title: "Books"),
        body: BlocBuilder<BookCubit, BookState>(
          builder: (context, state) {
            if (state is BookSuccess) {
              return GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 24,
                childAspectRatio: 0.5,
                children: List.generate(state.model.length, (index) {
                  return SuccessWidgetBook(bookModel:state.model[index]);
                }),
              );
            } else if (state is BookLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is BookError) {
              return Center(
                child: Text(state.error),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
