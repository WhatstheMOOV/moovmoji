import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCustomizer.dart';

/// Defines the configuration of the overall visual [theme] for a [MoovmojiCustomizer]
/// and the widgets within it.
///
/// The [MoovmojiCustomizer]'s `theme` property can be used to configure the appearance
/// of the entire widget.
///
/// You can set the attributes of this class to make the customizer look more in
/// line with your app's own theme and style.
///
/// See more:
/// * [FluttermojiThemeData.standard] which is applied by default to the widgets.
class FluttermojiThemeData {
  /// Customize the style of the attributes' titles at the top
  /// of the [MoovmojiCustomizer]
  final TextStyle labelTextStyle;

  /// Background color of the top and bottom rows of the [MoovmojiCustomizer]
  final Color primaryBgColor;

  /// Background color of the grid area of the [MoovmojiCustomizer]
  final Color secondaryBgColor;

  /// Box decoration style of a selected tile in a grid of [MoovmojiCustomizer]
  ///
  /// Defaults to a box with green borders.
  final Decoration selectedTileDecoration;

  /// Box decoration style of an uselected tile in a grid of [MoovmojiCustomizer]
  ///
  /// Defaults to [null].
  final Decoration? unselectedTileDecoration;

  /// Customize the color of the default
  /// save button in [FluttermojiSaveButton]
  final Color iconColor;

  /// Color of a selected icon in the bottom row of [MoovmojiCustomizer]
  final Color selectedIconColor;

  /// Color of an unselected icon in the bottom row of [MoovmojiCustomizer]
  final Color unselectedIconColor;

  /// Box decoration style of the [MoovmojiCustomizer]
  final Decoration boxDecoration;

  /// Define the scroll behaviour of all scrollabes inside
  /// the [MoovmojiCustomizer]
  final ScrollPhysics scrollPhysics;

  /// Padding inside each tile in the grids of the [MoovmojiCustomizer]
  final EdgeInsetsGeometry tilePadding;

  /// Margin outside each tile in the grids of the [MoovmojiCustomizer]
  final EdgeInsetsGeometry tileMargin;

  /// Creates a visual [theme] for the [MoovmojiCustomizer]
  /// and the widgets within it.
  ///
  /// You can set the attributes of this class to make the customizer look more in
  /// line with your app's own theme and style.
  ///
  /// See more:
  /// * [FluttermojiThemeData.standard] which is applied by default to the widgets.
  FluttermojiThemeData({
    TextStyle? labelTextStyle,
    Color? primaryBgColor,
    Color? secondaryBgColor,
    Decoration? selectedTileDecoration,
    Decoration? unselectedTileDecoration,
    Color? iconColor,
    Color? selectedIconColor,
    Color? unselectedIconColor,
    Decoration? boxDecoration,
    ScrollPhysics? scrollPhysics,
    EdgeInsetsGeometry? tilePadding,
    EdgeInsetsGeometry? tileMargin,
  })  : this.primaryBgColor = primaryBgColor ?? const Color(0xFFFFFFFF),
        this.secondaryBgColor = secondaryBgColor ?? const Color(0xFFF1F1F1),
        this.iconColor = iconColor ?? const Color(0xFF9C9C9C),
        this.selectedIconColor = selectedIconColor ?? const Color(0xFF424242),
        this.unselectedIconColor =
            unselectedIconColor ?? const Color(0xFF9C9C9C),
        this.selectedTileDecoration = selectedTileDecoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: const Color(0xFF00FF00),
                width: 3.0,
              ),
            ),
        this.unselectedTileDecoration = unselectedTileDecoration,
        this.boxDecoration = boxDecoration ??
            BoxDecoration(borderRadius: BorderRadius.circular(18)),
        this.labelTextStyle = labelTextStyle ??
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        this.scrollPhysics = scrollPhysics ?? const ClampingScrollPhysics(),
        this.tileMargin = const EdgeInsets.all(2.0),
        this.tilePadding = const EdgeInsets.all(2.0);

  FluttermojiThemeData copyWith({
    TextStyle? labelTextStyle,
    Color? primaryBgColor,
    Color? secondaryBgColor,
    Decoration? selectedTileDecoration,
    Decoration? unselectedTileDecoration,
    Color? iconColor,
    Color? selectedIconColor,
    Decoration? boxDecoration,
    ScrollPhysics? scrollPhysics,
    EdgeInsetsGeometry? tilePadding,
    EdgeInsetsGeometry? tileMargin,
  }) {
    return FluttermojiThemeData(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      primaryBgColor: primaryBgColor ?? this.primaryBgColor,
      secondaryBgColor: secondaryBgColor ?? this.secondaryBgColor,
      selectedTileDecoration:
          selectedTileDecoration ?? this.selectedTileDecoration,
      unselectedTileDecoration:
          unselectedTileDecoration ?? this.unselectedTileDecoration,
      iconColor: iconColor ?? this.iconColor,
      selectedIconColor: selectedIconColor ?? this.selectedIconColor,
      boxDecoration: boxDecoration ?? this.boxDecoration,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      tilePadding: tilePadding ?? this.tilePadding,
      tileMargin: tileMargin ?? this.tileMargin,
    );
  }

  static FluttermojiThemeData standard = FluttermojiThemeData(
    primaryBgColor: const Color(0xFFFFFFFF),
    secondaryBgColor: const Color(0xFFF1F1F1),
    iconColor: const Color(0xFF9C9C9C),
    selectedIconColor: const Color(0xFF424242),
    selectedTileDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(
        color: Color(0xFF00FF00),
        width: 3.0,
      ),
    ),
    unselectedTileDecoration: null,
    boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
    labelTextStyle:
        const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
    scrollPhysics: const ClampingScrollPhysics(),
    tileMargin: const EdgeInsets.all(2.0),
    tilePadding: const EdgeInsets.all(2.0),
  );
}
