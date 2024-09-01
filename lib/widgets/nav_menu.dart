import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      child: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                color: const Color(0xFF1FE492),
                height: 250,
                width: double.maxFinite,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("SKILL UP NOW", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("TAP HERE", style: TextStyle(color: Colors.white,fontSize: 14),),
                  ],
                )
              ),

              const SizedBox(height: 50),
              ListTile(
                onTap: (){

                },
                title: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.videocam),
                      SizedBox(width: 20,),
                      Text("Episcodes")
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              ListTile(
                onTap: (){

                },
                title: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.comment_bank),
                      SizedBox(width: 20,),
                      Text("About")
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}