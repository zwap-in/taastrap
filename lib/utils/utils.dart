/// Check if string is a numeric type
bool isNumeric(String s) {
  return int.tryParse(s) != null;
}

/// Mapping device type with sizes names
Map<int, String> mappingSizes = {
  0: "xs",
  1: "sm",
  2: "md",
  3: "lg",
  4: "xl"
};