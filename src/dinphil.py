# -*- coding: iso-8859-1 -*-
#!/usr/bin/env python
"""
_Dining philosophers in python_ (wiki)

Effort to gain understanding of python and threads.

1. No solution, random feeder. Deadlock and starvation.
2. Resource hierarchy, partial order of chopsticks.
3. Monitor solution, starvation.
4. Chandy / Misra solution, this one uses message passing to borrow a clean chopstick.

The drinking philosophers problem is the general problem where dining philosophers is an instance.
source: http://www.cs.utexas.edu/users/misra/scannedPdf.dir/DrinkingPhil.pdf
"""

class Philosopher(object):
  pass

CLEAN = 0
DIRTY = 1
class Fork(object):
  def __init__(self):
    self.state = CLEAN

def main(av):
  pass

if __name__ == '__main__':
  from sys import argv as av
  main(av)
