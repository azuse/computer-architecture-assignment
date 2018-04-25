import math
import sys

f = open("result.txt", "w")
if len(sys.argv) != 6:
    bw = int(raw_input("Input bit width: "))
    dividend = raw_input("Input the identifier of dividend : ")
    divisor = raw_input("Input the identifier of divisor : ")
    remainder = raw_input("Input the identifier of remainder : ")
    quotient = raw_input("Input the identifier of quotient : ")
else:
    bw = int(sys.argv[1])
    dividend, divisor, remainder, quotient = tuple(sys.argv[2:6])

layers = [[] for x in range(bw+1)]

casFormatter = "CAS cas_%(layernum)d_%(casnum)d (.X(%(X)s), .Y(%(Y)s), .P(%(P)s), .Cprev(%(Cprev)s), .C(%(C)s), .S(%(S)s));"


declaration = []
assign = []

declaration.append("wire [%d:0] layer_1_S;" % (bw - 1,))
declaration.append("wire [%d:0] layer_0_C;" % (bw - 1,))


for j in reversed(range(bw)):
    layers[0].append({})
    layers[0][bw - 1 - j]["layernum"] = 0
    layers[0][bw - 1 - j]["casnum"] = j
    layers[0][bw - 1 - j]["X"] = "1'b0"
    layers[0][bw - 1 - j]["Y"] = "%s[%d]" % (divisor, j)
    layers[0][bw - 1 - j]["P"] = "1'b1"
    if j == 0:
        layers[0][bw - 1 - j]["Cprev"] = "1'b1"
    else:
        layers[0][bw - 1 - j]["Cprev"] = "layer_0_C[%d]" % (j - 1, )
        
    layers[0][bw - 1 - j]["C"] = "layer_0_C[%d]" % j

    if j == bw - 1:
        layers[0][bw - 1 - j]["S"] = "null"
    else:
        layers[0][bw - 1 - j]["S"] = "layer_1_S[%d]" % (j + 1, )

for _i in range(bw):
    i = _i + 1
    declaration.append("wire [%d:0] layer_%d_S;" % (bw - 1, i+1))
    declaration.append("wire [%d:0] layer_%d_C;" % (bw - 1, i))

    assign.append("assign layer_%d_S[%d] = %s[%d];" % (i, 0, dividend, bw - 1 - _i))

    for j in reversed(range(bw)):
        layers[i].append({})
        layers[i][bw - 1 - j]["layernum"] = i
        layers[i][bw - 1 - j]["casnum"] = j
        layers[i][bw - 1 - j]["X"] = "layer_%d_S[%d]" % (i, j)
        layers[i][bw - 1 - j]["Y"] = "%s[%d]" % (divisor, j)
        layers[i][bw - 1 - j]["P"] = "layer_%d_C[%d]" % (i-1, bw - 1)
        if j == 0:
            layers[i][bw - 1 - j]["Cprev"] = "layer_%d_C[%d]" % (i-1, bw - 1)
        else:
            layers[i][bw - 1 - j]["Cprev"] = "layer_%d_C[%d]" % (i, j - 1)
            
        layers[i][bw - 1 - j]["C"] = "layer_%d_C[%d]" % (i, j)

        if i == bw:
            layers[i][bw - 1 - j]["S"] = "%s_notFixed[%d]" % (remainder ,j, )
        else:
            if j == bw - 1:
                layers[i][bw - 1 - j]["S"] = "null"
            else:
                layers[i][bw - 1 - j]["S"] = "layer_%d_S[%d]" % (i + 1, j + 1)

declaration.append("wire [%d:0] %s_notFixed;" % (bw - 1, remainder ))
declaration.append("wire [%d:0] %s;" % (bw - 1, remainder ))
assign.append("assign %s = %s[0] ? %s_notFixed : %s_notFixed + %s ;" % (remainder, quotient, remainder, remainder, divisor, ))

declaration.append("wire [%d:0] %s;" % (bw - 1, quotient ))
for i in reversed(range(bw)):
    assign.append("assign %s[%d] = layer_%d_C[%d];" % (quotient, i, bw - i, bw - 1))
    
for s in declaration:
    f.write(s + '\n')

for s in assign:
    f.write(s + '\n')

for i,ei in enumerate(layers):
    for j,ej in enumerate(layers[i]):
        f.write(casFormatter % layers[i][j] + '\n')

f.close()
print "Please refer to result.txt"
