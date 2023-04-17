from dice import six_sided, four_sided, make_fair_dice
from hog import max_scoring_num_rolls, roll_dice

def make_distribution(trials_count = 1000, dice=six_sided):
    distrib = []*10
    count = 0
# max score for given dice
    # top_score = 1
    # while count <= 10000:
    #     roll = roll_dice(num_rolls, dice)
    #     if roll > top_score:
    #         top_score = roll
    #     count += 1
# end of that shit
    # for i in range(top_score):
    #     distrib.append(0)
    for i in range(0, 10):
        row = [0]*80
        counter = 0
        while counter < trials_count:
            roll = roll_dice(i+1, dice) - 1
            row[roll] += 1
            counter += 1
        for x in range(0,80):
            row[x] = round((row[x]/trials_count)*100)
        distrib.append(row)
    return distrib

def wAvg(distrib):
    weight = [0]*len(distrib)
    for i in range(len(distrib)):
        total, way = 0, 0
        for x in range(len(distrib[i])):
            total += (x+1) * distrib[i][x]
            if distrib[i][x] != 0:
                way += distrib[i][x]
            #way += distrib[i][x]
        weight[i] = total/way
        print("i =", i + 1, ", total = ",  total)
    return weight

def wAvgEach(distrib):
    for i in range(len(distrib)):
        weight = 0
        for x in range(len(distrib[i])):
            if distrib[i][x] != 0:
                weight += x
            distrib[i][x] = (distrib[i][x] * (x+1))
        for y in range(len(distrib[i]))
    return distrib

distrib = make_distribution(10000, make_fair_dice(8))
weight = wAvg(distrib)
for i in range(len(distrib)):
    print(distrib[i])
print(weight)
wdistrib = wAvgEach(distrib)
for i in range(len(wdistrib)):
    print(wdistrib[i])
