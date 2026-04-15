import 'package:dartz/dartz.dart';
import 'package:news/Core/errors/Failure.dart';
import 'package:news/Featuers/Data/Model/Newsmodel.dart';

abstract class NewRepo {
  Future<Either<Failure, List<Newsmodel>>> getAllNewsData({required String la});
  Future<Either<Failure, List<Newsmodel>>> getCategoryNewsData({
    required String category,
    required String la,
  });
}
