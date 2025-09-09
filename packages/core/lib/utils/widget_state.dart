import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetStateSet on Set<WidgetState> {
  bool get isNormal => isEmpty;

  bool get isHovered => contains(WidgetState.hovered);

  bool get isFocused => contains(WidgetState.focused);

  bool get isPressed => contains(WidgetState.pressed);

  bool get isDragged => contains(WidgetState.dragged);

  bool get isSelected => contains(WidgetState.selected);

  bool get isScrolledUnder => contains(WidgetState.scrolledUnder);

  bool get isDisabled => contains(WidgetState.disabled);

  bool get isError => contains(WidgetState.error);
}
