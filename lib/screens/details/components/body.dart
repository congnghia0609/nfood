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
import 'package:nfood/screens/details/components/title_price_rating.dart';

import '../../../constants.dart';
import 'item_image.dart';
import 'order_button.dart';

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
    Size size = MediaQuery.of(context).size;
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
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1,),
          // Free space 10% of total height
          OrderButton(size: size, press: () {},),
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


