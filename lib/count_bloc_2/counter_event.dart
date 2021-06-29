import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

// 버튼 클릭시 이벤트 생성
@immutable
abstract class CounterEvent extends Equatable {
  CounterEvent([List props = const []]) : super(props);
}

// 제일 처음 페이지가 불리게 되면 실행될 작업을 위해 선언
class PageLoaded extends CounterEvent {
  @override
  String toString() {
    return 'page loaded';
  }
}

// 증가 버튼을 누르게 되면 실행
class IncrementBtnPressed  extends CounterEvent {
  @override
  String toString() {
    return 'Increment button pressed';
  }
}


