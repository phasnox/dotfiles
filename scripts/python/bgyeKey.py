#!/usr/bin/python
import sys

coordTable = {
    "A":  [25,67,57,50,15],
    "B":  [60,26,61,70,62],
    "C":  [72,26,28,71,69],
    "D":  [80,78,06,60,36],
    "E":  [17,27,93,83,57],
    "F":  [65,01,29,04,48],
    "G":  [70,05,05,36,52],
    "H":  [68,72,56,37,23],
    "I":  [55,79,29,55,26],
    "J":  [84,85,36,55,93]
}

def main():
        args = sys.argv
        for arg in args[1:]:
                print str(getCoord(arg)) + " "

def getCoord(coord):
        x = coord[0].upper()
        y = coord[1]
        return coordTable[x][int(y)-1]
main()
