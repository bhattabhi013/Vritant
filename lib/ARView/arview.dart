import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LocalAndWebObjectsView extends StatefulWidget {
  LocalAndWebObjectsView({Key? key, required this.msg, required this.imgUrl})
      : super(key: key);
  String msg;
  String imgUrl;
  @override
  State<LocalAndWebObjectsView> createState() => _LocalAndWebObjectsViewState();
}

class _LocalAndWebObjectsViewState extends State<LocalAndWebObjectsView> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  FlutterTts ftts = FlutterTts();
  //String localObjectReference;
  ARNode? localObjectNode;

  //String webObjectReference;
  ARNode? webObjectNode;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ARView(
                  onARViewCreated: onARViewCreated,
                ),
              ),
            ),
            SizedBox(
              //width: MediaQuery.of(context).size.height * .6,
              height: MediaQuery.of(context).size.height * .1,
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    widget.msg,
                  ),
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 2000),
                displayFullTextOnTap: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        //your custom configuration
                        await ftts.setLanguage("en-US");
                        await ftts.setSpeechRate(0.5); //speed of speech
                        await ftts.setVolume(1.0); //volume of speech
                        await ftts.setPitch(1); //pitc of sound

                        //play text to sp
                        var result = await ftts.speak(widget.msg);
                        if (result == 1) {
                          //speaking
                        } else {
                          //not speaking
                        }
                      },
                      child: Text("Play 📢"),
                    ),
                    ElevatedButton(
                      onPressed: onWebObjectAtButtonPressed,
                      child: Text("Add➕ / Remove❌ Web Object"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          customPlaneTexturePath: "assets/triangle.png",
          showWorldOrigin: true,
          handleTaps: false,
        );
    this.arObjectManager.onInitialize();
  }

  Future<void> onLocalObjectButtonPressed() async {
    if (localObjectNode != null) {
      arObjectManager.removeNode(localObjectNode!);
      localObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.fileSystemAppFolderGLTF2,
          uri: "assets/Chicken_01/Chicken_01.gltf",
          scale: Vector3(0.2, 0.2, 0.2),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      bool? didAddLocalNode = await arObjectManager.addNode(newNode);
      localObjectNode = (didAddLocalNode!) ? newNode : null;
    }
  }

  Future<void> onWebObjectAtButtonPressed() async {
    if (webObjectNode != null) {
      arObjectManager.removeNode(webObjectNode!);
      webObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.webGLB,
          uri: widget.imgUrl,
          //   "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/RiggedFigure/glTF-Binary/RiggedFigure.glb",
          //"https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/BrainStem/glTF-Binary/BrainStem.glb",
          scale: Vector3(0.2, 0.2, 0.2));
      bool? didAddWebNode = await arObjectManager.addNode(newNode);
      webObjectNode = (didAddWebNode!) ? newNode : null;
    }
  }
}
