usepackage("bm");
usepackage("amsmath");
usepackage("amsfonts");
texpreamble("\DeclareMathAlphabet{\mat}{U}{eur}{b}{n}");
texpreamble("\newcommand{\tr}{\mathsf{T}}");

void ship() {
  static int n=0;
  string fn = outprefix() + "-" + string(n);
  ++n;
  shipout(fn);
}

real innerangle = radians(60);
real outerangle = radians(70);
real midangle = radians(0);
private real defaultratio = .14;
path brace(pair a, pair b, real amplitude = defaultratio*length(b-a)) {
  transform t = identity();
  real length = length(b-a);
  real sign = (amplitude < 0 ? -1 : 1);
  path brace;
  if (abs(amplitude) < defaultratio*length) {
    real slope = 2*defaultratio;
    real controldist = (abs(amplitude)/2) / slope;
    brace = (0,0){expi(sign*outerangle)} :: {expi(sign*midangle)}(controldist, amplitude/2) :: {expi(sign*midangle)} (length/2 - controldist,amplitude/2) :: {expi(sign*innerangle)} (length/2, amplitude) {expi(-sign*innerangle)} :: {expi(-sign*midangle)} (length/2 + controldist, amplitude/2) :: {expi(-sign*midangle)} (length-controldist, amplitude/2) :: {expi(-sign*outerangle)} (length,0);
  } else {
    brace = (0,0){expi(sign*outerangle)} ::
    {expi(sign*midangle)}(length/4, amplitude/2)
               :: {expi(sign*innerangle)} (length/2, amplitude)
                            {expi(-sign*innerangle)}
    :: {expi(-sign*midangle)}(3*length/4, amplitude/2) ::
    {expi(-sign*outerangle)} (length,0);
  }
  real angle = degrees(atan2((b-a).y, (b-a).x));
  t = rotate(angle)*t;
  t = shift(a) * t;
  return t * brace;
}
