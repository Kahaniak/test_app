import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'color_event.dart';

class ColorBloc {
  // Let's create initial state. In our case it will be initial color: White
  Color _color = Color(0xffffffff);

  final _colorStateController = StreamController<Color>();
  StreamSink<Color> get _updatedColor => _colorStateController.sink;
  // Create stream that outputs the data, for state.
  Stream<Color> get color => _colorStateController.stream;

  final _colorEventController = StreamController<ColorEvent>();
  // Create stream for the events inputs
  Sink<ColorEvent> get colorEventSink => _colorEventController.sink;

  ColorBloc (){
    // The Bloc will listen to the events. If any will occur,
    // the Bloc will map it to the according state.
    _colorEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(ColorEvent event) {
    // If event is ChangeColor, change the color to the random one.
    if (event is ChangeColor){
      _color = Color(Random().nextInt(0xffffffff));
    }
    // If event is ChangeColorToDefault, change the color to the initial value.
    if (event is ChangeColorToDefault){
      _color = Color(0xffffffff);
    }

    _updatedColor.add(_color);
  }
}