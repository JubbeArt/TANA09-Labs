# 2 Representation of Real Numbers

## 2.1

	
μ = 2<sup>-53<sup>

t = 52

## 2.3

16

## 2.4
Sign is first bit

Exponent is the following 11 bits

Fractoional is the last 52 bits

# 3 Numerical Computiation of Limits

## 3.1

x ≈ 1.6 * 10<sup>-8</sup>

Error grows for small x values

## 3.2
Error goes to 0 instead

## 3.3

R<sub>T</sub> = | f<sub>1</sub>(x) - 1 | ≤ | x / 2 |

## 3.4

f1: | R<sub>X</sub> | ≤ | μ / x |

f2: | R<sub>X</sub> | ≤ | 7 * μ / 2 |


# 4 Solutions of Non-Linear Equations

## 4.1

(1) | 2cos(x<sup>\*</sup>)cos(x<sup>\*</sup>) | < 1, Will converge

(2) | 1 / ( 2 * (1-x<sup>\*</sup>)<sup>0.5</sup> * (x<sup>\*</sup>)<sup>0.5</sup>) | > 1, Will not converge

## 4.2

φ<sub>1</sub> converges very but gets closer to the root

φ<sub>2</sub> becomes undefined (or complex) around k = 4

## 4.3

f<sup>'</sup>(x) = 2x - 4cos(x)

df = @(x) 2 * x - 4 * cox(s)

## 4.6

f = @(x) sqrt(1 + x) * exp(x / 2) - 2 * sin(2 * x) * (x + x^2)

fzero(f, 1.5)

x<sup>\*</sup> ≈ 1.3147811

## 4.7

19

## 4.8

Looks like quadratic convergence

Errors:

1.284 * 10<sup>-4</sup>

6.0246  * 10<sup>-7</sup>

1.3818 * 10<sup>-12</sup>

8.8818  * 10<sup>-16</sup>

0

## 4.9

p ≈ 2 for k = 16

## 4.10

z<sub>k+1</sub> = 2z<sub>k</sub> - yz<sub>k</sub><sup>2</sup>

## 4.11

0.25

Φ(z) = 2z - yz<sup>2</sup>
