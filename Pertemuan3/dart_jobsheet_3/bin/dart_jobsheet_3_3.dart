void main() {
  var index;
    for (index = 10; index < 27; index++) {
        print(index);
        if (index == 21) break;
        
        if (index > 1 || index < 7) continue;
        print(index);
    }
}
