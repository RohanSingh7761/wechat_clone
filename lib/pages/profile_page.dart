import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wechat_clone/components/profile_page_options.dart';
import 'package:wechat_clone/models/profile_page_option_provider.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({super.key});

  @override
  State<ProfilePageBody> createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  OptionProvider optionProvider = OptionProvider();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 4.0;
    double aspectRatio = 4.7 * itemWidth / screenWidth;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: const Icon(Icons.image, size: 50),
                ),
                title: const Text(
                  "Rohan Chauhan",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  "WeChat ID: rohan7761",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/custom_icons/more.png',
                        height: 37,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(18, 79, 160, 117),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/custom_icons/smiley.png',
                        height: 40,
                      ),
                      const Text(
                        "  Lorem ipsum",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(" | dolor sit amet "),
                    ],
                  ),
                  const Icon(CupertinoIcons.chevron_down),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
                AspectRatio(
                  aspectRatio: aspectRatio,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 12,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      final myOptionList = optionProvider.myOptions;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProfilePageOptions(
                          icon: myOptionList[index].icon,
                          optionName: myOptionList[index].optionName,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              color: const Color.fromARGB(18, 79, 160, 117),
              height: 10,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "  Collection",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "  Friends",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey,
                      ),
                      height: 50,
                      width: 200,
                      child: const Icon(Icons.image, size: 60),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
