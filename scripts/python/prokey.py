#!/usr/bin/python
import sys

prodArray=[
	  ['77','54','42','86','10','57','96','38','28','07'],
	  ['87','96','59','92','14','00','96','16','80','08'],
	  ['26','40','60','96','52','11','48','09','92','76'],
	  ['93','36','35','51','26','77','88','49','14','06'],
	  ['20','70','86','96','36','91','38','14','92','38']
	  ]

def getCol(c):
	if c.upper()=="A": return 0
	elif c.upper()=="B": return 1
	elif c.upper()=="C": return 2
	elif c.upper()=="D": return 3
	elif c.upper()=="E": return 4
	elif c.upper()=="F": return 5
	elif c.upper()=="G": return 6
	elif c.upper()=="H": return 7
	elif c.upper()=="I": return 8
	elif c.upper()=="J": return 9
	else: return -1
def decipher(s):
	col=getCol(s[0])
	row=int(s[1])
	row=row-1
	return prodArray[row][col]
def main(argv):
	soutput=""
	for arg in argv:
		soutput=soutput+decipher(arg)
	print soutput

if __name__ == "__main__":
    main(sys.argv[1:])

