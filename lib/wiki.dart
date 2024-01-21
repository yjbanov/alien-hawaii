import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';

class WikiParagraph extends StatelessWidget {
  const WikiParagraph(this.text, { super.key });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(text),
    );
  }
}

enum TitleLevel {
  small,
  medium,
  large,
}

extension TitleLevelExtension on TitleLevel {
  TextStyle fromTheme(TextTheme textTheme) {
    switch (this) {
      case TitleLevel.small:
        return textTheme.titleSmall!;
      case TitleLevel.medium:
        return textTheme.titleMedium!;
      case TitleLevel.large:
        return textTheme.titleLarge!;
    }
  }
}

class WikiTitle extends StatelessWidget {
  const WikiTitle(this.text, { this.level = TitleLevel.large, super.key });

  final String text;
  final TitleLevel level;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        text,
        style: level.fromTheme(theme.textTheme),
      ),
    );
  }
}

class WikiLink extends StatelessWidget {
  const WikiLink({ required this.title, required this.url, super.key });

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      builder: (context, followLink) {
        return TextButton(
          onPressed: () {
            // TODO: dunno what the effect of followLink is, but the tutorial
            //       says use it.
            followLink!();
            context.go(url);
          },
          child: Text(title, style: const TextStyle(color: Colors.blue)),
        );
      }
    );
  }
}
