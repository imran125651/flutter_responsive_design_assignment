import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/widgets/button.dart';
import 'package:flutter_responsive_design_assignment/widgets/text_content.dart';

import '../main.dart';
import '../utils/screen_utils.dart';
import '../widgets/nav_menu.dart';
import '../widgets/responsive_layout.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _mobileLayoutBuilder(),
      tablet: _tabletLayoutBuilder(),
      desktop: _desktopLayoutBuilder(),
    );
  }

  Widget _mobileLayoutBuilder(){
    return Scaffold(
      appBar: _appBarBuilder(),
      drawer: const NavMenu(),
      body: _body(),
    );
  }

  Widget _tabletLayoutBuilder(){
    return Scaffold(
      appBar: _appBarBuilder(),
      body: _body(),
    );
  }

  Widget _desktopLayoutBuilder(){
    return Scaffold(
      appBar: _appBarBuilder(),
      body: _body(),
    );
  }

  AppBar _appBarBuilder(){
    DeviceType deviceType = ScreenUtils.getDeviceType(deviceWidth: size.width);
    if(deviceType == DeviceType.mobile){
      return AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 20,right: 50),
            child: Text("HUMMING\nBIRD .", style: TextStyle(fontWeight: FontWeight.bold),),
          )
        ],
      );
    }
    else{
      return AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 150,
        leading: Padding(
          padding: EdgeInsets.only(left: 50, top: 15),
          child: Text("HUMMING\nBIRD .", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: [
          Text("Episodes"),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 100),
            child: Text("About"),
          ),
        ],
      );
    }
  }
  
  Widget _body(){
    DeviceType deviceType = ScreenUtils.getDeviceType(deviceWidth: size.width);
    if(deviceType == DeviceType.mobile){
      return Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextContent(),
              JoinCourseButton(buttonWidth: double.infinity,),
            ],
          ),
        ),
      );
    }
    else if(deviceType == DeviceType.tablet){
      return Center(
        child: FractionallySizedBox(
          widthFactor: 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextContent(),
              JoinCourseButton(),
            ],
          ),
        ),
      );
    }

    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: TextContent(
              crossAxisAlignment: CrossAxisAlignment.start,
              paragraphTextAlign: TextAlign.start,
              paragraphPadding: EdgeInsets.zero,
            ),
          )
        ),

        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: JoinCourseButton()
          )
        ),
      ],
    );
  }


}
