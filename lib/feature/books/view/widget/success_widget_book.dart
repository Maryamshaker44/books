
import 'package:books/feature/books/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SuccessWidgetBook extends StatelessWidget {
  const SuccessWidgetBook({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              launchUrlString(bookModel.volumeInfo.previewLink);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    bookModel.volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          bookModel.volumeInfo.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
         bookModel.volumeInfo.authors[0],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              "${bookModel.volumeInfo.pageCount.toString()} Pages",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                launchUrlString(bookModel.volumeInfo.previewLink);
              },
              child: const Icon(
                Icons.link_outlined,
                color: Colors.brown,
              ),
            )
          ],
        ),
      ],
    );
  }
}
