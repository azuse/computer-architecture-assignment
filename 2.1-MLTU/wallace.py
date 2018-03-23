import math

f = open("result.txt", "w")
bw = int(raw_input("Input bit width: "))
a = raw_input("Input the identifier of multiplier a: ")
b = raw_input("Input the identifier of multiplier b: ")


layer = []
layer.append([])
for i in range(2 * bw - 1):
    if i >= bw:
        lsb = (i - bw + 1)
        msb = bw - 1
    else:
        lsb = 0
        msb = i
    layer[0].append(["%s[%d] ? %s[%d] : 1'b0" % (b, x, a, i-x) for x in range(lsb, msb + 1)])

f.write("wire ")
for i,ei in enumerate(layer[0]):
    for j,ej in enumerate(ei):
        if i or j:
            f.write(", ")
        f.write("layer_0_%d_%d" % (i, j))
        
f.write(";\n")

for i,ei in enumerate(layer[0]):
    for j,ej in enumerate(ei):
        f.write("assign layer_0_%d_%d = %s;" % (i, j, ej) + '\n')
        
layernum = 1
while(True):
    layer.append([])
    for i in range(len(layer[layernum-1]) + 1):
        layer[layernum].append([])
    s = ""
    for i in range(len(layer[layernum-1])):
        for k in range(len(layer[layernum-1][i])):
            if k % 3 == 2:
                #if i+1 != 2 * bw - 1:
                if True:
                    s += "full_adder fa_%d_%d_%d (.a(%s), .b(%s), .cprev(%s), .r(%s), .c(%s));" % (layernum, i, k / 3, "layer_%d_%d_%d" % (layernum-1, i, k-2), "layer_%d_%d_%d" % (layernum-1, i, k-1), "layer_%d_%d_%d" % (layernum-1, i, k), "layer_%d_%d_%d" % (layernum, i, len(layer[layernum][i])), "layer_%d_%d_%d" % (layernum, i+1, len(layer[layernum][i+1])))
                    layer[layernum][i+1].append(0)
                else:
                    s += "full_adder fa_%d_%d_%d (.a(%s), .b(%s), .cprev(%s), .r(%s), .c(%s));" % (layernum, i, k / 3, "layer_%d_%d_%d" % (layernum-1, i, k-2), "layer_%d_%d_%d" % (layernum-1, i, k-1), "layer_%d_%d_%d" % (layernum-1, i, k), "layer_%d_%d_%d" % (layernum, i, len(layer[layernum][i])), "null")
                s += "\n"
                layer[layernum][i].append(0)
                
            elif k == len(layer[layernum-1][i]) - 1:
                if k % 3 == 1:
                    #if i+1 != 2 * bw - 1:
                    if True:
                        s += "half_adder ha_%d_%d_%s (.a(%s), .b(%s), .r(%s), .c(%s));" % (layernum, i, 'x', "layer_%d_%d_%d" % (layernum-1, i, k-1), "layer_%d_%d_%d" % (layernum-1, i, k), "layer_%d_%d_%d" % (layernum, i, len(layer[layernum][i])), "layer_%d_%d_%d" % (layernum, i+1, len(layer[layernum][i+1])))
                        layer[layernum][i+1].append(1)
                    else:
                        s += "half_adder ha_%d_%d_%s (.a(%s), .b(%s), .r(%s), .c(%s));" % (layernum, i, 'x', "layer_%d_%d_%d" % (layernum-1, i, k-1), "layer_%d_%d_%d" % (layernum-1, i, k), "layer_%d_%d_%d" % (layernum, i, len(layer[layernum][i])), "null")
                    s += "\n"
                    layer[layernum][i].append(1)
                    
                else:
                    s += "assign %s = %s;" % ("layer_%d_%d_%d" % (layernum, i, len(layer[layernum][i])), "layer_%d_%d_%d" % (layernum-1, i, k))
                    s += "\n"
                    layer[layernum][i].append(2)
    
    s2 = "wire "
    for i in range(len(layer[layernum])):
        for j in range(len(layer[layernum][i])):
            if i or j:
                s2 += ", "
            s2 += "layer_%d_%d_%d" % (layernum, i, j)
            
    s2 += ";"
    
    f.write(s2 + '\n')
    f.write(s + '\n')
    
    if(max([len(x) for x in layer[layernum]]) <= 2):
        break
    
    layernum = layernum + 1

    
f.write("wire [%d:0] partProduct1, partProduct2;" % (2 * bw - 1,) + '\n')

s = "assign partProduct1 = {";
for i in reversed(range(2 * bw)):
    s += "layer_%d_%d_%d" % (layernum, i, 0)
    if i != 0:
        s += ", " 
        
s += "};"

f.write(s + '\n')

s = "assign partProduct2 = {";
for i in reversed(range(2 * bw)):
    
    if(len(layer[layernum][i]) == 2):
        s += "layer_%d_%d_%d" % (layernum, i, 1)
    else:
        s += "1'b0"
        
    if i != 0:
        s += ", " 
    
s += "};"

f.write(s + '\n')

print "Please refer to result.txt"
