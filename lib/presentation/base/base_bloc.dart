import 'dart:async';
import 'base_event.dart';

abstract class BaseBloc {
  StreamController<bool> _loadingController = StreamController();
  StreamController<BaseEvent> _eventController = StreamController();

  set setLoading(bool isLoading) => _loadingController.sink.add(isLoading);
  get loading => _loadingController.stream;

  BaseBloc() {
    _eventController.stream.listen((event) {
      dispatch(event);
    });
  }

  void dispatch(BaseEvent event);

  void dispose() {
    _loadingController.close();
    _eventController.close();
  }
}