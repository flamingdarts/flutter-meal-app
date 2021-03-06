import 'package:flutter/material.dart';
import 'screens/filters_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/tabs_screen.dart';
import 'screens/category_meal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 245, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                  fontSize: 24,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold),
            ),
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealScreen.ROUTE_NAME: (ctx) => CategoryMealScreen(),
        MealDetailScreen.ROUTE_NAME: (ctx) => MealDetailScreen(),
        FiltersScreen.ROUTE_NAME: (ctx) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => TabsScreen(),
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => TabsScreen());
      },
    );
  }
}
