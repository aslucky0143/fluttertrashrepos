import 'package:flutter/material.dart';

class LibFeedBack extends StatelessWidget {
  const LibFeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.note),
              hintText: 'Write Your FeedBack Here',
              labelText: 'FeedBack',
            ),
            validator: (String? value) {
              return (value != null && value.contains('@'))
                  ? 'Do not use the @ char.'
                  : null;
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.abc),
          style: const ButtonStyle(),
        )
      ],
    );
  }
}
