import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewArticlePage extends StatelessWidget {
  const ViewArticlePage(
      {super.key, required this.title, required this.urlImage});
  final String title;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
          backgroundColor:
              CupertinoTheme.of(context).barBackgroundColor.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
             CachedNetworkImage(
               imageUrl:urlImage),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // ignore: avoid_unnecessary_containers
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: avoid_unnecessary_containers
                child: Container(
                    child: Text(
                  """
 Announced on September 7, the iPhone 14 Pro and iPhone 14 Pro Max are Apple's new high-end flagship smartphones, being sold alongside the lower-cost iPhone 14 and iPhone 14 Plus. The iPhone 14 Pro models are much more feature rich than the iPhone 14 models, offering camera technology improvements, better display capabilities, a faster A16 chip, and more.
              
 The 6.1 and 6.7-inch iPhone 14 Pro models look like the iPhone 13 Pro models with flat edges, stainless steel enclosure, a textured matte glass back, IP68 water resistance, and a Ceramic Shield-protected display, but the camera bumps are larger to accommodate new lenses, and the display has also changed.
              
 There is no longer a notch for the TrueDepth camera system, with Apple instead adopting what it calls the Dynamic Island, a pill-shaped cutout at the front of the display that houses camera equipment and can change in shape and size using software depending on what's on the screen.
              
 Apple says the Dynamic Island is meant to blend the line between hardware and software. It is able to adapt in real time, showing alerts, notifications, and activities in the space where the notch used to be. There is still hardware under there, but the TrueDepth camera takes up less space and the Dynamic Island makes it blend into the background by taking better advantage of the screen. The Dynamic Island can show payment confirmations with Face ID, Maps directions, phone calls, music information, Live Activities like sports scores, timers, and more, plus it can be interacted with using a tap and hold gesture.
              
 The iPhone 14 Pro and Pro Max feature a new Super Retina XDR display with updated ProMotion technology that allows for an Always-On display, a first for an iPhone. The Always-On display is made possible through a new 1Hz to 120Hz refresh rate along with improved power efficient technologies. When the Always-On display is active, the time, widgets, and Live Activities remain available at a glance at all times, and the wallpaper is dimmed.
                """,
                  style: TextStyle(
                      color:
                          CupertinoTheme.of(context).textTheme.textStyle.color,
                      fontSize: 17),
                )),
              ),
              const Text("Author : Hossein Valipour",style: TextStyle(fontStyle: FontStyle.italic),),
              const SizedBox(
                height: 120,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
