#!/usr/bin/env python

def timeit(fun):
	from time import time
	def timed(*args, **kwargs):
		ts = time()
		obj = fun(*args, **kwargs)
		te = time()
		time_elapsed = te - ts
		print "Time elapsed:", time_elapsed
		return obj
	return timed

def log_entry(fun):
	def wrapper(*args, **kwargs):
		print "Entering %s with (*args, **kwargs): (%s, %s)" % (fun.func_name, str(args), str(kwargs))
		obj = fun(*args, **kwargs)
		print "Exiting %s" % fun.func_name
		return obj
	return wrapper

@timeit
@log_entry
def main(av):
	print av

if __name__ == '__main__':
	from sys import argv as av
	main(av)
	