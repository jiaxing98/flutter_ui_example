import 'package:flutter/material.dart';

class HighlightPaintings extends StatefulWidget {
  final List<Map> paintings;

  const HighlightPaintings({
    super.key,
    required this.paintings,
  });

  @override
  State<HighlightPaintings> createState() => _HighlightPaintingsState();
}

class _HighlightPaintingsState extends State<HighlightPaintings> {
  PageController pageController = PageController(viewportFraction: 0.7);
  double pageOffset = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(
            'Highlight Paintings',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 400.0,
          padding: const EdgeInsets.only(bottom: 30.0),
          child: PageView.builder(
            itemCount: widget.paintings.length,
            controller: pageController,
            itemBuilder: (context, i) => Transform.scale(
              scale: 1,
              child: Container(
                padding: const EdgeInsets.only(right: 20.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        widget.paintings[i]['image'],
                        height: 370.0,
                        fit: BoxFit.cover,
                        alignment: Alignment(-pageOffset.abs() + i, 0),
                      ),
                    ),
                    Positioned(
                      left: 10.0,
                      right: 10.0,
                      bottom: 20.0,
                      child: Text(
                        widget.paintings[i]['name'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
