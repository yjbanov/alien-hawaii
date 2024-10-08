import 'package:flutter/material.dart';

import 'wiki.dart';

class AboutHawaii extends StatefulWidget {
  const AboutHawaii({super.key});

  @override
  State<AboutHawaii> createState() => _AboutHawaiiState();
}

class _AboutHawaiiState extends State<AboutHawaii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('About Hawaii'),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: <Widget>[
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Hawaii_in_United_States_%28US50%29_%28%2Bgrid%29_%28zoom%29_%28W3%29.svg/640px-Hawaii_in_United_States_%28US50%29_%28%2Bgrid%29_%28zoom%29_%28W3%29.svg.png'),
                  const WikiParagraph(
                      '''Hawaii (/həˈwaɪi/ ⓘ hə-WY-ee; Hawaiian: Hawaiʻi [həˈvɐjʔi, həˈwɐjʔi]) is an island state in the Western United States, about 2,000 miles (3,200 km) from the U.S. mainland in the Pacific Ocean. It is the only U.S. state outside North America, the only state that is an archipelago, and the only state in the tropics.'''),
                  const WikiParagraph(
                      '''Hawaii consists of 137 volcanic islands that comprise almost the entire Hawaiian archipelago; spanning 1,500 miles (2,400 km), the state is physiographically and ethnologically part of the Polynesian subregion of Oceania.[9] Hawaii's ocean coastline is consequently the fourth-longest in the U.S., at about 750 miles (1,210 km).[d] The eight main islands, from northwest to southeast, are Niʻihau, Kauaʻi, Oʻahu, Molokaʻi, Lānaʻi, Kahoʻolawe, Maui, and Hawaiʻi, after which the state is named; the latter is often called the "Big Island" or "Hawaii Island" to avoid confusion with the state or archipelago. The uninhabited Northwestern Hawaiian Islands make up most of the Papahānaumokuākea Marine National Monument, the largest protected area in the U.S. and the fourth largest in the world.'''),
                  const WikiParagraph(
                      '''Of the 50 U.S. states, Hawaii is the eighth smallest in land area and the 11th least populous; but with 1.4 million residents, it ranks 13th in population density. Two-thirds of Hawaiians live on O'ahu, home to the state's capital and largest city, Honolulu. Hawaii is among the country's most diverse states, owing to its central location in the Pacific and over two centuries of migration. As one of only six majority-minority states, it has the only Asian American plurality, the largest Buddhist community,[10] and largest proportion of multiracial people in the U.S..[11] Consequently, Hawaii is a unique melting pot of North American and East Asian cultures, in addition to its indigenous Hawaiian heritage.'''),
                  const WikiParagraph(
                      '''Settled by Polynesians sometime between 1000 and 1200 CE, Hawaii was home to numerous independent chiefdoms.[12] In 1778, British explorer James Cook was the first known non-Polynesian to arrive at the archipelago; early British influence is reflected in the state flag, which bears a Union Jack. An influx of European and American explorers, traders, and whalers soon arrived, leading to the decimation of the once isolated Indigenous community through the introduction of diseases such as syphilis, tuberculosis, smallpox, and measles; the native Hawaiian population declined from between 300,000 and one million to less than 40,000 by 1890.[13][14][15] Hawaii became a unified, internationally recognized kingdom in 1810, remaining independent until American and European businessmen overthrew the monarchy in 1893; this led to annexation by the U.S. in 1898. As a strategically valuable U.S. territory, Hawaii was attacked by Japan on December 7, 1941, which brought it global and historical significance, and contributed to America's decisive entry into World War II. Hawaii is the most recent state to join the union, on August 21, 1959.[16] In 1993, the U.S. government formally apologized for its role in the overthrow of Hawaii's government, which had spurred the Hawaiian sovereignty movement and has led to ongoing efforts to redress the indigenous population.'''),
                  const WikiParagraph(
                      '''Historically dominated by a plantation economy, Hawaii remains a major agricultural exporter due to its fertile soil and uniquely tropical climate in the U.S. Its economy has gradually diversified since the mid-20th century, with tourism and military defense becoming the two largest sectors. The state attracts visitors, surfers, and scientists with its diverse natural scenery, warm tropical climate, abundant public beaches, oceanic surroundings, active volcanoes, and clear skies on the Big Island. Hawaii hosts the U.S. Pacific Fleet, the world's largest naval command, as well as 75,000 employees of the Defense Department.[17] Hawaii's relative isolation results in one of the highest costs of living in the U.S. However, Hawaii is the third-wealthiest state,[17] and residents have the longest life expectancy of any U.S. state, at 80.7 years.[18]'''),
                  const WikiTitle('''Etymology''', level: TitleLevel.large),
                  const WikiParagraph(
                      '''The State of Hawaii derives its name from the name of its largest island, Hawaiʻi. A common explanation of the name of Hawaiʻi is that it was named for Hawaiʻiloa, a figure from Hawaiian oral tradition. He is said to have discovered the islands when they were first settled.[19][20]'''),
                  const WikiParagraph(
                      '''The Hawaiian language word Hawaiʻi is very similar to Proto-Polynesian Sawaiki, with the reconstructed meaning "homeland".[e] Cognates of Hawaiʻi are found in other Polynesian languages, including Māori (Hawaiki), Rarotongan (ʻAvaiki) and Samoan (Savaiʻi). According to linguists Pukui and Elbert,[22] "elsewhere in Polynesia, Hawaiʻi or a cognate is the name of the underworld or of the ancestral home, but in Hawaii, the name has no meaning".[23]'''),
                  const WikiTitle('''Spelling of state name''',
                      level: TitleLevel.medium),
                  const WikiParagraph(
                      '''In 1978, Hawaiian was added to the Constitution of the State of Hawaii as an official state language alongside English.[24] The title of the state constitution is The Constitution of the State of Hawaii. Article XV, Section 1 of the Constitution uses The State of Hawaii.[25] Diacritics were not used because the document, drafted in 1949,[26] predates the use of the ʻokina ⟨ʻ⟩ and the kahakō in modern Hawaiian orthography. The exact spelling of the state's name in the Hawaiian language is Hawaiʻi.[f] In the Hawaii Admission Act that granted Hawaiian statehood, the federal government used Hawaii for the state name. Official government publications, department and office titles, and the Seal of Hawaii use the traditional spelling with no symbols[contradictory] for glottal stops or vowel length.[27][better source needed]'''),
                  const WikiTitle('''Geography and environment''',
                      level: TitleLevel.large),
                  const WikiParagraph(
                      '''There are eight main Hawaiian islands. Seven are inhabited, but only six are open to tourists and locals. Niʻihau is privately managed by brothers Bruce and Keith Robinson; access is restricted to those who have their permission. This island is also home to native Hawaiians. Access to uninhabited Kahoʻolawe island is also restricted and anyone who enters without permission will be arrested. This island may also be dangerous since it was a military base during the world wars and could still have unexploded ordnance.'''),
                  const WikiTitle('''Topography''', level: TitleLevel.medium),
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Bathymetry_image_of_the_Hawaiian_archipelago.png/311px-Bathymetry_image_of_the_Hawaiian_archipelago.png'),
                  const WikiParagraph(
                      '''The Hawaiian archipelago is 2,000 mi (3,200 km) southwest of the contiguous United States.[37] Hawaii is the southernmost U.S. state and the second westernmost after Alaska. Like Alaska, Hawaii borders no other U.S. state. It is the only U.S. state not in North America, and the only one completely surrounded by water and entirely an archipelago.'''),
                  const WikiParagraph(
                      '''In addition to the eight main islands, the state has many smaller islands and islets. Kaʻula is a small island near Niʻihau. The Northwestern Hawaiian Islands is a group of nine small, older islands northwest of Kauaʻi that extends from Nihoa to Kure Atoll; these are remnants of once much larger volcanic mountains. Across the archipelago are around 130 small rocks and islets, such as Molokini, which are made up of either volcanic or marine sedimentary rock.[38]'''),
                  const WikiParagraph(
                      '''Hawaiʻi's tallest mountain Mauna Kea is 13,796 ft (4,205 m) above mean sea level;[39] it is taller than Mount Everest if measured from the base of the mountain, which lies on the floor of the Pacific Ocean and rises about 33,500 feet (10,200 m).[40]'''),
                  const WikiTitle('''Geology''', level: TitleLevel.medium),
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/P%C4%81hoehoe_lava_meets_Pacific.jpg/640px-P%C4%81hoehoe_lava_meets_Pacific.jpg'),
                  const WikiParagraph(
                      '''The Hawaiian islands were formed by volcanic activity initiated at an undersea magma source called the Hawaiʻi hotspot. The process is continuing to build islands; the tectonic plate beneath much of the Pacific Ocean continually moves northwest and the hotspot remains stationary, slowly creating new volcanoes. Because of the hotspot's location, all active land volcanoes are on the southern half of Hawaiʻi Island. The newest volcano, Kamaʻehuakanaloa (formerly Lōʻihi), is south of the coast of Hawaiʻi Island.'''),
                  const WikiParagraph(
                      '''The last volcanic eruption outside Hawaiʻi Island occurred at Haleakalā on Maui before the late 18th century, possibly hundreds of years earlier.[41] In 1790, Kīlauea exploded; it was the deadliest eruption known to have occurred in the modern era in what is now the United States.[42] Up to 5,405 warriors and their families marching on Kīlauea were killed by the eruption.[43] Volcanic activity and subsequent erosion have created impressive geological features. Hawaii Island has the second-highest point among the world's islands.[44]'''),
                  const WikiParagraph(
                      '''On the volcanoes' flanks, slope instability has generated damaging earthquakes and related tsunamis, particularly in 1868 and 1975.[45] Catastrophic debris avalanches on the ocean island volcanoes' submerged flanks have created steep cliffs.[46][47]'''),
                  const WikiParagraph(
                      '''Kīlauea erupted in May 2018, opening 22 fissure vents on its eastern rift zone. The Leilani Estates and Lanipuna Gardens are within this territory. The eruption destroyed at least 36 buildings and this, coupled with the lava flows and the sulfur dioxide fumes, necessitated the evacuation of more than 2,000 inhabitants from their neighborhoods.[48]'''),
                  const WikiTitle('''Flora and fauna''',
                      level: TitleLevel.medium),
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Hawaiian_monk_seal_at_French_Frigate_Shoals_07.jpg/640px-Hawaiian_monk_seal_at_French_Frigate_Shoals_07.jpg'),
                  const WikiParagraph(
                      '''The islands of Hawaiʻi are distant from other land habitats, and life is thought to have arrived there by wind, waves (i.e., by ocean currents), and wings (i.e., birds, insects, and any seeds that they may have carried on their feathers). Hawaiʻi has more endangered species and has lost a higher percentage of its endemic species than any other U.S. state.[49] The endemic plant Brighamia now requires hand pollination because its natural pollinator is presumed to be extinct.[50] The two species of Brighamia—B. rockii and B. insignis—are represented in the wild by around 120 individual plants. To ensure that these plants set seed, biologists rappel down 3,000-foot (910 m) cliffs to brush pollen onto their stigmas.[51]'''),
                  const WikiTitle('''Terrestrial ecology''',
                      level: TitleLevel.medium),
                  const WikiParagraph(
                      '''The archipelago's extant main islands have been above the surface of the ocean for less than 10 million years, a fraction of the time biological colonization and evolution have occurred there. The islands are well known for the environmental diversity that occurs on high mountains within a trade winds field. Native Hawaiians developed complex horticultural practices to utilize the surrounding ecosystem for agriculture. Cultural practices developed to enshrine values of environmental stewardship and reciprocity with the natural world, resulting in widespread biodiversity and intricate social and environmental relationships that persist to this day.[52] On a single island, the climate around the coasts can range from dry tropical (less than 20 inches or 510 millimeters annual rainfall) to wet tropical; on the slopes, environments range from tropical rainforest (more than 200 inches or 5,100 millimeters per year), through a temperate climate, to alpine conditions with a cold, dry climate. The rainy climate impacts soil development, which largely determines ground permeability, affecting the distribution of streams and wetlands.[53][54][55]'''),
                  const WikiParagraph(''''''),
                  const WikiTitle('''Protected areas''',
                      level: TitleLevel.medium),
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Na_Pali_Coast%2C_Kauai%2C_Hawaii.jpg/640px-Na_Pali_Coast%2C_Kauai%2C_Hawaii.jpg'),
                  const WikiParagraph(
                      '''Several areas in Hawaiʻi are under the National Park Service's protection.[56] Hawaii has two national parks: Haleakalā National Park, near Kula on Maui, which features the dormant volcano Haleakalā that formed east Maui; and Hawaii Volcanoes National Park, in the southeast region of Hawaiʻi Island, which includes the active volcano Kīlauea and its rift zones.'''),
                  const WikiParagraph(
                      '''There are three national historical parks: Kalaupapa National Historical Park in Kalaupapa, Molokaʻi, the site of a former leper colony; Kaloko-Honokōhau National Historical Park in Kailua-Kona on Hawaiʻi Island; and Puʻuhonua o Hōnaunau National Historical Park, an ancient place of refuge on Hawaiʻi Island's west coast. Other areas under the National Park Service's control include Ala Kahakai National Historic Trail on Hawaiʻi Island and the USS Arizona Memorial at Pearl Harbor on Oʻahu.'''),
                  const WikiParagraph(
                      '''President George W. Bush proclaimed the Papahānaumokuākea Marine National Monument on June 15, 2006. The monument covers roughly 140,000 square miles (360,000 km2) of reefs, atolls, and shallow and deep sea out to 50 miles (80 km) offshore in the Pacific Ocean—an area larger than all the national parks in the U.S. combined.[57]'''),
                  const WikiTitle('''Climate''', level: TitleLevel.medium),
                  Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/ISS067-E-149917_Hawaii.jpg/640px-ISS067-E-149917_Hawaii.jpg'),
                  const WikiParagraph(
                      '''Hawaiʻi has a tropical climate. Temperatures and humidity tend to be less extreme because of near-constant trade winds from the east. Summer highs reach around 88 °F (31 °C) during the day, with lows of 75 °F (24 °C) at night. Winter day temperatures are usually around 83 °F (28 °C); at low elevation they seldom dip below 65 °F (18 °C) at night. Snow, not usually associated with the tropics, falls at 13,800 feet (4,200 m) on Mauna Kea and Mauna Loa on Hawaii Island in some winter months. Snow rarely falls on Haleakalā. Mount Waiʻaleʻale on Kauaʻi has the second-highest average annual rainfall on Earth, about 460 inches (12,000 mm) per year. Most of Hawaii experiences only two seasons; the dry season runs from May to October and the wet season is from October to April.[59]'''),
                  const WikiParagraph(
                      '''Overall with climate change, Hawaiʻi is getting drier and hotter.[60][61] The warmest temperature recorded in the state, in Pahala on April 27, 1931, is 100 °F (38 °C), tied with Alaska as the lowest record high temperature observed in a U.S. state.[62] Hawaiʻi's record low temperature is 12 °F (−11 °C) observed in May 1979, on the summit of Mauna Kea. Hawaiʻi is the only state to have never recorded subzero Fahrenheit temperatures.[62]'''),
                  const WikiParagraph(
                      '''Climates vary considerably on each island; they can be divided into windward and leeward (koʻolau and kona, respectively) areas based upon location relative to the higher mountains. Windward sides face cloud cover.[63]'''),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
