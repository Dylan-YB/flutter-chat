# Flutter Chat — Chat Flutter

Proyecto de chat con Flutter y Dart, basado en las capturas del documento **Flutter 2.docx**. Reproduce el encabezado «Chat Flutter», los mensajes «Mi primer mensaje» y «Mensaje de ella», y las burbujas azules a la derecha. Se agregó un campo de envío para que el ejemplo sea interactivo; los mensajes se guardan únicamente en memoria mientras la aplicación esté abierta.

## Requisitos

- Flutter SDK instalado y configurado en PATH
- Visual Studio Code con extensiones **Flutter** y **Dart**
- Google Chrome para ejecutar en web

## Abrir y ejecutar

1. Descomprime este ZIP.
2. En VS Code elige **Archivo > Abrir carpeta** y selecciona `flutter_chat_app`.
3. Abre la terminal integrada y ejecuta:

```bash
flutter pub get
flutter run -d chrome
```

Si tu Flutter requiere regenerar los archivos de plataforma, ejecuta primero `flutter create --platforms=web .` desde la carpeta del proyecto y después `flutter pub get`. Para añadir Android también puedes ejecutar `flutter create --platforms=android .`.

Para revisar los tests:

```bash
flutter test
```

## Publicar en GitHub

Crea un repositorio vacío en GitHub y, desde la terminal de VS Code dentro de la carpeta del proyecto, ejecuta:

```bash
git init
git add .
git commit -m "Proyecto Flutter de chat"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git
git push -u origin main
```

Reemplaza `TU_USUARIO` y `TU_REPOSITORIO` por los tuyos. Git y tu autenticación en GitHub deben estar configurados.

## Estructura

- `lib/main.dart`: punto de entrada
- `lib/config/theme/app_theme.dart`: colores y tema Material
- `lib/presentation/screens/chat/chat_screen.dart`: pantalla principal, listado y envío
- `lib/presentation/widgets/chat/`: burbujas de mensajes
- `web/`: configuración web
- `test/`: prueba de interfaz

**Nota:** No se incluye el SDK de Flutter ni las carpetas generadas por `flutter create` para Android/iOS. No se pudo ejecutar Flutter en el entorno de empaquetado; el proyecto está preparado para ser validado con el SDK local.
