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
import 'package:nfood/components/search_box.dart';
import 'package:nfood/constants.dart';

import 'category_item.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}

