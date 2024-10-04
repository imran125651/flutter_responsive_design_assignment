import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/widgets/button.dart';
import 'package:flutter_responsive_design_assignment/widgets/text_content.dart';

import '../main.dart';
import '../utils/screen_utils.dart';
import '../widgets/nav_menu.dart';
import '../widgets/online_product_with_api.dart';
import '../widgets/responsive_layout.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: _mobileLayoutBuilder(context),
      tablet: _tabletLayoutBuilder(context),
      desktop: _desktopLayoutBuilder(context),
    );
  }

  Widget _mobileLayoutBuilder(context){
    return Scaffold(
      appBar: _appBarBuilder(context),
      drawer: const NavMenu(),
      body: _body(),
    );
  }

  Widget _tabletLayoutBuilder(context){
    return Scaffold(
      appBar: _appBarBuilder(context),
      body: _body(),
    );
  }

  Widget _desktopLayoutBuilder(context){
    return Scaffold(
      appBar: _appBarBuilder(context),
      body: _body(),
    );
  }

  AppBar _appBarBuilder(BuildContext context){
    DeviceType deviceType = ScreenUtils.getDeviceType(deviceWidth: size.width);
    if(deviceType == DeviceType.mobile){
      return AppBar(
        actions: const [
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
        leading: const Padding(
          padding: EdgeInsets.only(left: 50, top: 15),
          child: Text("HUMMING\nBIRD .", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        actions: [
          TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OnlineProductWithAPI()));
              },
              child: const Text("API Data")
          ),

          const SizedBox(width: 10),
          const Text("Episodes"),

          const Padding(
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
