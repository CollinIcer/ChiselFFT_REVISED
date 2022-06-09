#FFT 128
import cmath
import math
FFTLength=128
COS_SIN_FP = 12
SQRT_FP = 12
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
    a = (int)(op1.real * op2.real - op1.imag * op2.imag)>>(COS_SIN_FP-1) 
    b = (int)(op1.real * op2.imag + op1.imag * op2.real)>>(COS_SIN_FP-1) 
    a = (a + 1)>>1 
    b = (b + 1)>>1 

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

fft_in = []
#for i in range (0,128):
#    fft_in.append(complex(i,i)) #DW IN = 12

fft_in.append(complex(52,54       ) )
fft_in.append(complex(42,-53      ) )
fft_in.append(complex(-87,-44     ) )
fft_in.append(complex(-11,13      ) )
fft_in.append(complex(-14,-29     ) )
fft_in.append(complex(84,40       ) )
fft_in.append(complex(53,98       ) )
fft_in.append(complex(-105,-51    ) )
fft_in.append(complex(74,-62      ) )
fft_in.append(complex(14,80       ) )
fft_in.append(complex(-115,36     ) )
fft_in.append(complex(13,-27      ) )
fft_in.append(complex(-14,22      ) )
fft_in.append(complex(82,-23      ) )
fft_in.append(complex(51,-75      ) )
fft_in.append(complex(-109,27     ) )
fft_in.append(complex(85,65       ) )
fft_in.append(complex(15,-44      ) )
fft_in.append(complex(-129,-69    ) )
fft_in.append(complex(23,8        ) )
fft_in.append(complex(-13,-11     ) )
fft_in.append(complex(61,20       ) )
fft_in.append(complex(64,94       ) )
fft_in.append(complex(-99,-29     ) )
fft_in.append(complex(83,-64      ) )
fft_in.append(complex(4,70        ) )
fft_in.append(complex(-115,61     ) )
fft_in.append(complex(47,-32      ) )
fft_in.append(complex(-32,-2      ) )
fft_in.append(complex(73,-11      ) )
fft_in.append(complex(60,-88      ) )
fft_in.append(complex(-123,28     ) )
fft_in.append(complex(81,64       ) )
fft_in.append(complex(14,-64      ) )
fft_in.append(complex(-135,-41    ) )
fft_in.append(complex(24,27       ) )
fft_in.append(complex(-5,-27      ) )
fft_in.append(complex(67,17       ) )
fft_in.append(complex(70,114      ) )
fft_in.append(complex(-116,-20    ) )
fft_in.append(complex(60,-97      ) )
fft_in.append(complex(33,50       ) )
fft_in.append(complex(-96,68      ) )
fft_in.append(complex(10,-21      ) )
fft_in.append(complex(-29,21      ) )
fft_in.append(complex(77,-13      ) )
fft_in.append(complex(65,-103     ) )
fft_in.append(complex(-109,39     ) )
fft_in.append(complex(58,77       ) )
fft_in.append(complex(34,-84      ) )
fft_in.append(complex(-118,-54    ) )
fft_in.append(complex(16,21       ) )
fft_in.append(complex(-2,-21      ) )
fft_in.append(complex(58,25       ) )
fft_in.append(complex(63,86       ) )
fft_in.append(complex(-113,-12    ) )
fft_in.append(complex(66,-80      ) )
fft_in.append(complex(36,60       ) )
fft_in.append(complex(-126,81     ) )
fft_in.append(complex(-8,-34      ) )
fft_in.append(complex(5,21        ) )
fft_in.append(complex(85,-19      ) )
fft_in.append(complex(48,-104     ) )
fft_in.append(complex(-84,39      ) )
fft_in.append(complex(79,67       ) )
fft_in.append(complex(7,-60       ) )
fft_in.append(complex(-108,-51    ) )
fft_in.append(complex(4,2         ) )
fft_in.append(complex(-11,-7      ) )
fft_in.append(complex(67,15       ) )
fft_in.append(complex(35,79       ) )
fft_in.append(complex(-92,-27     ) )
fft_in.append(complex(85,-81      ) )
fft_in.append(complex(18,87       ) )
fft_in.append(complex(-100,55     ) )
fft_in.append(complex(7,-38       ) )
fft_in.append(complex(-12,26      ) )
fft_in.append(complex(83,-27      ) )
fft_in.append(complex(31,-88      ) )
fft_in.append(complex(-101,33     ) )
fft_in.append(complex(81,70       ) )
fft_in.append(complex(14,-50      ) )
fft_in.append(complex(-118,-58    ) )
fft_in.append(complex(8,18        ) )
fft_in.append(complex(3,-22       ) )
fft_in.append(complex(76,16       ) )
fft_in.append(complex(50,97       ) )
fft_in.append(complex(-122,-33    ) )
fft_in.append(complex(67,-71      ) )
fft_in.append(complex(45,67       ) )
fft_in.append(complex(-121,58     ) )
fft_in.append(complex(0,-1        ) )
fft_in.append(complex(-8,11       ) )
fft_in.append(complex(78,-47      ) )
fft_in.append(complex(48,-96      ) )
fft_in.append(complex(-104,33     ) )
fft_in.append(complex(85,92       ) )
fft_in.append(complex(14,-64      ) )
fft_in.append(complex(-114,-65    ) )
fft_in.append(complex(16,32       ) )
fft_in.append(complex(-28,-18     ) )
fft_in.append(complex(75,25       ) )
fft_in.append(complex(72,88       ) )
fft_in.append(complex(-106,-45    ) )
fft_in.append(complex(51,-85      ) )
fft_in.append(complex(32,90       ) )
fft_in.append(complex(-88,58      ) )
fft_in.append(complex(-17,-53     ) )
fft_in.append(complex(-18,36      ) )
fft_in.append(complex(98,-26      ) )
fft_in.append(complex(52,-99      ) )
fft_in.append(complex(-111,50     ) )
fft_in.append(complex(65,70       ) )
fft_in.append(complex(13,-84      ) )
fft_in.append(complex(-113,-52    ) )
fft_in.append(complex(19,46       ) )
fft_in.append(complex(-6,-23      ) )
fft_in.append(complex(72,25       ) )
fft_in.append(complex(53,86       ) )
fft_in.append(complex(-104,-26    ) )
fft_in.append(complex(61,-87      ) )
fft_in.append(complex(36,58       ) )
fft_in.append(complex(-106,75     ) )
fft_in.append(complex(-7,-41      ) )
fft_in.append(complex(-7,45       ) )
fft_in.append(complex(58,-29      ) )
fft_in.append(complex(66,-114     ) )
fft_in.append(complex(-73,42      ) )


#print(fft_in)
#######################################################################
#fft128, radix 4 --> 4 --> 4 --> 2, reorder in, order out
#######################################################################

def fft128(fft_in):

    #stg0 bf2
    stg0_bf =[0]*128
    for i in range(0,int(FFTLength/128)): #i = 0
        for j in range(0,64):
            res = Butterfly2(fft_in[i*128+j],fft_in[i*128+j+64])
            stg0_bf[i*128+j]     = res[0]
            stg0_bf[i*128+j+64]  = res[1]

    #print(stg0_bf)
    stg0_tw =[]
    for i in range(0,FFTLength):
        lut_adr_l = i & (int)(2**(math.log(128,2)-1)-1) 
        lut_adr_h = (i >> (int)(math.log(128,2)-1)) & 0x1 #1bit
        lut_adr = lut_adr_h * lut_adr_l 
        #print("stg2tw",lut_adr)
        wn = wn_lut((int)(math.log(FFTLength/128,2)),lut_adr) #64 depth
        #print(wn)
        stg0_tw.append(ComplexMul(stg0_bf[i],wn,DW_IN+2))

    #print(stg0_tw)

     #stg2 bf4
    stg1_bf = [0]*128
    for i in range(0,int(FFTLength/64)):
        for j in range(0,16):
            res = (Butterfly4(stg0_tw[i*64+j],stg0_tw[i*64+j+16],stg0_tw[i*64+j+32],stg0_tw[i*64+j+48]))
            stg1_bf[i*64+j]     = res[0]
            stg1_bf[i*64+j+16]  = res[1]
            stg1_bf[i*64+j+32]  = res[2]
            stg1_bf[i*64+j+48]  = res[3]

    stg1_tw =[]
    for i in range(0,FFTLength):
        lut_adr_l = i & (int)(2**(math.log(64,2)-2)-1) 
        lut_adr_h = (i >> (int)(math.log(64,2)-2)) & 0x3 #2bit
        lut_adr = lut_adr_h * lut_adr_l #
        wn = wn_lut((int)(math.log(FFTLength/64,2)),lut_adr)
        #print(wn)
        stg1_tw.append(ComplexMul(stg1_bf[i],wn,DW_IN+2+2))

    stg2_bf = [0]*128
    for i in range(0,int(FFTLength/16)):
       for j in range(0,4):
           res = (Butterfly4(stg1_tw[i*16+j],stg1_tw[i*16+j+4],stg1_tw[i*16+j+8],stg1_tw[i*16+j+12]))
           stg2_bf[i*16+j]    = res[0]
           stg2_bf[i*16+j+4]  = res[1]
           stg2_bf[i*16+j+8]  = res[2]
           stg2_bf[i*16+j+12] = res[3]

    stg2_tw =[]
    for i in range(0,FFTLength):
        lut_adr_l = i & (int)(2**(math.log(16,2)-2)-1) 
        lut_adr_h = (i >> (int)(math.log(16,2)-2)) & 0x3 #2bit
        lut_adr = lut_adr_h * lut_adr_l #0 0 0 0 , 0 1 2 3, 0 2 4 6, 0 0 0 0, 0 1 2 3。。。
        wn = wn_lut((int)(math.log(FFTLength/16,2)),lut_adr)
        #print(wn)
        stg2_tw.append(ComplexMul(stg2_bf[i],wn,DW_IN+2+2+2))

    stg3_bf =[]
    for i in range(0,int(FFTLength/4)):
        res = (Butterfly4(stg2_tw[i*4],stg2_tw[i*4+1],stg2_tw[i*4+2],stg2_tw[i*4+3]))
        stg3_bf.append(res[0])
        stg3_bf.append(res[1])
        stg3_bf.append(res[2])
        stg3_bf.append(res[3])

    #last , mul 1/sqrt(fft_length)
    fft_out = [0]*128 #DW_IN+8 bit
    for i in range(0,FFTLength):
        out_real = (int)(stg3_bf[i].real * round(1/math.sqrt(FFTLength) * 2**SQRT_FP)) >> (SQRT_FP-1)
        out_real = (out_real + 1) >> 1  
        out_imag = (int)(stg3_bf[i].imag * round(1/math.sqrt(FFTLength) * 2**SQRT_FP)) >> (SQRT_FP-1)
        out_imag = (out_imag + 1) >> 1  
        out_real = clip(out_real , DW_IN)
        out_imag = clip(out_imag , DW_IN)
        fft_out[i] = complex(out_real,out_imag)

     #reorder out 
        fft_out_reorder=[]
        for i in range(0,128):
            k1 = i & 0x1
            k2 = (i >> 1) & 0x3
            k3 = (i >> 3) & 0x3
            k4 = (i >> 5) & 0x3
            #new_i = k1*4*4*2 + k2*4*2 + k3*2 + k4 
            new_i = k1*4*4*4 + k2*4*4 + k3*4 + k4 
            fft_out_reorder.append(fft_out[new_i])

    return(fft_out_reorder)

def ifft128(fft_in):
    fft_in_qi = [0]*128 #DW_IN+8 bit
    fft_out_qi = [0]*128 #DW_IN+8 bit
    ifft_out = [0]*128 #DW_IN+8 bit
    for i in range(0,FFTLength):
        fft_in_qi[i] = complex(fft_in[i].imag,fft_in[i].real)
    fft_out_qi = fft128(fft_in_qi)
    for i in range(0,FFTLength):
        ifft_out[i] = complex(fft_out_qi[i].imag,fft_out_qi[i].real)

    return ifft_out

fft_out = fft128(fft_in)
print(fft_out)
print(ifft128(fft_out))
   