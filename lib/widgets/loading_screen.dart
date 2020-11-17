import 'package:flutter/material.dart';
import 'package:login_bloc_pattern/models/loading_screen_state.dart';

/// Widget de pantalla de carga que actualiza la pantalla una vez que se llaman
/// todos los métodos de inicialización
class LoadingScreen extends StatefulWidget {
  /// Lista de métodos que se llaman una vez que se renderiza la pantalla de
  /// carga por primera vez. Estos son los métodos que pueden actualizar los
  /// mensajes que se muestran debajo del símbolo de carga
  final List<dynamic> initializers;

  /// El nombre de la aplicación que se muestra en la parte superior de la pantalla de carga.
  final RichText title;

  /// El color de fondo que se usa como relleno cuando la imagen no ocupa la pantalla completa
  final Color backgroundColor;

  /// El estilo que se usa con el texto (mensajes) que se muestra debajo del símbolo del cargador
  final TextStyle styleTextUnderTheLoader;

  /// El widget Layout / Scaffold que se carga una vez que todos los métodos de inicialización han sido ejecutados
  final dynamic navigateToWidget;

  /// El color que se utiliza para el símbolo del cargador.
  final Color loaderColor;

  /// Imagen que se usara de fondo de la pantalla
  final Image image;

  /// El mensaje que se muestra en la primera carga del widget.
  final String initialMessage;

  /// Constructor para el widget LoadingScreen con todos los inicializadores necesarios
  LoadingScreen({
    this.initializers,
    this.navigateToWidget,
    this.loaderColor,
    this.image,
    this.title,
    this.backgroundColor = Colors.white,
    this.styleTextUnderTheLoader = const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.initialMessage,
  })  

  /// El widget depende de los inicializadores y navigateToWidget para tener un
  /// valor válido. Así afirmamos que los valores pasados son válidos y no nulos.
  : assert(initializers != null && initializers.length > 0),
        assert(navigateToWidget != null);

  /// Vincular el widget al objeto de estado personalizado
  @override
  LoadingScreenState createState() => LoadingScreenState();
}
