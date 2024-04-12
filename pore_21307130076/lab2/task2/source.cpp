# include <cstdio>
# include <string>


class A {
public:
    explicit A(int x) { 
        this->x = x; 
    }
private:
    
    char var_slCmNhpAkJ; 
    
    char var_oJtyRgsipC; 
    
    char var_GamptJtzVn; 
    
    short var_FrCydvDgFx; 
    
    short var_cysbDjRwMN; 
    
    long long var_wZJoFTGZis; 
    
    char var_akbHmPSMIT; 
    
    short var_vWvJpokbCx; 
    
    int var_TaVbTFJZHq; 
    
    char var_CpIPWIxozm; 
    
    // 需要访问的变量
    int x;
    
    char var_mNfPaLBcXn; 
    
    int var_oXAcBMJVnE; 
    
    long long var_TEDgYhSfzG; 
    
    short var_PZkcTDEqYF; 
    
    long long var_TSEYnDWGgf; 
    
    long long var_AcxkVzLyiA; 
    
    long long var_uoRmmTyRUY; 
    
    short var_YvCzCJMFvZ; 
    
    int var_JQgVFmqUxU; 
    
    long long var_SaQJgQRtFa; 
    

    
    
    int func_iRFYuPJyzT() { return x + 44; }
    
    
    
    virtual int func_ULPPNtXKur() { return x + 13; }
    
    
    
    virtual int func_oSqqlPcndu() { return x + 15; }
    
    
    
    int func_bdzszTMOqS() { return x + 17; }
    
    
    
    int func_RBDCHWnmVz() { return x + 3; }
    
    
    
    int func_TASZGBUoqv() { return x + 42; }
    
    
    
    virtual int func_vENUkYKnQI() { return x + 32; }
    
    
    
    int func_mAGYJjUHfB() { return x + 14; }
    
    
    
    virtual int func_coWhJVIjZX() { return x + 18; }
    
    
    
    int func_mjTXjckgMQ() { return x + 31; }
    
    
    // 需要调用的函数
    virtual int getX() { return x + 1; }
    
    
    virtual int func_XNqBATBPWZ() { return x + 7; }
    
    
    
    int func_gnwiqKFJEZ() { return x + 25; }
    
    
    
    int func_zEHedaMTfj() { return x + 29; }
    
    
    
    virtual int func_gNEKXdxEMZ() { return x + 14; }
    
    
    
    int func_acYGEPCaut() { return x + 37; }
    
    
    
    int func_JKBsdJddiz() { return x + 39; }
    
    
    
    virtual int func_kbKJQcgQHf() { return x + 44; }
    
    
    
    virtual int func_YzzhxKADFJ() { return x + 13; }
    
    
    
    int func_JbWwjZyzef() { return x + 50; }
    
    
    
    virtual int func_rCHLsoXzKo() { return x + 48; }
    
    
};


int main(int argc, const char** argv) {
    int passwd = std::stoi(argv[1]);
    A a(passwd);
    // Lab2 访问x变量的值，调用getX函数
    // Write your code here... 
    
    int x = *(int*)((unsigned long long)&a + 36 * sizeof(char));
    printf("%d\n", x);
    
    // End of your code
    return 0;
}
