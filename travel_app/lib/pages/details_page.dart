import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
 
import '../models/people_also_like_model.dart';
import '../models/tab_bar_model.dart';
import '../widget/reuseable_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
    required this.tabData,
    required this.personData,
    required this.isCameFromPersonSection,
  });

  final TabBarModel? tabData;
  final PeopleAlsoLikeModel? personData;
  final bool isCameFromPersonSection;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selected = 0;
  final EdgeInsetsGeometry padding =
      const EdgeInsets.symmetric(horizontal: 20.0);
  dynamic current;

  onFirstLoaded() {
    if (widget.tabData == null) {
      return current = widget.personData;
    } else {
      return current = widget.tabData;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    onFirstLoaded();
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                child: Hero(
                  tag: widget.isCameFromPersonSection
                      ? current.day
                      : current.image,
                  child: Container(
                    width: size.width,
                    height: size.height * 0.45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(current?.image),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  padding: padding,
                  width: size.width,
                  height: size.height * 0.65,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        delay: const Duration(milliseconds: 200),
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: current.title,
                                    size: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.01,
                                      ),
                                      AppText(
                                        text: current.location,
                                        size: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppText(
                                text: "\$${current.price}",
                                size: 25,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      FadeInUp(
                        delay: const Duration(milliseconds: 300),
                        child: Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  index < 4 ? Icons.star : Icons.star_border,
                                  color: index < 4 ? Colors.amber : Colors.grey,
                                );
                              }),
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            const AppText(
                              text: "(4.0)",
                              size: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      FadeInUp(
                        delay: const Duration(milliseconds: 400),
                        child: const AppText(
                          text: "People",
                          size: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: size.height * 0.002),
                      FadeInUp(
                        delay: const Duration(milliseconds: 500),
                        child: const AppText(
                          text: "Number of people in your group",
                          size: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        child: Container(
                          margin: EdgeInsets.only(top: size.height * 0.01),
                          width: size.width * 0.9,
                          height: size.height * 0.08,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (ctx, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: AnimatedContainer(
                                      width: size.width * 0.12,
                                      decoration: BoxDecoration(
                                        color: selected == index
                                            ? Colors.black
                                            : const Color.fromARGB(
                                                255, 245, 245, 245),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      duration:
                                          const Duration(milliseconds: 200),
                                      child: Center(
                                        child: Text(
                                          "${index + 1}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: selected == index
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      FadeInUp(
                        delay: const Duration(milliseconds: 800),
                        child: const AppText(
                          text: "Description",
                          size: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      FadeInUp(
                        delay: const Duration(milliseconds: 900),
                        child: const AppText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          size: 13,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      FadeInUp(
                        delay: const Duration(milliseconds: 1000),
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: size.width * 0.14,
                                  height: size.height * 0.06,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.deepPurpleAccent,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  )),
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                minWidth: size.width * 0.6,
                                height: size.height * 0.06,
                                color: Colors.deepPurpleAccent,
                                onPressed: () {},
                                child: const AppText(
                                  text: "Book Trip Now",
                                  size: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }
}
