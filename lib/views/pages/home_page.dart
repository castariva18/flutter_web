part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selected = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: index == selected ? mediumNavFontStyle : lightNavFontStyle,
            ),
            Container(
                width: 66,
                height: 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: index == selected ? orangeColor : whiteColor))
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                // NOTE: Nav
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      height: 40,
                      width: 72,
                    ),
                    Row(
                      children: [
                        navItem(index: 0, title: 'Guide'),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(index: 1, title: 'Pricing'),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(index: 2, title: 'Team'),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(index: 3, title: 'Stories'),
                      ],
                    ),
                    Image.asset('btn.png', width: 163, height: 53),
                  ],
                ),
                SizedBox(
                  height: 76,
                ),
                // NOTE: Content
                Image.asset(
                  'ilustrasi.png',
                  width: 634,
                ),
                // NOTE : Footer
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'Icon_down.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      "Scroll to Learn More",
                      style: regularFontStyle,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
