
import 'package:meta/meta.dart';

// state의 경우 항상 초기화 과정이 필요하고 bloc에서의 output은 state인데 이를 위해서
// 사용되는 것이 update임
@immutable
class CounterState {
  final int count; // 이것이 counter를 위해 사용되어질 state(상태)

  CounterState({@required this.count});

  // state는 초기화 과정이 필요하게 되는데 이를 위한 것
  // 초기 로딩 시 CounterState의 count변수에 0을 넣어라?
  factory CounterState.empty() {
    return CounterState(count: 0);
  }

  //bloc에서의 state업데이트를 위해 사용함
  CounterState update({
    int count,
  }) {
    return copyWith(count: count);
  } 

  // bloc에서 update 실행시 값이 1씩 증가
  CounterState copyWith({
    int count,
  }) {
    return CounterState(
        count: count ?? this.count);
  }
}

