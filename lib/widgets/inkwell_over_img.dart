import 'package:flutter/material.dart';

class InkWellOverImg extends StatelessWidget {
  const InkWellOverImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(1, 4),
                  ),
                ],
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset('assets/images/1.jpg'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                            maxLines: 2,
                            '«Пропала грамота» — український радянський художній фільм кінорежисера Бориса Івченка'),
                        RichText(
                          text: TextSpan(
                            children: <InlineSpan>[
                              const TextSpan(
                                text: 'Дата випуску: ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              WidgetSpan(
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.blue, Colors.yellow],
                                    ).createShader(bounds);
                                  },
                                  child: const Icon(
                                    Icons.flag,
                                    color: Colors.white,
                                    size: 60.0,
                                  ),
                                ),
                                alignment: PlaceholderAlignment.middle,
                              ),
                              const TextSpan(
                                text: ' 1984 (Україна)',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
