import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/model/categorymodel.dart';
import 'package:news/l10n/app_localizations.dart';

List<Categorymodel> getCategories(BuildContext context) {
  return [
    Categorymodel(
      name: AppLocalizations.of(context)!.education,
      image: 'assets/images/all.jpg',
    ),
    Categorymodel(
      name: AppLocalizations.of(context)!.sports,
      image: 'assets/images/sports.png',
    ),
    Categorymodel(
      name: AppLocalizations.of(context)!.health,
      image: 'assets/images/healty.png',
    ),
    Categorymodel(
      name: AppLocalizations.of(context)!.technology,
      image: 'assets/images/techonlogy.jpg',
    ),
    Categorymodel(
      name: AppLocalizations.of(context)!.science,
      image: 'assets/images/science.jpg',
    ),
    Categorymodel(
      name: AppLocalizations.of(context)!.business,
      image: 'assets/images/bussiness.jpg',
    ),
  ];
}
