# RVI hackathon hub:香山处理器上的 ChaCha20 加密算法优化
## 题目
题目仓库：https://github.com/cyyself/chacha20-xiangshan
## 优化思路
1. 通过内联汇编优化ROTATE
ChaCha20的核心计算操作是ROTATE，即循环左移操作，该操作在RISC-V指令集上通常使用slli，srli，or三条指令实现。查看src/chacha.s也可以看到目前未优化的chacha算法也是由上述三条指令实现的，但在RISC-V的Zbb扩展中提供了rol指令开源直接实现循环左移操作。
参考：https://github.com/openssl/openssl/commit/ca6286c382a7eb527fac9aba2a018354acb27b16
2. RISC-V Vector以及Zvbb扩展指令也提供了进一步的优化。
