import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile_widgets/custom_boxshadow.dart';
import 'package:portfolio/widgets/projects_image.dart';
import 'package:portfolio/widgets/tools_images.dart';

class Projects extends StatelessWidget {
  final double horizontal;
  final double vertical;

  const Projects({this.horizontal=70,this.vertical=20});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: vertical != 20 ? BoxDecoration(
            boxShadow: [CustomBoxShadow(
                color: Colors.white,
                offset: new Offset(5.0, 5.0),
                blurRadius: 5.0,
                blurStyle: BlurStyle.outer
            ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ): BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  ToolImage(imageUrl: "assets/images/tools/python.png",height: 70,width: 270,),
                SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProjectImage(
                          size: 70,
                          text: "Machine Learning",
                          imageUrl: "assets/images/tools/sklearn.png",
                          url: "https://github.com/MustafaOzer20/price-prediction-with-audi-data",
                        ),
                        ProjectImage(
                          size: 70,
                          text: "Binary Search Tree",
                          imageUrl: "assets/images/tools/datastr.png",
                          url: "https://github.com/MustafaOzer20/BinarySearchTree",
                        ),
                        ProjectImage(
                          size: 70,
                          text: "mp3-mp4 downloader in youtube",
                          imageUrl: "assets/images/tools/django.png",
                          url: "https://github.com/MustafaOzer20/mp3-and-mp4-converter-with-django",
                        ),
                        ProjectImage(
                          size: 70,
                          text: "connect 4 game",
                          imageUrl: "assets/images/tools/c4.png",
                          url: "https://github.com/MustafaOzer20/connection4game",
                        ),
                        ProjectImage(
                          size: 70,
                          text: "currency app(my first project)",
                          imageUrl: "assets/images/tools/currency.png",
                          url: "https://github.com/MustafaOzer20/currency",
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 25,),
                ToolImage(imageUrl: "assets/images/tools/flutter.png",height: 100,width: 270,),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProjectImage(
                        size: 70,
                        text: "todo app",
                        imageUrl: "assets/images/tools/todo.png",
                        url: "https://github.com/MustafaOzer20/todo-app-flutter",
                      ),
                      ProjectImage(
                        size: 70,
                        text: "whatsApp clone app",
                        imageUrl: "assets/images/tools/wp.png",
                        url: "https://github.com/MustafaOzer20/flutter-whatsapp-clone-app",
                      ),
                      ProjectImage(
                        size: 70,
                        text: "source code of this website",
                        imageUrl: "assets/images/tools/portfolio.png",
                        url: "https://github.com/MustafaOzer20/Portfolio-with-flutter",
                      ),
                    ],
                  ),
                )
              ],
            ),
        ));
  }
}
