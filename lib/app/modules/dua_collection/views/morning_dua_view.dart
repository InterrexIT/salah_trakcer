import 'package:flutter/material.dart';
import 'package:salah_tracker/app/data/all_colors.dart';
import 'package:salah_tracker/app/data/all_styles.dart';
class MorningDuaView extends StatefulWidget {
  const MorningDuaView({super.key});

  @override
  State<MorningDuaView> createState() => _MorningDuaViewState();
}

class _MorningDuaViewState extends State<MorningDuaView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AllColors.primaryColor, AllColors.secondaryColor], // Define your gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            leading: Icon(Icons.arrow_back,color:AllColors.whiteColor),
            title: Text("Morning Dua",style: TextStyle(
                fontFamily: 'Cairo',
                color: AllColors.whiteColor
            )),
            backgroundColor: Colors.transparent, // Make AppBar transparent
            elevation: 0, // Remove shadow
          ),
        ),

      ),

      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)=>_duaView()),

    );
  }

  _duaView(){
    return Card(
      child: ListTile(
       leading: CircleAvatar(
         backgroundColor: AllColors.primaryColor.withOpacity(0.3),
         child: Text('01',style: AllStyles.titleTextStyle.copyWith(
           color: AllColors.primaryColor
         ),),

       ) ,
        title: Text('Ayat al-Kursi',style: AllStyles.titleTextStyle.copyWith(
          color: AllColors.blackColor
        )),
      ),
    );

  }
}
