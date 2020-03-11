settings.outformat="pdf";
size(620,0);
import myutil;

void hlines(pair start, real len, int n, pen col, int offStart=0, int offEnd=0) {
  for(int i=0; i<n; ++i) {
    draw(start+(i*offStart, i)--start+(len+i*offEnd,i), col);
  }
}

void vlines(pair start, real len, int n, pen col, int offStart=0, int offEnd=0) {
  for(int i=0; i<n; ++i) {
    draw(start+(i,i*offStart)--start+(i,len+i*offEnd), col);
  }
}

pair vnetwork(pair start, int n, int m, bool sigmoid=true) {
  pair offset = start + (0.5*(n-m), 4);
  for (int i=0; i<n; ++i) {
    for (int j=0; j<m; ++j) {
      draw(start+(i,0)--offset+(j,0));
    }
    filldraw(circle(start+(i,0), 0.3), white);
  }
  for (int j=0; j<m; ++j) {
    filldraw(circle(offset+(j,0), 0.3), white);
  }
  if (sigmoid)
    label("$\sigma$", 0.5*(start+offset+(n+m-2,0)), E, gray);
  else
    label("$\tanh$", 0.5*(start+offset+(n+m-2,0)), E, gray);
  return offset;
}

pair hnetwork(pair start, int n, int m) {
  pair offset = start + (4, 0.5*(n-m));
  for (int i=0; i<n; ++i) {
    for (int j=0; j<m; ++j) {
      draw(start+(0,i)--offset+(0,j));
    }
    filldraw(circle(start+(0,i), 0.3), white);
  }
  for (int j=0; j<m; ++j) {
    filldraw(circle(offset+(0,j), 0.3), white);
  }
  label("$\sigma$", 0.5*(start+offset+(0, n+m-2)), N, gray);
  return offset;
}

void gates(pair start, int lef, int upp, int n) {
  for (int i=0; i<n; ++i) {
    pair pos = start+i*(lef,upp);
    filldraw(circle(pos, 0.4), white);
    filldraw(circle(pos, 0.1), black);
  }
  draw(box(start+2*(-lef,-upp), start+(1+n)*(lef,upp)), gray);
  label("$\odot$", start+((1+n)*lef, -2*upp), NW, gray(0.1));
}

void subgates(pair start, int lef, int upp, int n) {
  for (int i=0; i<n; ++i) {
    pair pos = start+i*(lef,0) + (0,1);
    filldraw(circle(pos, 0.4), white);
    draw(pos+(-0.4,0)--pos+(0.4,0));
  }
  draw(box(start+2*(-lef,-upp), start+(1+n)*(lef,upp)), gray);
  label("$1-$", start+((1+n)*lef, -2*upp), NW, gray(0.1));
}

void addGates(pair start, int lef, int upp, int n) {
  for (int i=0; i<n; ++i) {
    pair pos = start+i*(lef,upp);
    filldraw(circle(pos, 0.4), white);
    
    real u = 0.4;
    draw(pos+(u,0)--pos-(u,0));
    draw(pos+(0,u)--pos-(0,u));

  }
  draw(box(start+2*(-lef,-upp), start+(1+n)*(lef,upp)), gray);
  label("$\oplus$", start+((1+n)*lef, -2*upp), NW, gray(0.1));
}

void tanhGates(pair start, int lef, int upp, int n) {
  for (int i=0; i<n; ++i) {
    pair pos = start+i*(lef, upp);
    filldraw(circle(pos, 0.4), white);
    pair u = 0.4*(Cos(30), Sin(30));
    draw((pos-u)::(pos-u+(0.1,0))::pos::(pos+u+(-0.1,0))::(pos+u));
  }
  pair mid = start+(n-1)*(lef,upp)/2;
  real s = n*max(lef, upp);
  draw(box(mid-(s,s), mid+(s,s)), gray);
  label(rotate(90)*Label("$\tanh$"), mid+(s,-s), NW, gray);
}

picture backgroundPic = new picture;

void store() {
  add(backgroundPic, currentpicture);
}

void restore() {
  erase();
  add(backgroundPic);
}

// box around gru
draw(box((5,-5), (65,45)), gray+linewidth(3));
draw(box((-6,-11), (75,49)), white);
label("\Large GRU", (35, -5), S, gray);

// memory lines

label("$\bm{h}(t-1)\; \Big\{$", (2, 41), W, red);
label("$\Big\}\; \bm{h}(t)$", (70, 41), E, red);
hlines((2,40), 68, 3, red);

vlines((10,12), 28, 3, red, 1, 1);
hlines((10,12), 32, 3, red, 1, -1);
vlines((40,14), 2, 3, red, -1, 0);
vlines((30,14), 2, 3, red, -1, 0);

// outputs

vlines((58,20), 20, 3, orange, 0, 1);


hlines((22,4), 36, 3, heavygreen, 1, -1);
vlines((56,6), 10, 3, heavygreen, -1, 0);

vlines((10,-8), 11, 4, blue, 0, -1);
hlines((13, 0), 49, 4, blue, -1, -1);
hlines((13, 8), 33, 4, blue, -1, -1);
vlines((43, 11), 5, 4, blue, -1, 0);
vlines((59, 3), 13, 4, blue, -1, 0);
label("$\bm{x}(t)$", (11.5,-10), blue);
label(rotate(90)*Label("$\bigg\{$"), (11.5, -8.6), blue);

vlines((22,4), 20, 3, heavygreen, 1, 1);

vlines((10,3), 8, 4, blue, -1, -1);
vlines((22,24), 16, 3, red, 1, 1);

vlines((42,18), 22, 3, orange, 0, 1);
pair end2 = vnetwork((40,16), 7, 3, true);

addGates((58,40),1,1,3);

vlines((33,11), 5, 4, blue, -1);

vlines((32,16), 8, 3, orange, 0, 1);
hlines((22,24), 10, 3, orange, 1, 1);

hlines((42,24), 16, 3, orange, 1, 1);

vnetwork((56,16), 7, 3, false);
gates((22,24), 1, 1, 3);

gates((42,40), 1, 1, 3);

subgates((42,30), 1, 1, 3);

gates((58,24), 1, 1, 3);
vnetwork((30,16), 7, 3);
label(Label("\Large $\bm{r}_t$"), (33.5,21), 2E);
label(Label("\Large $\bm{z}_t$"), (43.5,21), 2E);
label(Label("\Large $\bm{n}_t$"), (59.5,21), 2E);

store();
restore();
ship();

