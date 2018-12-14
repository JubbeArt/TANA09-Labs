# 2 LU-Decomposition

## 2.1
```matlab
L = [
  1     0     0;
  0.25  1     0;
  0.5   0.666 1;
]

U = [
  4   5     7;
  0   0.75  1.25;
  0   0     1.333;
]

P = [
  0   0   1;
  1   0   0;
  0   1   0;
]
```

## 2.2
It is the same as A but which swiched rows (permutation).

## 2.3
```matlab
x = U\(L\(P*b))
```

There is no difference is the solutions.

# 3 An electric circuit

## 3.1

I<sub>2</sub> - I<sub>4</sub> - I<sub>5</sub> = 0

V<sub>4</sub> - V<sub>3</sub> = 0.1 * I<sub>4</sub>


Both are linear.

## 3.2

Kirchhoffs: row 2

Ohm: row 8

Matrix is 11x11

## 3.3

V<sub>4</sub> ≈ 1.933

I<sub>5</sub> ≈ 1.349

## 3.4

K(A) = || A || || A<sup>-1</sup> ||

## 3.5

K<sub>2</sub>(A) = 290.42

K<sub>∞</sub>(A) = 394.25

## 3.6

|| Δx || <sub>∞</sub> / || x || <sub>∞</sub> ≤
K<sub>∞</sub>(A) * || Δb || <sub>∞</sub> / || b || <sub>∞</sub> ≈  3.9425 * 0.005 / 5 = 0.39425


( || Δb || <sub>∞</sub> ≤ 0.005 )

## 3.7

|| x<sub>new</sub> - x || <sub>∞</sub> = 0.0033


# 4 Least squares and the normal equation

## 4.1

m = 1100 seems pretty good.

# 5 Real time tracking of a comet trajectory

## 5.1
(a little hard to write matrices in markdown...)

A<sub>1</sub> = (
  x<sub>1</sub><sup>2</sup>, x<sub>1</sub>y<sub>1</sub>, y<sub>1</sub>, x<sub>1</sub>, y<sub>1</sub> 
)

A<sub>n</sub> = (
  x<sub>n</sub><sup>2</sup>, x<sub>n</sub>y<sub>n</sub>, y<sub>n</sub>, x<sub>n</sub>, y<sub>n</sub> 
)

c = (c<sub>1</sub>, c<sub>2</sub>, c<sub>3</sub>, c<sub>4</sub>, c<sub>5</sub>)<sup>T</sup>

b = (-1, ..., -1)<sup>T</sup>

Full solution given by

Ac = b

## 5.2

Not successful, we get a hyperbola (?) instead. 

K(R) = 5.064 * 10<sup>5</sup>

## 5.3

61 observations.

K(R) = 1.685 * 10<sup>4</sup>

Fit was successful!

## 5.4

11 observations.

K(R) = 1.778 * 10<sup>3</sup>

Still successful!

## 5.5

Spread out >>>>>>> A lot

# 6 Automatic character recognition

## 6.3

|| TestDigit - U<sub>J</sub>U<sub>J</sub><sup>T</sup>TestDigit ||

## 6.5

1893 out of 2007 (94.3%) with k = 22

