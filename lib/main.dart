import 'dart:ui';

import 'package:soliplex_frontend/design/tokens/typography.dart';
import 'package:soliplex_frontend/soliplex_frontend.dart';

/// Entry point for the default Soliplex application.
///
/// For white-label apps, create your own main.dart with custom configuration:
/// ```dart
/// import 'package:soliplex_frontend/soliplex_frontend.dart';
///
/// Future<void> main() async {
///   await runSoliplexApp(
///     config: SoliplexConfig(
///       logo: LogoConfig(assetPath: 'assets/my_logo.png'),
///       appName: 'MyBrand',
///       defaultBackendUrl: 'https://api.mybrand.com',
///     ),
///   );
/// }
/// ```
Future<void> main() async {
  await runSoliplexApp(
    config: const SoliplexConfig(
      // When running soliplex_frontend directly as the main app, assets are
      // bundled without a package prefix.
      appName: 'AFSOC',
      logo: LogoConfig.soliplex,
      showLogoInAppBar: true,
      oauthRedirectScheme: 'ai.soliplex.client',
      theme: ThemeConfig(
        colorConfig: ColorConfig(
          light: ColorPalette(
            primary: Color(0xFF2B1F65),
            secondary: Color(0xFF0A7AFF),
            tertiary: Color(0xFFFF5934),
            background: Color(0xFFF6F6F6),
            foreground: Color(0xFF23293A),
            muted: Color(0xFFECECF0),
            mutedForeground: Color(0xFF555F78),
            border: Color(0xFFD2D1E0),
          ),
          dark: ColorPalette(
            primary: Color(0xFF663399),
            secondary: Color(0xFF0A7AFF),
            tertiary: Color(0xFFFB5432),
            background: Color(0xFF0E121C),
            foreground: Color(0xFFE1E2E5),
            muted: Color(0xFF171C29),
            mutedForeground: Color(0xFF8EA9C7),
            border: Color(0xFF363E54),
          ),
        ),
        fontConfig: FontConfig(
          bodyFont: FontFamilies.body,
          displayFont: FontFamilies.display,
          brandFont: FontFamilies.brand,
        ),
      ),
    ),
  );
}
