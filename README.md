# RVI hackathon hub:香山处理器上的 ChaCha20 加密算法优化
## 题目
题目仓库：https://github.com/cyyself/chacha20-xiangshan
## 优化思路
1. 通过内联汇编优化ROTATE
  ChaCha20的核心计算操作是ROTATE，即循环左移操作，该操作在RISC-V指令集上通常使用slli，srli，or三条指令实现。查看src/chacha.s也可以看到目前未优化的chacha算法也是由上述三条指令实现的，但在RISC-V的Zbb扩展中提供了rol指令开源直接实现循环左移操作。
参考：https://github.com/openssl/openssl/commit/ca6286c382a7eb527fac9aba2a018354acb27b16
来说在原本`chacha20_c.c`的基础上通过内联汇编的方式，添加对于vrori等指令，即Zvbb扩展的实现。之后通过编译.c文件生成新的汇编文件，效率有一定的提升。

![屏幕截图 2025-04-11 103308](https://github.com/user-attachments/assets/fea28326-f552-4f24-b3e4-b1970525d25f)

3. RISC-V Vector提供了进一步的优化
   试图利用`vle32.v`进行向量化，但出错，暂未解决。
![屏幕截图 2025-04-11 104244](https://github.com/user-attachments/assets/add958f6-6a08-412f-9fad-49bb962af2e6)

## 运行方式
核心代码在`src/chacha20.s`,将其和`Makefile`覆盖到题目仓库对应位置，即可按照说明运行。

## Q & A
待补充......
