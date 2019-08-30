import 'dart:math';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class _InheritedPodcastAgentProvider extends InheritedWidget {
  final _OneChoiceDataAgentState podcastAgent;

  _InheritedPodcastAgentProvider({
    Key key,
    this.podcastAgent,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedPodcastAgentProvider old) => true;
}

class OneChoiceDataAgent extends StatefulWidget {
  final Widget child;
  final String type;

  OneChoiceDataAgent(
      {@required this.child, this.type});

  static _OneChoiceDataAgentState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedPodcastAgentProvider)
    as _InheritedPodcastAgentProvider)
        .podcastAgent;
  }

  @override
  _OneChoiceDataAgentState createState() => _OneChoiceDataAgentState();
}

class _OneChoiceDataAgentState extends State<OneChoiceDataAgent> {

  bool isPlaying = false;
  String _currentDocID = "";
  String _currentAudioFileURL = "";
  String _currentImgURL = "";
  String _currentTitle = "";

  String _currentBlogDocID = "";
  String _currentBlogImgURL = "";
  String _currentBlogTitle = "";

  String _primary;
  String _secondary;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return _InheritedPodcastAgentProvider(
      podcastAgent: this,
      child: widget.child,
    );
  }

  getCurrentAudioFileURL(){
    return _currentAudioFileURL;
  }

  getCurrentImgURL(){
    return _currentImgURL;
  }

  getCurrentTitle(){
    return _currentTitle;
  }

  getCurrentBlogDocID(){
    return _currentBlogDocID;
  }

  getCurrentBlogImgURL(){
    return _currentBlogImgURL;
  }

  getCurrentBlogTitle(){
    return _currentBlogTitle;
  }

  setCurrentPodcast(String title, String imgUrl, String urlStr, String docID){
    setState((){
      _currentAudioFileURL = urlStr;
      _currentImgURL = imgUrl;
      _currentTitle = title;
      _currentDocID = docID;
    });
  }

  setCurrentBlog(String title, String imgUrl, String urlStr, String docID){
    setState((){
      _currentBlogImgURL = imgUrl;
      _currentBlogTitle = title;
      _currentBlogDocID = docID;
    });
  }



  setAudioFileURL(String url){
    setState(() {
      _currentAudioFileURL = url;
      isPlaying = true;
    });
  }

  setAppState (String primary, String secondary){
    setState((){
      _primary = primary;
      _secondary = secondary;
    });
  }

  pause(){
    setState(() {
      isPlaying = false;
    });
  }

  play(){
    setState(() {
      isPlaying = true;
    });
  }
}
