import 'package:news/Featuers/Data/Model/Newsmodel.dart';

abstract class NewsStates {}

class Newinitial extends NewsStates {}

class Newloading extends NewsStates {}

class Newsuccess extends NewsStates {
  final List<Newsmodel> newlist;
  Newsuccess(this.newlist);
}

class Newerror extends NewsStates {
  final String error;
  Newerror(this.error);
}
