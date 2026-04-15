import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news/Core/errors/Failure.dart';
import 'package:news/Core/utils/apiserver.dart';
import 'package:news/Featuers/Data/Model/Newsmodel.dart';
import 'package:news/Featuers/Data/Repo/Newrepo.dart';

class NewsRepoImpl implements NewRepo {
  final Apiserver apiserver;

  NewsRepoImpl({required this.apiserver});

  List<Newsmodel> _parse(List data) {
    return data.map((e) => Newsmodel.fromJson(e)).toList();
  }

  Future<Either<Failure, List<Newsmodel>>> _getNews({
    required Map<String, dynamic> query,
  }) async {
    try {
      final result = await apiserver.get(query: query);

      final List data = result['results'] ?? [];

      return Right(_parse(data));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Newsmodel>>> getAllNewsData({
    required String la,
  }) {
    return _getNews(query: {'language': la});
  }

  @override
  Future<Either<Failure, List<Newsmodel>>> getCategoryNewsData({
    required String category,
    required String la,
  }) {
    return _getNews(query: {'category': category, 'language': la});
  }
}
