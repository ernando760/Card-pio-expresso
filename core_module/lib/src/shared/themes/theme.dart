import "package:flutter/material.dart";

class MaterialThemeCardapioExpresso {
  final TextTheme textTheme;

  const MaterialThemeCardapioExpresso(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF262626),
      primary: Color(0xffa50007),
      surfaceTint: Color(0xffc0000b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffea0010),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff984800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffff9144),
      onSecondaryContainer: Color(0xff3c1800),
      tertiary: Color(0xffb52330),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffff7273),
      onTertiaryContainer: Color(0xff2f0004),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff2a1614),
      onSurfaceVariant: Color(0xff5f3f3a),
      outline: Color(0xff946e69),
      outlineVariant: Color(0xffeabcb6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff412b28),
      inversePrimary: Color(0xffffb4aa),
      onInverseSurface: Color(0xfffff0ee),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      background: Color(0xFFE2E8CE),
      onBackground: Color(0xFF262626),
      primary: Color(0xff8c0005),
      surfaceTint: Color(0xffc0000b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffea0010),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6e3200),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffba5900),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff8b0019),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd43b43),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff2a1614),
      onSurfaceVariant: Color(0xff5b3b36),
      outline: Color(0xff7a5651),
      outlineVariant: Color(0xff98716c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff412b28),
      inversePrimary: Color(0xffffb4aa),
      onInverseSurface: Color(0xfffff0ee),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      background: Color(0xFFE2E8CE),
      onBackground: Color(0xFF262626),
      primary: Color(0xff4e0001),
      surfaceTint: Color(0xffc0000b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8c0005),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c1800),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6e3200),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4d0009),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8b0019),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff371d19),
      outline: Color(0xff5b3b36),
      outlineVariant: Color(0xff5b3b36),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff412b28),
      inversePrimary: Color(0xffffe7e3),
      onInverseSurface: Color(0xfffff0ee),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
        brightness: Brightness.dark,
        background: Color(0xFF262626),
        onBackground: Color(0xFFE2E8CE),
        primary: Color(0xffffb4aa),
        surfaceTint: Color(0xffffb4aa),
        onPrimary: Color(0xff690003),
        primaryContainer: Color(0xffea0010),
        onPrimaryContainer: Color(0xffffffff),
        secondary: Color(0xffffb689),
        onSecondary: Color(0xff512300),
        secondaryContainer: Color(0xfff67804),
        onSecondaryContainer: Color(0xff1b0700),
        tertiary: Color(0xffffb3b0),
        onTertiary: Color(0xff680010),
        tertiaryContainer: Color(0xffd43b43),
        onTertiaryContainer: Color(0xffffffff),
        error: Color(0xffffb4ab),
        onError: Color(0xff690005),
        errorContainer: Color(0xff93000a),
        onErrorContainer: Color(0xffffdad6),
        surface: Color(0xff210e0c),
        onSurface: Color(0xffffdad5),
        onSurfaceVariant: Color(0xffeabcb6),
        outline: Color(0xffb08781),
        outlineVariant: Color(0xff5f3f3a),
        shadow: Color(0xff000000),
        scrim: Color(0xff000000),
        inverseSurface: Color(0xffffdad5),
        inversePrimary: Color(0xffc0000b),
        onInverseSurface: Color(0xff2f1a18));
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
        brightness: Brightness.dark,
        background: Color(0xFF262626),
        onBackground: Color(0xFFE2E8CE),
        primary: Color(0xffffbab0),
        surfaceTint: Color(0xffffb4aa),
        onPrimary: Color(0xff370001),
        primaryContainer: Color(0xffff5546),
        onPrimaryContainer: Color(0xff000000),
        secondary: Color(0xffffbc93),
        onSecondary: Color(0xff290f00),
        secondaryContainer: Color(0xfff67804),
        onSecondaryContainer: Color(0xff000000),
        tertiary: Color(0xffffb9b7),
        onTertiary: Color(0xff370005),
        tertiaryContainer: Color(0xfffb575c),
        onTertiaryContainer: Color(0xff000000),
        error: Color(0xffffbab1),
        onError: Color(0xff370001),
        errorContainer: Color(0xffff5449),
        onErrorContainer: Color(0xff000000),
        surface: Color(0xff210e0c),
        onSurface: Color(0xfffff9f8),
        onSurfaceVariant: Color(0xffeec0ba),
        outline: Color(0xffc39993),
        outlineVariant: Color(0xffa17a74),
        shadow: Color(0xff000000),
        scrim: Color(0xff000000),
        inverseSurface: Color(0xffffdad5),
        inversePrimary: Color(0xff950006),
        onInverseSurface: Color(0xff2f1a18));
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
        brightness: Brightness.dark,
        background: Color(0xFF262626),
        onBackground: Color(0xFFE2E8CE),
        primary: Color(0xfffff9f8),
        surfaceTint: Color(0xffffb4aa),
        onPrimary: Color(0xff000000),
        primaryContainer: Color(0xffffbab0),
        onPrimaryContainer: Color(0xff000000),
        secondary: Color(0xfffffaf8),
        onSecondary: Color(0xff000000),
        secondaryContainer: Color(0xffffbc93),
        onSecondaryContainer: Color(0xff000000),
        tertiary: Color(0xfffff9f9),
        onTertiary: Color(0xff000000),
        tertiaryContainer: Color(0xffffb9b7),
        onTertiaryContainer: Color(0xff000000),
        error: Color(0xfffff9f9),
        onError: Color(0xff000000),
        errorContainer: Color(0xffffbab1),
        onErrorContainer: Color(0xff000000),
        surface: Color(0xff210e0c),
        onSurface: Color(0xffffffff),
        onSurfaceVariant: Color(0xfffff9f8),
        outline: Color(0xffeec0ba),
        outlineVariant: Color(0xffeec0ba),
        shadow: Color(0xff000000),
        scrim: Color(0xff000000),
        inverseSurface: Color(0xffffdad5),
        inversePrimary: Color(0xff5d0002),
        onInverseSurface: Color(0xff2f1a18));
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
