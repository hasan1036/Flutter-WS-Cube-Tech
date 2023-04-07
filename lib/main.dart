import"package:flutter/material.dart";
import 'package:flutter_ws_cube_tech/82_Shared%20Preference/SplashScreenSharedPreference.dart';
import 'package:flutter_ws_cube_tech/BMI%20Calculator/bmi%20Calculator.dart';
import 'package:flutter_ws_cube_tech/Flutter%20Animation%20Effect/71_Animated_Container.dart';
import 'package:flutter_ws_cube_tech/Flutter%20Animation%20Effect/73_Cross%20Fade%20Animation.dart';
import 'package:flutter_ws_cube_tech/Flutter%20Animation%20Effect/74.2_detail_page.dart';
import 'package:flutter_ws_cube_tech/Form%20&%20Form%20Validation/Form%20rajat%20vai.dart';
import 'package:flutter_ws_cube_tech/Splash%20Screen/splash_screen.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/58_Sized%20Box%20Widgets.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/59_Rich%20text%20Widget.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/60_Icon%20Widgets.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/61_Font%20Awesome%20Icons.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/62_Positioned%20Widget.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/63_StateFul%20&%20Stateless%20Widget.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/65_Constraint.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/66_Switching%20from%20one%20screen%20to%20another%20screen.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/68_PassingDataFromOneToAnotherScreen.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/75_List%20Wheel%20ScrollView.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/76_ClipRRect%20Widgets.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/78_Mapping%20Lists.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/79_Tween%20Animation.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/80_Ripple%20Animation%20Effects.dart';
import 'package:flutter_ws_cube_tech/WsCube%20Tech%20Clsss/81.1_Shared%20Preference.dart';
import 'Flutter Animation Effect/72_Animated Opacity.dart';
import 'Flutter Animation Effect/74.1_Hero Animation.dart';
import 'WsCube Tech Clsss/56_Custom Widget.dart';
import 'WsCube Tech Clsss/57_Wrap Widget_57.dart';
import 'WsCube Tech Clsss/64.1_Counter Application.dart';
import 'WsCube Tech Clsss/69_Range_Slide.dart';
import 'WsCube Tech Clsss/77_Gradient As App Background.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch:Colors.lightBlue,
        textTheme: TextTheme(

        )
      ),

      //home: ExcersiceWidget(),
      //home: StylesAndThemes_46(),
      //home: CardWidget_47(),
     // home: FormFeild_48()
      //home: CurrentDateAndTime(),
      //home: DateFormate_56(),
      //home: ShowingDatePicker_51(),
      //home: GridView_52(),
      //home: CallBackFunction_52(),
     // home: CustomWidget54(),
      //home: StackWidget_55(),
     // home: CustomWidget_56(),
      //home: WrapWidget_57(),
      //home: SizedBoxWidget58(),
      //home:RichWidget_59(),
      //home: IconWidget_60(),
      //home: FontAwesomeIcons_61(),
      //home: PositionedWidget_62(),
      //home: StatefulAndStatelessWidget(),
      //home: CalculatorApplication_64(),
      //home: ConstraintWidget_65(),
       //home: SwitchingOneScreenToAnotherScreen_66(),
      //home: IntroPage(),
      //home: SplashScreen_67(),
      //home: PassingDataFromOneToAnotherScreen_68(),
     // home:RangeSlide_69(),
      //home: BMICalculator(),
      //home: Animation71(),
      //home: Animatd_Opaciy_72()
      //home: CrossFadeAnimation73(),
      //home: Hero_Animation_74(),
      //home: DetailPage(),
      //home: ListWheelScroolView_75(),
      //home: ClipRRect76(),
     // home: AddGradient_77(),
      //home: MappingLists_78(),
      //home: TweenAnimation_79(),
      //home: RippleAnimation_80(),
      //home: SharedPreference_82(),
     // home: CounterApplication(),
      //home: SplashScreenSharedPreference(),
      home: FormValidationRafatVai(),
    );
  }
}

