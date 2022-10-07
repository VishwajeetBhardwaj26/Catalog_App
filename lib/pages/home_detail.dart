import 'package:first_flutter_project/widgets/themes.dart';
import 'package:flutter/material.dart';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

////////////////////////////////////////////////////////////////////////////
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add to cart".text.make())
                .wh(120, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.cardColor,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(Mytheme.darkBluishColor).make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    "Et dolores accusam stet et dolor sea est diam sanctus. Sed est sit takimata labore et gubergren ut nonumy sed, et dolores gubergren dolores dolor vero sadipscing sea takimata. Sea et magna ipsum ipsum sadipscing dolores diam, labore invidunt sit takimata amet et tempor justo diam accusam, sit amet est."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
