import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'hawaii_wiki.dart';
import 'model.dart';

import 'data_koas_adventures.json.dart';
import 'data_lilo_in_space.json.dart';
import 'data_star_of_aloha.json.dart';
import 'data_the_lost_archipelago_of_stardust.json.dart';
import 'data_whispers_of_the_cosmic_moana.json.dart';
import 'story.dart';
import 'wiki.dart';

final List<Story> stories = <Story>[
  koasAdventures,
  liloInSpace,
  starOfAloha,
  theLostArchipelagoOfStardust,
  whispersOfTheCosmicMoana,
];

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(
        title: 'Alien planet Hawaii stories',
      ),
    ),
    GoRoute(
      path: '/about-hawaii',
      builder: (context, state) => const AboutHawaii(),
    ),
    for (final Story story in stories)
      GoRoute(
        path: '/${story.route}',
        builder: (context, state) => StoryWidget(story),
      ),
  ],
);

void main() {
  usePathUrlStrategy();
  runApp(const App());
  SemanticsBinding.instance.ensureSemantics();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Hawaiian Space Stories',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Hawaii_in_United_States_%28US50%29_%28%2Bgrid%29_%28zoom%29_%28W3%29.svg/640px-Hawaii_in_United_States_%28US50%29_%28%2Bgrid%29_%28zoom%29_%28W3%29.svg.png'),
                    const WikiParagraph('''This site contains three fairy tales about an archipelago of islands on alient planets that are mysteriously identical to the Hawaii islands on Earth. Enjoy!'''),
                    const WikiLink(
                      title: 'About Hawaii',
                      url: '/about-hawaii',
                    ),
                    for (final Story story in stories)
                      WikiLink(
                        title: story.title,
                        url: '/${story.route}',
                      ),
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
