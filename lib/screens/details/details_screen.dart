/*
 * Copyright 2020 nghiatc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

///
/// @author nghiatc
/// @since Sep 04, 2020

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nfood/constants.dart';

import 'components/details_app_bar.dart';
import 'components/item_image.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(imgSrc: "assets/images/burger.png"),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopName(name: "MacDonalds"),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 15),
                height: 65,
                width: 65,
                color: kPrimaryColor,
                child: Text(
                  "\$15",
                  style: Theme.of(context).textTheme.title.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
        ),
      ],
    );
  }
}
