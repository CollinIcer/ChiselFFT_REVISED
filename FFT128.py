#FFT 128
import cmath
import math
FFTLength=128
COS_SIN_FP = 12
DW_IN = 12

def clip(op,DW):
    a = op
    if(a>=(2**(DW-1))):
        a = 2**(DW-1)-1
    if(a<(-(2**(DW-1)))):
        a = -(2**(DW-1))
    return a


def ComplexAdd (op1,op2):
    return complex(op1.real + op2.real,op1.imag + op2.imag)
def ComplexSub (op1,op2):
    return complex(op1.real - op2.real,op1.imag - op2.imag)
def ComplexMul (op1,op2,DW):
    #return complex(op1.real * op2.real - op1.imag * op2.imag, op1.real * op2.imag + op1.imag * op2.real)
    a = (int)(op1.real * op2.real - op1.imag * op2.imag)>>COS_SIN_FP
    b = (int)(op1.real * op2.imag + op1.imag * op2.real)>>COS_SIN_FP
    return complex(clip(a,DW),clip(b,DW))

def sin_lut(k): 
    sin_ar = []
    for times in range(0,FFTLength, 2**k): 
        t = -(times * 2 * math.pi) / FFTLength
        sin_ar.append(round(math.sin(t)*2**COS_SIN_FP))
    return sin_ar
  
def cos_lut(k):
    cos_ar = []
    for times in range (0,FFTLength,2**k):
        t = -(times * 2 * math.pi) / FFTLength
        cos_ar.append(round(math.cos(t)*2**COS_SIN_FP))
    return cos_ar
  
def wn_lut(k,idx):
    return complex(cos_lut(k)[idx],sin_lut(k)[idx])

  
def Butterfly2 (in1,in2): 
    add = ComplexAdd(in1, in2)
    sub = ComplexSub(in1, in2)
    return(add,sub)

def Butterfly4(in1,in2,in3,in4):
    b0 = ComplexAdd(in1, in3)
    b1 = ComplexSub(in1, in3)
    b2 = ComplexAdd(in2, in4)
    b3 = ComplexSub(in2, in4)
    b3j = complex(b3.imag, -b3.real)
    c0 =  ComplexAdd(b0,b2)
    c1 =  ComplexAdd(b1,b3j)
    c2 =  ComplexSub(b0,b2)
    c3 =  ComplexSub(b1,b3j)
    return(c0,c1,c2,c3)

fft_in = list(range(128)) #DW IN = 12
#######################################################################
#fft128, radix 4 --> 4 --> 4 --> 2, reorder in, order out
#######################################################################

#def fft128(fft_in):

#reorder in for bf4
fft_in_reorder=[]
for i in range(0,128):
    k1 = i & 0x3
    k2 = (i >> 2) & 0x3
    k3 = (i >> 4) & 0x3
    k4 = (i >> 6) & 0x3
    new_i = k1*4*4*2 + k2*4*2 + k3*2 + k4 
    fft_in_reorder.append(fft_in[new_i])

#print(fft_in_reorder)

#stg0 bf4
stg0_bf =[]
for i in range(0,int(FFTLength/4)):
    res = (Butterfly4(fft_in_reorder[i],fft_in_reorder[i+1],fft_in_reorder[i+2],fft_in_reorder[i+3]))
    stg0_bf.append(res[0])
    stg0_bf.append(res[1])
    stg0_bf.append(res[2])
    stg0_bf.append(res[3])
print(stg0_bf)

#stg0 twiddle, 16 cos/sin lut
stg0_tw =[]
for i in range(0,FFTLength):
    lut_adr_l = i & (int)(2**(math.log(16,2)-2)-1) 
    lut_adr_h = (i >> (int)(math.log(16,2)-2)) & 0x3 #2bit
    lut_adr = lut_adr_h * lut_adr_l #0 0 0 0 , 0 1 2 3, 0 2 4 6, 0 0 0 0, 0 1 2 3。。。
    wn = wn_lut((int)(math.log(FFTLength/16,2)),lut_adr)
    #print(wn)
    stg0_tw.append(ComplexMul(stg0_bf[i],wn,DW_IN+2))

print(stg0_tw)

#stg1 bf4
stg1_bf = [0]*128
for i in range(0,int(FFTLength/16)):
    for j in range(0,4):
        res = (Butterfly4(stg0_tw[i*16+j],stg0_tw[i*16+j+4],stg0_tw[i*16+j+8],stg0_tw[i*16+j+12]))
        stg1_bf[i*16+j]    = res[0]
        stg1_bf[i*16+j+4]  = res[1]
        stg1_bf[i*16+j+8]  = res[2]
        stg1_bf[i*16+j+12] = res[3]

print(stg1_bf)

#stg1 twiddle, 64 cos/sin lut
stg1_tw =[]
for i in range(0,FFTLength):
    lut_adr_l = i & (int)(2**(math.log(64,2)-2)-1) 
    lut_adr_h = (i >> (int)(math.log(64,2)-2)) & 0x3 #2bit
    lut_adr = lut_adr_h * lut_adr_l #
    wn = wn_lut((int)(math.log(FFTLength/64,2)),lut_adr)
    #print(wn)
    stg1_tw.append(ComplexMul(stg1_bf[i],wn,DW_IN+2+2))

print(stg1_tw)

#stg2 bf4
stg2_bf = [0]*128
for i in range(0,int(FFTLength/64)):
    for j in range(0,16):
        res = (Butterfly4(stg1_tw[i*64+j],stg1_tw[i*64+j+16],stg1_tw[i*64+j+32],stg1_tw[i*64+j+48]))
        stg2_bf[i*64+j]     = res[0]
        stg2_bf[i*64+j+16]  = res[1]
        stg2_bf[i*64+j+32]  = res[2]
        stg2_bf[i*64+j+48]  = res[3]

print(stg2_bf)

#stg2 twiddle, 128 cos/sin lut
stg2_tw =[]
for i in range(0,FFTLength):
    lut_adr_l = i & (int)(2**(math.log(128,2)-2)-1) 
    lut_adr_h = (i >> (int)(math.log(128,2)-2)) & 0x3 #2bit
    lut_adr = lut_adr_h * lut_adr_l #
    wn = wn_lut((int)(math.log(FFTLength/128,2)),lut_adr)
    #print(wn)
    stg2_tw.append(ComplexMul(stg2_bf[i],wn,DW_IN+2+2+2))

print(stg2_tw)


#stg3 bf2 
stg3_bf = [0]*128
for i in range(0,int(FFTLength/128)): #i = 0
    for j in range(0,64):
        res = Butterfly2(stg2_tw[i*128+j],stg2_tw[i*128+j+64])
        stg3_bf[i*128+j]     = res[0]
        stg3_bf[i*128+j+64]  = res[1]

print(stg3_bf)


