import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:velocity_x/velocity_x.dart"; 
class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(
          primarySwatch: Colors.deepPurple,
          cardColor: Colors.white,
          
       canvasColor: creamColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            // textTheme: Theme.of(context).textTheme,
          ),
          );
           static ThemeData darkTheme(BuildContext context) =>ThemeData(
       fontFamily: GoogleFonts.poppins().fontFamily,
       cardColor: Colors.black,
       canvasColor: darkCreamColor,
      brightness: Brightness.dark,
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            // textTheme: Theme.of(context).textTheme,
          ),
          );
          static Color creamColor= Color(0xfff5f5f5);                    
           static Color darkCreamColor=Vx.gray900;                   
          static Color darkBlueishColor= Color.fromARGB(255, 61, 26, 239);
           static Color LightBluishColor= Vx.purple400;                   
          
}