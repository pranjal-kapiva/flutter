import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? const Icon(
                    Icons.star,
                    size: 20,
                  )
                : const Icon(
                    Icons.star_border,
                    size: 20,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: 20,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? const Icon(
                    Icons.star,
                    size: 20,
                  )
                : const Icon(
                    Icons.star_border,
                    size: 20,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: 20,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? const Icon(
                    Icons.star,
                    size: 20,
                  )
                : const Icon(
                    Icons.star_border,
                    size: 20,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: 20,
          ),
        ),
      ],
    );
  }
}
