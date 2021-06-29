import 'package:bloc/bloc.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  // 처음 bloc객체가 생겼을 때 초기 상태를 정의 해줌
  @override
  // TODO: implement initialState
  int get initialState => 0;

  // 발생한 enum객체를 인자로 받아서 이벤트가 어떤 이벤트 인지 판단하고
  // 그에 맞는 로직으로 상태를 변경
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }
}
