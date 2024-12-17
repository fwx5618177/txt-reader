import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReaderDetailPage extends StatefulWidget {
  // final Novel novel;
  const ReaderDetailPage({super.key});

  @override
  State<ReaderDetailPage> createState() => _ReaderDetailState();
}

class _ReaderDetailState extends State<ReaderDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.network(
                  "https://www.dreamtinyliving.com/wp-content/uploads/2023/07/Beautiful-Small-House-Design-Idea-7mx6m-1.jpg",
                  width: size.width,
                  height: size.height * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_ios_rounded),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.bookmark_outline_rounded,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cotton House',
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                                height: 30,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 30,
                                      child: Stack(
                                        children: [
                                          ...List.generate(
                                              3,
                                              (index) => Positioned(
                                                    left: index * 15,
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 2,
                                                              color:
                                                                  Colors.white),
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "assets/illustrations/girl.jpg"))),
                                                    ),
                                                  ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "+20 members",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "4.5",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ReadMoreText(
                    'Introduction',
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    colorClickableText: Colors.lightBlue,
                    trimMode: TrimMode.Length,
                    trimLength: 120,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Gallery",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: Colors.blue,
                            size: 25,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
