class Team {
  String name;
  int x, y;

  //Constructer
  Team(String tempName, int tempX, int tempY) {
    name = tempName;
    x = tempX;
    y = tempY;
  }
  void display() {
    if (x == 0) {
      // 10 så det ikke står lige op af venstre side af canvas
      // 25 er størrelse af firkanten(20) + 5 så der er lidt mellemrum
      // 40 så det ikke står lige op af topppen af canvas
      // værdiger gentaget under
      x = 10;
      y = 25*y+40;
    } else if (x == 1) {
      x = 10;
      y= 25*y+(height/2);
    } else if (x == 2) {
      x = width/2;
      y= 25*y+40;
    } else if (x == 3) {
      x = width/2;
      y= 25*y+(height/2);
    }
    drawRect(x, y);
    writeTeamNames(name, x, y);
    drawFlag(name,x,y);
    println(name, x, y);
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
