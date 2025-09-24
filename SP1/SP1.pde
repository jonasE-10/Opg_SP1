String[][] groups = {{"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}};
void setup() {
  size(400, 400);
  background(0, 0, 125);
  execute(groups);
}
void execute(String[][] groupsArray) {
  for (int i = 0; i < groupsArray.length; i++) {
    //String[] groupNames = {"GROUP A", "GROUP B", "GROUP C", "GROUP D"};
    //writeGroupNames(groupNames[i]);
    for (int j = 0; j < groupsArray[i].length; j++) {
      Team hold = new Team(groupsArray[i][j], i, j);
      hold.display();
    }
  }
}
