import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const ROUTE_NAME = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenfree = false;
  var _vegeterian = false;
  var _vegan = false;
  var _lactosefree = false;

  Widget buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(description),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              buildSwitchListTile(
                  'Gluten free', 'only include gluten free meal', _glutenfree,
                  (newValue) {
                setState(() {
                  _glutenfree = newValue;
                });
              }),
              buildSwitchListTile(
                  'Vegetarian', 'only include vegetarian meal', _vegeterian,
                  (newValue) {
                setState(() {
                  _vegeterian = newValue;
                });
              }),
              buildSwitchListTile('Vegan', 'only include vegan meal', _vegan,
                  (newValue) {
                setState(() {
                  _vegan = newValue;
                });
              }),
              buildSwitchListTile('Lactose free',
                  'only include lactose free meal', _lactosefree, (newValue) {
                setState(() {
                  _lactosefree = newValue;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
