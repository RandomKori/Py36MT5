cnt=0

def tickcount():
    global cnt
    cnt=cnt+1
    return cnt

def mtmul(x,y):
    z=x*y
    return z

def mullist(x,y):
    z=[]
    for i in range(0,len(x)):
        z.append(x[i]*y[i])
    return z

print("OK")