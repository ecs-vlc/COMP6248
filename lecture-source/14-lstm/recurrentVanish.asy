settings.outformat="pdf";
size(400,0);

import myutil;

draw((0,0)--(0,4), Arrow);
label("$x(t)$", (0,0), S);
label("$y(t) = w_1 \left(\strut x(t) + w_2 \, y(t-1)\right)$", (0,4), N);
draw((0,3)--(1,3)--(1,1)--(-0.1,1), MidArrow);
draw(circle((0,1), 0.1));
filldraw(circle((0,2), 0.3), gray);
label("$w_1$", (0,1.7), SW);
label("$w_2$", (1,2), E);


int T = 10;
pair s = (4,1);
draw(s--(s+(T+0.7,0)), Arrow);
for(int i=0; i<=T; ++i) {
  draw(s+(i,0)--s+(i,-0.2));
  if (i<T)
    label(string(i), s+(i+0.5,-0.2), S);
}

picture bg = new picture;
add(bg, currentpicture);
ship();
label("$w_1=w_2=0.9$", (9,4));
draw(s+(0,0)--s+(0,1)--s+(1,1)--s+(1,0), blue);
label("$x(t)$", s+(0,0.95), NW, blue);
ship();
real y = 0.9;
draw(s+(0,y)--s+(1,y), red);
label("$y(t)$", s+(0,0.95), SW, red);
ship();
for(int t=1; t<T; ++t) {
  draw(s+(t,0)--s+(t+1,0), blue);
  pair yc = s+(t,y);
  y = 0.9*0.9*y;
  draw(yc--s+(t,y)--s+(t+1,y), red);
  ship();
}

erase();
add(bg);
label("$w_1=w_2=1.1$", (9,4));
draw(s+(0,0)--s+(0,1)--s+(1,1)--s+(1,0), blue);
label("$x(t)$", s+(0,1.05), SW, blue);
ship();
real y = 1.1;
draw(s+(0,y)--s+(1,y), red);
label("$y(t)$", s+(0,1.05), NW, red);
ship();
for(int t=1; t<7; ++t) {
  draw(s+(t,0)--s+(t+1,0), blue);
  pair yc = s+(t,y);
  y = 1.1*1.1*y;
  draw(yc--s+(t,y)--s+(t+1,y), red);
  ship();
}
