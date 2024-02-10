import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../utils/Theme/app_theme.dart';

class GeniePage extends StatefulWidget {
  const GeniePage({super.key});

  @override
  State<GeniePage> createState() => _GeniePageState();
}

class _GeniePageState extends State<GeniePage> {
  bool _isExpand = false;
  bool _isExpanded = false;
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,automaticallyImplyLeading: false,
        title: const Text('GROCERIA',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          _buildRestaurantCard(),
          _buildMenuCard(),
        ],
      ),
    );
  }

  Widget _buildRestaurantCard() {

    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('My Account'),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            subtitle: Text(
              'Addresses, Payments, Favourites, Referrals & Others',
              style: TextStyle(fontSize: 13),
            ),
          ),
          if (_isExpanded)
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text(
                    'Manage Address',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.payments_outlined),
                  title: Text(
                    'Payment',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(
                    'Favourites',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text(
                    'Referrals',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_offer_outlined),
                  title: Text(
                    'Offers',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings_sharp),
                  title: Text(
                    'App Settings',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildMenuCard() {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Help & Feedback'),
            onTap: () {
              setState(() {
                _isExpand = !_isExpand;
              });
            },
          ),
          if (_isExpand)
            Column(
              children: [
                ListTile(
                  title: Text('Rate Our App'),
                ),
                Divider(),
                ListTile(
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Here you can implement the logic for submitting the rating
                      print('Submitted rating: $_rating');
                    },
                    child: Text('Submit'),
                  ),
                  title: RatingBar.builder(
                    initialRating: _rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                  ),
                ),

              ],
            ),
        ],
      ),
    );
  }
}