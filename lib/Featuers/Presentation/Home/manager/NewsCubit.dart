import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Featuers/Data/Repo/Newrepo.dart';
import 'package:news/Featuers/Presentation/Home/manager/Newstate.dart';

class Newscubit extends Cubit<NewsStates> {
  Newscubit(this.repo) : super(Newinitial());
  NewRepo repo;
  Future<void> getNewsData({required String la}) async {
    emit(Newloading());
    var result = await repo.getAllNewsData(la: la);
    result.fold(
      (failure) => emit(Newerror(failure.errMessage)),
      (data) => emit(Newsuccess(data)),
    );
  }

  Future<void> getCategoryNewsData({
    required String la,
    required String category,
  }) async {
    emit(Newloading());
    var result = await repo.getCategoryNewsData(category: category, la: la);
    result.fold(
      (failure) => emit(Newerror(failure.errMessage)),
      (data) => emit(Newsuccess(data)),
    );
  }
}
