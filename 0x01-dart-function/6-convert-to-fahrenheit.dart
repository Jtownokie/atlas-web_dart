List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    var newTemp = (temp * 9 / 5) + 32;
    return double.parse(newTemp.toStringAsFixed(2));
  }).toList();
}
