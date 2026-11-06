square(Side, Area, Perim) :-
    Area is Side * Side,
    Perim is 4 * Side.

rectangle(Width, Height, Area, Perim) :-
    Area is Width * Height,
    Perim is 2 * (Width + Height).

triangle(Base, VHeight, A, B, C, Area, Perim) :-
    Area is 0.5 * Base * VHeight,
    Perim is A + B + C.