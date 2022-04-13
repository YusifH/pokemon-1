import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_app/constant/thema.dart';
import 'package:pokemon_app/constant/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeBallImg = 'img/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleHeight(),
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(8.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child:  Text(Constants.Title, style: Constants.getTitleTextStyle(),),),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              pokeBallImg,
              width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,

              fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }
}
