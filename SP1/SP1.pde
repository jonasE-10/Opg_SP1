String[][] teams = {{"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"},
  {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"},
  {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"},
  {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"}};
String[] groups = {"GROUP A", "GROUP B", "GROUP C", "GROUP D"};
void setup() {
  size(400, 400);
  background(0, 0, 125);
  execute(teams, groups);
}
void execute(String[][] teamsArray, String[] groupsArray) {
  for (int i = 0; i < teamsArray.length; i++) {
    Group group = new Group(groupsArray[i], i);
    group.display();
    for (int j = 0; j < teamsArray[i].length; j++) {
      Team hold = new Team(teamsArray[i][j], i, j);
      hold.display();
    }
  }
}
