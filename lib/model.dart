final class Story {
  factory Story(String title, String route, List<Object> data) {
    final List<Section> sections = data.map<Section>((final Object data) {
      data as Map<String, Object?>;
      final String? type = data['type'] as String?;

      return switch(type) {
        'heading' => Heading(data),
        'paragraph' || _ => Paragraph(data),
      };
    }).toList();

    return Story._(title, route, sections);
  }

  Story._(this.title, this.route, this.sections);

  final String title;
  final String route;
  final List<Section> sections;
}

sealed class Section {
  Section(Map<String, Object?> data) : text = data['text'] as String;

  final String text;
}

final class Heading extends Section {
  Heading(super.data) : level = data['level'] as int? ?? 1;

  final int level;
}

final class Paragraph extends Section {
  Paragraph(super.data);
}
