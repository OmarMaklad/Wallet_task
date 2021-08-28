
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walet_task/tabsScreen/state.dart';


class ContactUsCubit extends Cubit<ConUsState>{
  ContactUsCubit() : super(ConUsInitState());
  static ContactUsCubit get(context)=>BlocProvider.of(context);
  int userScreenIndex=1 ;

  void screens(){
    emit(ConUsErrorState());
    print(userScreenIndex);
  }
}

