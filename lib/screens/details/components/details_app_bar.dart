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
import 'package:flutter_svg/flutter_svg.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white,),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/share.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/more.svg"),
        onPressed: () {},
      ),
    ],
  );
}
