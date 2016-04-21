#!/usr/bin/python2

#   This file is part of autoTest.
#   autoTest is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   autoTest is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#   You should have received a copy of the GNU General Public License
#   along with autoTest.  If not, see http://www.gnu.org/licenses/.

import time
import wiringpi

pinsA = [0, 1, 2, 3] # Most significant bit on the left so pin0 is 8
pinsB = [4, 5, 6, 7]
pinsOut = [8, 9, 10, 11, 12, 13, 14, 15]
isSignedPin = 16
isSupportedPin = 17

def numToBoolList( num, length ):
    result=[]
    for i in range(1, length+1):
        bitInPlace = ( 2**(length-i) ) & num 
        if bitInPlace:
            result.append(1)
        else:
            result.append(0)
    
    #print "converted %d to " % num
    #print result
    return result

def getResult():
    result = 0
    for i in range(7, -1, -1):
        result += wiringpi.digitalRead( pinsOut[i] )*(2**i) 

    return result

def putArgA( A ):
    out = numToBoolList(A, 4)
    for i in range(0, 4):
        wiringpi.digitalWrite( pinsA[i], out[i] )

def putArgB( B ):
    out = numToBoolList(B, 4)
    for i in range(0, 4):
        wiringpi.digitalWrite( pinsB[i], out[i] )

def runTest( start, end, delay ):
    # magic for coloured printing from https://pythonadventures.wordpress.com/2011/03/16/print-colored-text-in-terminal/
    colorred = "\033[01;31m{0}\033[00m"
    colorgrn = "\033[1;36m{0}\033[00m"

    numFails = 0
    for i in range( start, end ):
        putArgA( i )
        for j in range( start, end ):
            print ( "Testing %d * %d: expecting %d ..." % (i, j, i*j) ),
            putArgB( j )

            time.sleep( delay )

            result = getResult()
            if result == (i*j):
                print colorgrn.format("PASS")
            else:
                print colorred.format("FAIL")
                numFails += 1
    return numFails
            

def testUnsigned( delay ):
    print "Testing the unsigned multiplier"

    wiringpi.digitalWrite( isSignedPin, 0 )

    return runTest( 0, 2**4, delay)

def testSigned( delay ):
    print "Testing the signed multiplier"

    wiringpi.digitalWrite( isSignedPin, 1 )

    return runTest( -(2**3), 2**3, delay )

def main():
    delay = 1E-2 # seconds

    # set up pins
    wiringpi.wiringPiSetup()
    for pin in pinsA:
        wiringpi.pinMode( pin, 1 )
    for pin in pinsB:
        wiringpi.pinMode( pin, 1 )
    for pin in pinsOut:
        wiringpi.pinMode( pin, 0 )
    wiringpi.pinMode( isSignedPin, 1 )
    wiringpi.pinMode( isSupportedPin, 0 )
    
    numFails = testUnsigned(delay)
    numFails += testSigned(delay)

    # magic for coloured printing from https://pythonadventures.wordpress.com/2011/03/16/print-colored-text-in-terminal/
    colorred = "\033[01;31m{0}\033[00m"
    colorgrn = "\033[1;36m{0}\033[00m"
    
    if numFails > 0:
        print colorred.format("%d tests were failed" % numFails)
    else:
        print colorgrn.format("All tests passed")
    
# python boilerplate
if __name__ == '__main__':
    main()
