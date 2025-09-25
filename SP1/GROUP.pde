class Group {
  String name;
  int groupNumber;
  Group(String tempName, int tempGroupNumber) {
    name = tempName;
    tempGroupNumber += 1; // start fra 1 til 4 istedet for 0 til 3
    groupNumber = tempGroupNumber;
  }
  void display() {
    writeGroupNames(name);
  }
  void writeGroupNames(String groupsArray) {
    int xCoordinate = 1;
    int yCoordinate = 1;
    switch (groupNumber) {
    case 1:
      xCoordinate = 50;
      yCoordinate = 50;
      break;
    case 2:
      xCoordinate = 225;
      yCoordinate = 50;
      break;
    case 3:
      xCoordinate = 50;
      yCoordinate = 50+160;
      break;
    case 4:
      xCoordinate = 225;
      yCoordinate = 50+160;
      break;
    }
    fill(0,255,255);
    textSize(30);
    text(groupsArray, xCoordinate, yCoordinate);
  }
}
