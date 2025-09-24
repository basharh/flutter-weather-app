import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  const fonts = {
    'Roboto': 'assets/fonts/Roboto-VariableFont_wdth,wght.ttf',
    'MaterialIcons': 'assets/fonts/MaterialIcons-Regular.otf',
  };

  await _loadFont(fonts);

  await testMain();
}

Future<void> _loadFont(Map<String, String> fonts) async {
  for (final entry in fonts.entries) {
    final fontData = File(entry.value).readAsBytes().then(
          (bytes) => ByteData.view(Uint8List.fromList(bytes).buffer),
        );
    final fontLoader = FontLoader(entry.key)..addFont(fontData);
    await fontLoader.load();
  }
}
