# Alkaid-OS: The Michelin-Starred Kernel / Das Michelin-Stern-Kernel / 米其林三星内核

> **Disclaimer:** Alkaid-OS is not a production operating system. It is an educational model that visualizes low-level computing concepts through culinary metaphors.

*A culinary metaphor for understanding computer architecture.*
*Eine kulinarische Metapher zum Verständnis der Computerarchitektur.*
*一个理解计算机体系结构的烹饪隐喻。*

## 💡 Philosophy / Philosophie / 哲学
Computing is a kitchen. / Computing ist eine Küche. / 计算是一场烹饪艺术。

- **CPU**: The Executive Chef / Der Chefkoch / 行政主厨
- **Memory**: The Refrigerator / Der Kühlschrank / 冰箱
- **Registers**: Cutting Boards / Die Schneidebretter / 寄存器（案板）
- **Stack**: Nested Steamers / Die Dampfgarer / 栈（蒸笼）
- **Heap**: The Main Dining Table / Der Arbeitstisch / 堆（动态大桌子）
- **Interrupts**: VIP Orders / VIP-Bestellungen / 中断（紧急VIP订单）
- **Cache**: Spice Racks / Die Gewürzregale / 缓存（调料架）

---

## 🏗 Architecture & Mechanics / Architektur & Mechanik / 架构与机制

### 1. Registers (The Cutting Boards) / Die Register / 寄存器
- **The Workspace**: Each register is a specific, exclusive cutting board. Placing a new item overwrites the old. / Ein Register ist ein exklusives Schneidebrett. Neue Daten überschreiben die alten. / 寄存器就像是厨师的“独占案板”。一次只能处理一种食材，写新内容时，旧的就会被覆盖。
- **The 64-bit Rule**: Writing to the 32-bit sub-register (e.g., `EAX`) will auto-zero the high-order bits of the 64-bit register (`RAX`). Smaller writes (e.g., `AX`) preserve the high bits. / Das Schreiben in das 32-Bit-Register (`EAX`) nullt automatisch die oberen Bits des 64-Bit-Registers (`RAX`). Kleinere Schreibvorgänge (`AX`) bewahren die hohen Bits. / 64位规则：写入32位子寄存器（如 `EAX`）会自动清零64位寄存器（`RAX`）的高位。较小的写入（如 `AX`）则保留高位。

### 2. Heap (The Main Dining Table) / Der Heap / 堆
- **Managed Allocation**: The Heap isn't infinite. It's a dynamic workspace managed by the Maître d' (The Allocator). You must request space (`malloc`) before you can set your plate down. / Der Heap ist nicht unendlich. Es ist ein dynamischer Arbeitsbereich, verwaltet vom Maître d' (dem Allokator). / 堆不是无限的。它是由“餐厅经理”（分配器）管理的动态工作区域，必须先申请空间（`malloc`）才能摆放餐盘。

### 3. Stack (The Nested Steamers) / Der Stack / 栈
- **Function Calls**: Think of function calls as stacking steamers: `main()` -> `cook()` -> `makeSoup()`. We must finish and remove the top steamer before we can return to the previous work. / Denken Sie an Funktionsaufrufe wie an gestapelte Dampfgarer. Wir müssen den obersten entfernen, bevor wir zum vorherigen zurückkehren. / 函数调用就像堆叠的蒸笼：`main()` -> `cook()` -> `makeSoup()`。必须先完成并移除顶部的蒸笼，才能回到之前的任务。

---

## 🛠 Current Status / Status / 当前进度
Alkaid-OS is currently in the **"Apprentice Stage"**. / Alkaid-OS befindet sich derzeit in der "Lehrlingsphase". / Alkaid-OS 目前处于“学徒阶段”。

- [x] **Bootloader**: Basic transition to 32-bit. / Grundlegende Umstellung auf 32-Bit. / 引导程序：基础的32位模式切换。
- [x] **Kernel**: Basic console printing. / Grundlegende Konsolenausgabe. / 内核：基础控制台打印。
- [ ] **Interrupts**: Under construction. / In Arbeit. / 中断：开发中。
- [ ] **Memory Manager**: Planning phase. / Planungsphase. / 内存管理：规划中。

## 👨‍🍳 Getting Started / Erste Schritte / 入门指南
How to compile the recipes. / Wie man die Rezepte kompiliert. / 如何编译你的“菜谱”。

1. **Install the environment**: You will need a GCC cross-compiler. / Sie benötigen einen GCC-Cross-Compiler. / 你需要一个 GCC 交叉编译器。
2. **Compile**: Run `make` to compile the kernel. / Führen Sie `make` aus, um den Kernel zu kompilieren. / 运行 `make` 编译内核。
3. **Run**: Use QEMU to test the kernel. / Verwenden Sie QEMU, um den Kernel zu testen. / 使用 QEMU 测试内核。

## 🚀 Roadmap / Roadmap / 路线图
- [ ] **Docs / Dokumentation / 文档**: Detailed breakdown of CPU, Memory, and Assembly in `/docs`. / Detaillierte Übersicht in `/docs`. / 在 `/docs` 中对 CPU、内存和汇编进行详细解析。
- [ ] **CPU Simulator / CPU-Simulator / CPU 模拟器**: A visual tool to watch the Chef (CPU) execute instructions. / Ein visuelles Werkzeug, um den Koch (CPU) bei der Ausführung von Befehlen zu beobachten. / 一个可视化工具，观察主厨（CPU）执行指令的过程。
- [ ] **Assembly Kitchen / Assembly-Küche / 汇编厨房**: An interactive environment. / Eine interaktive Lernumgebung. / 一个交互式的学习环境。

---

## 🤝 Contributing / Mitwirken / 贡献指南
We welcome all chefs to the kitchen! Feel free to open an issue or submit a PR. / Wir heißen alle Köche in der Küche willkommen! Öffnen Sie ein Issue oder reichen Sie einen PR ein. / 欢迎各位大厨加入厨房！欢迎随时提交 Issue 或 PR。

## ⚖️ License / Lizenz / 许可协议
This project is licensed under the MIT License. / Dieses Projekt ist unter der MIT-Lizenz lizenziert. / 本项目采用 MIT 许可协议。

*Created by Alkaid Team | Inspired by the art of computing.*
