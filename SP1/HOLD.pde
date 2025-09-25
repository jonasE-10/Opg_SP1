class Team {
  String name;
  int groupNumber, placeNumber;

  //Constructer
  Team(String tempName, int tempGroupNumber, int tempPlaceNumber) {
    name = tempName;
    groupNumber = tempGroupNumber;
    placeNumber = tempPlaceNumber;
  }
  void display() {
    
    if (groupNumber == 0) {
      // 10 så det ikke står lige op af venstre side af canvas
      // 25 er størrelse af firkanten(20) + 5 så der er lidt mellemrum
      // 80&40 så det ikke står lige op af topppen af canvas
      // værdiger gentaget under
      groupNumber = 10;
      placeNumber = 25*placeNumber+80;
    } else if (groupNumber == 1) {
      groupNumber = 10;
      placeNumber= 25*placeNumber+(height/2)+40;
    } else if (groupNumber == 2) {
      groupNumber = width/2;
      placeNumber= 25*placeNumber+80;
    } else if (groupNumber == 3) {
      groupNumber = width/2;
      placeNumber= 25*placeNumber+(height/2)+40;
    }
    
    drawRect(groupNumber, placeNumber);
    writeTeamNames(name, groupNumber, placeNumber);
    drawFlag(name, groupNumber, placeNumber);
    //println(name, groupNumber, placeNumber); // Tester
  }
  
  void writeTeamNames(String groupsArray, int x, int y) {
    fill(0);
    textSize(15);
    text(groupsArray, 40+x, y); //40 giver afstand fra billede til Navn
  }
  
  void drawRect(int x, int y) {
    fill(255);
    rect(x, y-15, (width/2)-20, 20); //-15 er tekst størrelsen fra textSize
    fill(0, 255, 255);
    rect(x+((width/2)-25), y-15, 5, 20); //-25 er størrelsen på fortegnet firkant minus egen/ny firkant
  }
  
  void drawFlag(String teamName, int x, int y) {
    PImage img;
    img = loadImage("/flag/"+teamName.substring(0, 1)+
      teamName.substring(1, teamName.length()).toLowerCase()+".png");
    image(img, x, y-15, 35, 20);
    // -15 er pga teksten! teksten tegner fra "nederste hjørne og op" (tror jeg)
    // 35 bredden på billedet
    // 20 højden = højden af rect
  }
}
