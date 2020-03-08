settings.outformat="pdf";
size(400,0);
import myutil;

int n0 = 10;
int n1 = 4;
int n2 = 3;
int n3 = n2;

int[] sizes = {n0, n1, n2, n3};
real[] squash = {0.7, 1.5, 1.5, 1.5};
real[] xpos = {0, 5, 10, 12};

pair pos(int layer, int i) {
  real u = 5;
  return (xpos[layer], squash[layer]*(i-sizes[layer]/2));
}

void node(pair p, bool sig=false) {
  real r = (sig)? 0.4:0.2;
  filldraw(circle(p,r), yellow);
  if (sig) {
    draw(shift(p)*((-0.2,-0.2)..(-0.1,-0.17)..(0,0)..(0.1,0.17)..(0.2,0.2)), red);
  }
}

draw(box(pos(0,0)-(1.5,0.5), (pos(3,0).x+0.5, pos(0,n0-1).y+0.5)), white);

for(int i=0; i<n0; ++i) {
  for(int j=0; j<n1; ++j) {
    draw(pos(0,i)--pos(1,j));
  }
  node(pos(0,i), false);
  if (i<3) {
    label("$x_{" + string(i+1) + "}$", pos(0,i)-(0.2,0), W);
  }
}
label("$x_{n}$", pos(0,n0-1)-(0.2,0), W);

for(int i=0; i<n1; ++i) {
  for(int j=0; j<n2; ++j) {
    draw(pos(1,i)+(0.4,0)--pos(2,j));
  }
  node(pos(1,i), true);
}

for(int i=0; i<n2; ++i) {
  draw(pos(2,i)--pos(3,i));
  node(pos(2,i), true);
  node(pos(3,i), false);
}

label(rotate(90)*Label("Input pattern, $\bm{x}$"), (-1,0));
ship();

for(int i=0; i<n1; ++i) {
  pair p = pos(1,i);
  draw((p+(0.5,0)){E}..p+(0, 0.5)..p+0.4*(Cos(160),Sin(160)), red, MidArrow);
  node(pos(1,i), true);
}

ship();
for(int i=0; i<n1; ++i) {
  pair p1 = pos(1,i);
  for(int j=0; j<n1; ++j) {
    if (abs(i-j)!=1)
      continue;
    pair p2 = pos(1,j);
    real theta = (i>j)? 160:200;
    draw((p1+(0.5,0)){E}..0.5*(p1+p2)..p2+0.4*(Cos(theta),Sin(theta)), red, MidArrow);
  }
}

ship();

for(int i=0; i<n2; ++i) {
  pair p1 = pos(2,i);
  for(int j=0; j<n1; ++j) {
    pair p2 = pos(1,j);
    real theta = (i>j)? 160:200;
    draw((p1+(0.5,0)){E}..p1+(0,0.5)..p2+0.4*(Cos(theta),Sin(theta)), red, MidArrow);
  }
}

ship();
