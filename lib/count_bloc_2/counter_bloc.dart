import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test2/count_bloc_2/counter_event.dart';
import 'package:flutter_test2/count_bloc_2/counter_state.dart';

// 각각의 블럭들은 if문을 통해 어떤 event에 따라 불리게 될지 결정됨
// bloc은 event를 input()으로 받아 적절한 조치를 취한 후 state를 반환하게 된다.
// 이때 state 반환을 위해 yield를 사용한다.
class CounterBolc extends Bloc<CounterEvent, CounterState> {
  @override
  // TODO: implement initialState
  // state의 초기화를 위해 사용
  CounterState get initialState => CounterState.empty();

  // 각각 이벤트에 따라 실행이 되게될 bloc들을 if문을 통해 분류
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async*{
    if(event is PageLoaded) {
      yield* _mapPageLodaedToState();
    } else if(event is IncrementBtnPressed) {
      yield* _mapIncrementBtnPressedToState();
    }
  }

  // CounterEvent 에서 PageLoaded 이벤트가 불리게되면 (초기화면)
  Stream<CounterState> _mapPageLodaedToState() async* {
    yield state.update(count:0);
  }

  // CounterEvent 에서 IncrementBtnPressed 이벤트가 불리게되면 (+버튼 클릭시)
  Stream<CounterState> _mapIncrementBtnPressedToState() async* {
    yield state.update(count: state.count + 1);
  }
}