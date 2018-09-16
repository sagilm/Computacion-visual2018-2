int illusions = 7;
int current = 1;
//toggle illusion activation
boolean active = true;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  CafeWall();
}

void CafeWall(){
  int step = 25;
  int count = 0;
  int count2 = step;

  fill(255);
  for(int i = 0; i < height; i = i +step){
    rect(0,i,width,step);
  }
  if(active){
    for(int j = 0; j < height; j = j + step){
      if (count < step){
        count = count +5;
      }
      if (count == step &&  count2 == step ){
        count2 = count2 - 5;
      }
      if (count == step &&  count2 > 0 ){
        count2 = count2 - 5;
      }
      if(count == step &&  count2 == 0){
        count = 0;
        count2 = step;
      }
      for(int k = 0; k < width; k = k + step){
        fill(0);
        if(count < step && count2 == step){
          rect(k*2+count,j,step,step);
        }
        if(count == step && count2 > 0){
          rect(k*2+count2,j,step,step);
        }
      }
    }
  }
}
