
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent{}

final class CounterIncrement extends CounterEvent{

}

final class CounterDecrement extends CounterEvent{


}

class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc(): super(0){
    on<CounterIncrement>((event, emit){
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit){
      if(state == 0){
        return ;
      }
      emit(state - 1);
    });
  }


}
