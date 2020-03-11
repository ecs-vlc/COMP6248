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

// box around lstm
draw(box((5,-5), (65,45)), gray+linewidth(3));
draw(box((-6,-11), (75,49)), white);
label("\Large LSTM", (35, -5), S, gray);

ship();

// memory lines

label("$\bm{c}(t-1)\; \Big\{$", (2, 41), W, red);
label("$\Big\}\; \bm{c}(t)$", (70, 41), E, red);
hlines((2,40), 68, 3, red);

store();
label("\Large Long Term Memory", (35, 42), N, red);
ship();

restore();

// outputs

vlines((60,2), 38, 3, red, 1, 1);
vlines((60,-4), 6, 3, heavygreen, 1, 1);
hlines((60,-4), 8, 3, heavygreen, 1, -1);
vlines((66,-2), 8, 3, heavygreen, -1, -1);
hlines((68,4), 2, 3, heavygreen, -1, 0);
label("$\Big\}\;\bm{h}(t)$", (70,5), E, heavygreen);


tanhGates((60,18), 1, 0, 3);
store();
label(rotate(90)*Label("\Large Output"), (60, 7), W, heavygreen);
ship();
restore();
label("\large $\tanh(c_j(t)) \in \{-1,1\}$", (60, 7), W);
ship();
restore();


hlines((2,4), 48, 3, heavygreen);
label("$\bm{h}(t-1)\; \Big\{$", (2, 5), W, heavygreen);
store();
label("\Large Previous Output = Short Term Memory", (25,7), N, heavygreen);
ship();
restore();

vlines((10,-8), 11, 4, blue, 0, -1);

hlines((13, 0), 37, 4, blue, -1, 0);
label("$\bm{x}(t)$", (11.5,-10), blue);
label(rotate(90)*Label("$\bigg\{$"), (11.5, -8.6), blue);
store();
label("\Large Inputs", (30,0), S, blue);
ship();
restore();

vlines((20,6), 10, 3, heavygreen, -1);

vlines((23,3), 13, 4, blue, -1);
vlines((22,20), 20, 3, orange, 0, 1);

pair end1 = vnetwork((20,16), 7, 3);

gates((22,40), 1, 1, 3);
store();
label(rotate(90)*Label("\Large Forget Gate"), (20,18), 2W);
ship();
restore();
label("\Large $\bm{f}(t) = \bm{\sigma}(\mat{W}_{\!f} \bm{z}(t) + \bm{b}_{\!f})$", (26,21), 2E);
label("\Large $\bm{z}(t) = \left(\bm{x}(t),\bm{h}(t-1) \right)$", (27,14), 2E);
ship();
label("\Large $f_j(t)\,c_j(t-1)$", (30,40), 2SE);
label("\Large $\sigma_j(\mat{W}_{\!f} \bm{z}(t) + \bm{b}_{\!f})\,c_j(t-1)$", (30,35), 2SE);
ship();
restore();
vlines((40,6), 10, 3, heavygreen, -1);

vlines((43,3), 13, 4, blue, -1);

vlines((42,20), 20, 3, orange, 0, 1);
pair end2 = vnetwork((40,16), 7, 3, false);

addGates((42,40),1,1,3);

store();
label(rotate(90)*Label("\Large Add to Memory"), (40,18), 2W);
ship();
restore();
label(rotate(90)*Label("\Large $\bm{g}(t) = \bm{\mathrm{tanh}}(\mat{W}_{\!g} \bm{z}(t) + \bm{b}_{\!g})$"), (50,23), 2E);
ship();
restore();

vlines((30,6), 10, 3, heavygreen, -1);

vlines((33,3), 13, 4, blue, -1);

vlines((32,20), 10, 3, orange, 0, -1);
hlines((34,28), 8, 3, orange, -1, 1);
gates((42,28), 1, 1, 3);
pair end2 = vnetwork((30,16), 7, 3);
store();
label(rotate(90)*Label("\Large Gate Memory Update"), (40,18), 2W);
ship();
restore();
label(rotate(90)*Label("\Large $\bm{i}(t) = \bm{\sigma}(\mat{W}_{\!i}\bm{z}(t) + \bm{b}_{\!i})$"), (32,21), 2NW);
ship();
label(rotate(90)*Label("\Large $\bm{g}(t) = \bm{\mathrm{tanh}}(\mat{W}_{\!g} \bm{z}(t) + \bm{b}_{\!g})$"), (50,23), 2E);
label(rotate(90)*Label("\Large $\bm{f}(t) = \bm{\sigma}(\mat{W}_{\!f} \bm{z}(t) + \bm{b}_{\!f})$"), (22,21), 2NW);
label("\Large $c_j(t) = f_j(t)\,c_j(t-1) + b_f + g_j(t)\,i_j(t) + b_i$", (35, 45),2N);
ship();
restore();
hlines((54,2), 6, 3, orange, 0, 1);

hnetwork((50,0), 7, 3);
gates((60,2), 1, 1, 3);
store();
label("\Large Gate Outputs", (50,0), 2S);
ship();
restore();
label(rotate(90)*Label("\Large $\bm{o}(t) = \bm{\sigma}(\mat{W}_{\!o} \bm{z}(t) + \bm{b}_o)$"), (56,4), 2N);
ship();
label(rotate(90)*Label("\Large $h_j(t) = o_j(t)\,\tanh(c_j(t))$"), (66, 0), NE);
ship();
restore();
ship();

