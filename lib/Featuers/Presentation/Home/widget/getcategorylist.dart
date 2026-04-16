import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/model/categorymodel.dart';
import 'package:news/l10n/app_localizations.dart';

List<Categorymodel> getCategories(BuildContext context) {
  return [
    Categorymodel(
      categoryname:
          'education', //علشانcategory ببعتها في api فلازم تكون بالانجليزي فلذلك انا ضفتها
      name: AppLocalizations.of(context)!.education,
      image: 'assets/images/all.jpg',
    ),
    Categorymodel(
      categoryname: 'sports',
      name: AppLocalizations.of(context)!.sports,
      image: 'assets/images/sports.png',
    ),
    Categorymodel(
      categoryname: 'health',
      name: AppLocalizations.of(context)!.health,
      image: 'assets/images/healty.png',
    ),
    Categorymodel(
      categoryname: 'technology',
      name: AppLocalizations.of(context)!.technology,
      image: 'assets/images/techonlogy.jpg',
    ),
    Categorymodel(
      categoryname: 'science',
      name: AppLocalizations.of(context)!.science,
      image: 'assets/images/science.jpg',
    ),
    Categorymodel(
      categoryname: 'business',
      name: AppLocalizations.of(context)!.business,
      image: 'assets/images/bussiness.jpg',
    ),
  ];
}
