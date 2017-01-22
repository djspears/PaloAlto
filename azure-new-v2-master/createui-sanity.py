import os
import json
import time

from pprint import pprint

with open('createUiDefinition.json') as cuif:
    createUi = json.load(cuif)

with open('mainTemplate.json') as mtf:
    mt = json.load(mtf)

#print(json.dumps(createUi['parameters']['outputs'], indent=4))
#print(json.dumps(mt['parameters'], indent=4))

print('@@ Checking createUI parameters against mainTemplate parameters...')
cnt=0
for icu in createUi['parameters']['outputs']:
    cnt=cnt+1
    found=False
    for imt in mt['parameters']:
        if icu == imt:
           found=True
    if found == False:
        print('Not found: ' + icu)

ccnt=cnt
print('-- Total parameters in createUI: ' + str(cnt))

print('@@ Checking mainTemplate for default values in each parameters...')
cnt=0
for imt in mt['parameters']:
    cnt=cnt+1
    try:
        good=mt.get('parameters').get(imt).get('defaultValue')
        if good is None:
            raise
        #print('Default Value is: ' + mt.get('parameters').get(imt).get('defaultValue'))
    except Exception as e:
        found=False
        for icu in createUi['parameters']['outputs']:
            #print('icu : ' + icu + ' imt: ' + imt)
            if icu == imt:
                #print(imt + ' found in createUI template')
                found=True
        if found == False:
            print('-- ' + str(imt) + ' : Default Value not found and createUI does not have it either: ')
        #print('Default Value not found for : ' + str(imt))
        #print(e)

print('-- Total parameters in mainTemplate: ' + str(cnt))
mcnt=cnt

# mcnt - cnt actually, but lets go through again
cnt=0
for imt in mt['parameters']:
    found=False
    for icu in createUi['parameters']['outputs']:
        if icu == imt:
            found=True

    if found == False:
        cnt=cnt+1

print('-- Total parameters in mainTemplate which dont exists in createUI: ' + str(cnt))

