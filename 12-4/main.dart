void main() {
  bool canConstruct (ransomNote,magazine) {
    List arr = List.filled(26,0);
    if(ransomNote.length>magazine.length) return false;
    for(var i = 0;i<magazine.length;i++) {
      arr[magazine.codeUnitAt(i)-'a'.codeUnitAt(0)]++;
    }
    for(var j = 0;j<ransomNote.length;j++) {
      arr[ransomNote.codeUnitAt(j)-'a'.codeUnitAt(0)]--;
      if(arr[ransomNote.codeUnitAt(j)-'a'.codeUnitAt(0)]<0) return false;
    }
    return true;
  }
  String ransomNote = 'as';
  String magazine = 'asdas';
  print(canConstruct(ransomNote,magazine));
}