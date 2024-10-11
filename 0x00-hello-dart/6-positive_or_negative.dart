void main(List<String> args) {
  if (args.length != 0) {
    var num = int.parse(args[0]);

    if (num > 0) {
      print('${num} is positive');
    } else if (num == 0) {
      print('${num} is zero');
    } else {
      print('${num} is negative');
    }
  }
}
