import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_app/constants/index.dart';
import 'package:help_app/generated/colors.gen.dart';

/// Class that contains all the different styles of an app
class Style {
  /// Custom page transitions
  static const _pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static TextStyle get elevatedButtonTextStyleDark {
    return const TextStyle(
      fontSize: 14,
      color: Colors.black,
    );
  }

  /// Yellow style
  // Example for Experimental Theme
  static ThemeData get experimental {
    const darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF66DBB2),
      onPrimary: Color(0xFF003829),
      primaryContainer: Color(0xFF00513C),
      onPrimaryContainer: Color(0xFF83F8CD),
      secondary: Color(0xFF51DBCD),
      onSecondary: Color(0xFF003733),
      secondaryContainer: Color(0xFF00504A),
      onSecondaryContainer: Color(0xFF72F7E9),
      tertiary: Color(0xFFA7CCE0),
      onTertiary: Color(0xFF0A3445),
      tertiaryContainer: Color(0xFF264B5C),
      onTertiaryContainer: Color(0xFFC2E8FD),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      surface: Color(0xFF191C1A), // Updated
      onSurface: Color(0xFFE1E3E0), // Updated
      surfaceContainerHighest: Color(0xFF404944), // Updated
      onSurfaceVariant: Color(0xFFBFC9C2),
      outline: Color(0xFF89938D),
      onInverseSurface: Color(0xFF191C1A),
      inverseSurface: Color(0xFFE1E3E0),
      inversePrimary: Color(0xFF006C51),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF66DBB2),
      outlineVariant: Color(0xFF404944),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }

  static ThemeData get lightGoldTheme {
    const lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF8F4E00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFDCC1),
      onPrimaryContainer: Color(0xFF2E1500),
      secondary: Color(0xFF745943),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDCC1),
      onSecondaryContainer: Color(0xFF2A1707),
      tertiary: Color(0xFF5B6237),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFDFE7B1),
      onTertiaryContainer: Color(0xFF181E00),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFFFFFBFF), // Replaced background with surface
      onSurface: Color(0xFF201B17), // Replaced onBackground with onSurface
      surfaceContainerHighest: Color(0xFFF3DFD1), // Replaced surfaceVariant
      onSurfaceVariant: Color(0xFF51443B),
      outline: Color(0xFF837469),
      onInverseSurface: Color(0xFFFAEFE8),
      inverseSurface: Color(0xFF352F2B),
      inversePrimary: Color(0xFFFFB779),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF8F4E00),
      outlineVariant: Color(0xFFD6C3B6),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
  }

  static ColorScheme myColorScheme = const ColorScheme(
    brightness: Brightness.light,
    // Core Brand
    primary: Color(0xFF2E8B57), // Primary Green
    onPrimary: Color(0xFFFFFFFF), // White text on primary
    primaryContainer: Color(0xFF7CCB9C), // Lighter green container
    onPrimaryContainer: Color(0xFF00210F), // Darker green text on container

    secondary: Color(0xFFFFDAB9), // Peach accent
    onSecondary: Color(0xFF000000), // Black text on peach
    secondaryContainer: Color(0xFFFFE5CA), // Lighter peach container
    onSecondaryContainer: Color(0xFF2E1500), // Darker text on light peach

    tertiary: Color(0xFFC0392B), // Red accent (tertiary)
    onTertiary: Color(0xFFFFFFFF), // White text on red
    tertiaryContainer: Color(0xFFFFEBE8), // Light red container
    onTertiaryContainer: Color(0xFF3F0A05), // Dark text on light red

    error: Color(0xFFFF6F61), // Coral as error color
    onError: Color(0xFFFFFFFF), // White text on error
    errorContainer: Color(0xFFFFD8D5), // Light coral container for error states
    onErrorContainer: Color(0xFF410002), // Dark text on light error container

    // Surfaces & Background
    surface: Color(0xFFFFFFFF), // White surface
    onSurface: Color(0xFF000000), // Black text on surface

    // Additional variants
    surfaceContainerHighest:
        Color(0xFF87CEEB), // Light blue variant (for cards, etc.)
    onSurfaceVariant: Color(0xFF1A3C4B), // Dark text on blue variant

    outline: Color(0xFF808000), // Olive outline
    shadow: Color(0xFF000000), // Standard black shadow
    scrim: Color(0xFF000000), // Black scrim for overlays

    inverseSurface: Color(0xFF1A1A1A), // Dark inverse surface
    onInverseSurface: Color(0xFFF4F4F4), // Light text on dark inverse
    inversePrimary: Color(0xFFC7F5DA), // Lighter green for inverse usage
    surfaceTint: Color(0xFF2E8B57), // Tint color used by M3 components
  );

  static ThemeData helpAppLightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: myColorScheme,
    // Customize text theme, app bar theme, etc. as needed:
    textTheme: ThemeData.light().textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: myColorScheme.primary,
      foregroundColor: myColorScheme.onPrimary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: myColorScheme.primary,
      foregroundColor: myColorScheme.onPrimary,
    ),
  );
  static ThemeData get darkGoldTheme {
    const darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF8F4E00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFDCC1),
      onPrimaryContainer: Color(0xFF2E1500),
      secondary: Color(0xFF745943),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDCC1),
      onSecondaryContainer: Color(0xFF2A1707),
      tertiary: Color(0xFF5B6237),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFDFE7B1),
      onTertiaryContainer: Color(0xFF181E00),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFF201B17), // Replaced background with surface
      onSurface: Color(0xFFE1E3E0), // Replaced onBackground with onSurface
      surfaceContainerHighest: Color(0xFF3F4945), // Replaced surfaceVariant
      onSurfaceVariant: Color(0xFFBFC9C3),
      outline: Color(0xFF837469),
      onInverseSurface: Color(0xFF201B17),
      inverseSurface: Color(0xFFE1E3E0),
      inversePrimary: Color(0xFFFFB779),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF8F4E00),
      outlineVariant: Color(0xFFD6C3B6),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }

  static ThemeData get lightMintTheme {
    const lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF006B55),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF7FF8D3),
      onPrimaryContainer: Color(0xFF002018),
      secondary: Color(0xFF4B635A),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFCEE9DD),
      onSecondaryContainer: Color(0xFF072019),
      tertiary: Color(0xFF406376),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFC4E7FF),
      onTertiaryContainer: Color(0xFF001E2C),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFFFBFDFA), // Replaced background with surface
      onSurface: Color(0xFF191C1B), // Replaced onBackground with onSurface
      surfaceContainerHighest: Color(0xFFDBE5DF), // Replaced surfaceVariant
      onSurfaceVariant: Color(0xFF3F4945),
      outline: Color(0xFF6F7975),
      onInverseSurface: Color(0xFFEFF1EE),
      inverseSurface: Color(0xFF2E312F),
      inversePrimary: Color(0xFF60DBB8),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006B55),
      outlineVariant: Color(0xFFBFC9C3),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
  }

  static ThemeData get darkMintTheme {
    const darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF60DBB8),
      onPrimary: Color(0xFF00382B),
      primaryContainer: Color(0xFF005140),
      onPrimaryContainer: Color(0xFF7FF8D3),
      secondary: Color(0xFFB2CCC1),
      onSecondary: Color(0xFF1E352D),
      secondaryContainer: Color(0xFF344C43),
      onSecondaryContainer: Color(0xFFCEE9DD),
      tertiary: Color(0xFFA8CBE2),
      onTertiary: Color(0xFF0D3446),
      tertiaryContainer: Color(0xFF284B5D),
      onTertiaryContainer: Color(0xFFC4E7FF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      surface: Color(0xFF191C1B), // Updated
      onSurface: Color(0xFFE1E3E0), // Updated
      surfaceContainerHighest: Color(0xFF3F4945), // Updated
      onSurfaceVariant: Color(0xFFBFC9C3),
      outline: Color(0xFF89938E),
      onInverseSurface: Color(0xFF191C1B),
      inverseSurface: Color(0xFFE1E3E0),
      inversePrimary: Color(0xFF006B55),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF60DBB8),
      outlineVariant: Color(0xFF3F4945),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }

  /// Light style
  static ThemeData get light {
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: ColorName.accentLight,
        secondary: ColorName.accentLight,
        onSecondary: Colors.white,
      ),
      primaryColor: ColorName.primaryLight,
      scaffoldBackgroundColor: ColorName.backgroundLight,
      dividerColor: ColorName.dividerLight,
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
    );
  }

  /// Dark style
  static ThemeData get dark {
    final base = ThemeData.dark();
    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: ColorName.accentDark,
        secondary: ColorName.accentDark,
      ),
      primaryColor: ColorName.primaryDark,
      canvasColor: ColorName.canvasDark,
      scaffoldBackgroundColor: ColorName.backgroundDark,
      cardColor: ColorName.cardDark,
      dividerColor: ColorName.dividerDark,
      dialogBackgroundColor: ColorName.cardDark,
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
    );
  }

  static PopupMenuThemeData _buildPopupMenuThemeData() {
    return PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiusSize.popupMenuBorderRadius),
      ),
    );
  }

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;

    return textTheme.copyWith(
      displayLarge:
          textTheme.displayLarge?.copyWith(fontSize: FontSizes.headline1),
      displaySmall:
          textTheme.displaySmall?.copyWith(fontSize: FontSizes.headline2),
      headlineMedium:
          textTheme.headlineMedium?.copyWith(fontSize: FontSizes.headline3),
      headlineSmall:
          textTheme.headlineSmall?.copyWith(fontSize: FontSizes.headline4),
      titleLarge: textTheme.titleLarge?.copyWith(fontSize: FontSizes.headline5),
      titleMedium:
          textTheme.titleMedium?.copyWith(fontSize: FontSizes.headline6),
    );
  }
}
