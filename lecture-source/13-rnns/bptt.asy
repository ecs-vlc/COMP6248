settings.outformat="pdf";
size(450,0);
import myutil;

void drawNetwork(pair pos, int t, bool self) {
  for(int i=-5; i<5; ++i) {
    draw(pos+(0.4*i, -2)--pos+(0.4*i, -2.4));
    if (abs(i)<3)
      draw(pos+(0.4*i, 2)--pos+(0.4*i, 2.4));
  }
  string st = "("+string(t)+")$";
  label("$\bm{x}" + st, pos+(0,-2.4), S);
  label("$\bm{y}" + st, pos+(0,2.4), N);
  if (self) {
    draw(pos+(2.5, 0.8)--pos+(3, 0.8)--pos+(3, -0.8)--pos+(2.5, -0.8), red);
    draw(pos+(3, 0.8)--pos+(3, -0.8), red, MidArrow(4));
    draw(pos+(2.5, 1.2)--pos+(3.4, 1.2)--pos+(3.4, -1.2)--pos+(2.5, -1.2), red);
    draw(pos+(3.4, 1.2)--pos+(3.4, -1.2), red, MidArrow(4));
    label("$\bm{c}("+string(t-1)+")$", pos+(3.2, 0), E, red);
  } else {
    draw(pos+(-5.5, 0.2)--pos+(-2.5,0.2), red, MidArrow(4)); 
    draw(pos+(-5.5, -0.2)--pos+(-2.5,-0.2), red, MidArrow(4));
    label("$\bm{c}("+string(t-1)+")$", pos+(-4,0.2), N, red);
  }
  draw(box(pos+(-2.5,-2),pos+(2.5,2)), linewidth(1.5));
  label("\Huge $\mat{W}$", pos);
}

void bb() {
  draw(box((-6,-4),(28,4)), white);
}

for(int t=1; t<5; ++t) {
  erase();
  bb();
  drawNetwork((0,0), t, true);
  ship();
}

erase();
bb();
for(int t=1; t<5; ++t) {
  drawNetwork((8*(t-1),0), t, false);
  ship();
}
