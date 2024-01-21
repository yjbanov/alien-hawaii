
import 'package:flutter/material.dart';

import 'model.dart';
import 'wiki.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget(this.story, { super.key });

  final Story story;

  Widget _buildSectionWidget(Section section) => switch(section) {
    Heading() => _buildHeadingWidget(section),
    Paragraph() => _buildParagraphWidget(section),
  };

  WikiTitle _buildHeadingWidget(Heading heading) {
    return WikiTitle(heading.text, level: TitleLevel.values[heading.level]);
  }

  WikiParagraph _buildParagraphWidget(Paragraph paragraph) {
    return WikiParagraph(paragraph.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(story.title),
      ),
      body: SelectionArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                width: 800,
                child: ListView(
                  cacheExtent: 10000,
                  children: <Widget>[
                    for (final Section section in story.sections)
                      _buildSectionWidget(section),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
