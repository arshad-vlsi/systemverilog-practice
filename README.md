# 🧪 SystemVerilog Practice — Daily Tasks & Testbenches

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-8957e5?style=flat-square)
![Vivado](https://img.shields.io/badge/Xilinx%20Vivado-2ea44f?style=flat-square)
![Testbench](https://img.shields.io/badge/Testbench%20Design-0075ca?style=flat-square)
![Clock Domain](https://img.shields.io/badge/Clock%20Domain-e36209?style=flat-square)
![Active](https://img.shields.io/badge/🚀%20Active%20Learning-2ea44f?style=flat-square)

---

### About This Repo

This repository contains my **day-to-day SystemVerilog practice** tasks, testbenches and experiments as I progress through learning SV for VLSI verification. Each folder represents a topic and each file is a small focused task.

> 🔄 New tasks added regularly as I learn!

---

### 📁 Folder Structure

```
systemverilog-practice/
├── 📁 clocking/
│     ├── 01_clock_gen_alignment.sv    ← 100/50/25 MHz clock alignment ✅
│     └── waveform_01.png              ← Simulation waveform ✅
├── 📁 data_types/
│     ├── 01_data_types.sv             ← Data types & default values ✅
│     ├── 02_static_arrays.sv          ← Static arrays ✅
│     ├── 03_dynamic_arrays.sv         ← Dynamic arrays ✅
│     └── 04_queues.sv                 ← Queues ✅
├── 📁 oops/
│     ├── 01_class_basics.sv           ← Class basics ✅
│     ├── 02_functions.sv              ← Functions ✅
│     ├── 03_tasks.sv                  ← Tasks ✅
│     ├── 04_task_pass_by_value.sv     ← Pass by value ✅
│     └── 05_pass_by_reference.sv      ← Pass by reference ✅
│     └── 06_constructor.sv      ← Constructor ✅
│     └── 07_this_keyword.sv       ← this keyword ✅
│     └── 08_nested_classes.sv     ← Nested classes ✅
│     └── 09_shallow_copy.sv       ← Shallow copy ✅
│     └── 10_deep_copy.sv          ← Deep copy ✅
│     └── 11_inheritance.sv    ← Inheritance ✅
│     └── 12_polymorphism.sv   ← Polymorphism ✅
├── 📁 randomization/
│     └── 01_rand_constraints.sv  ← rand, randc & constraints ✅
│     └── 02_advanced_constraints.sv  ← Advanced constraints ✅
├── 📁 assertions/
│     └── (coming soon)
├── 📁 randomization/
│     └── (coming soon)
└── README.md
```

---

### 📝 Tasks Log

| # | Task | Topic | Status |
|---|------|-------|--------|
| 01 | Clock Generation & Edge Alignment | clocking | ✅ Done |
| 02 | Data Types & Default Values | data_types | ✅ Done |
| 03 | Static Arrays | data_types | ✅ Done |
| 04 | Dynamic Arrays | data_types | ✅ Done |
| 05 | Queues | data_types | ✅ Done |
| 06 | Class Basics | oops | ✅ Done |
| 07 | Functions | oops | ✅ Done |
| 08 | Tasks | oops | ✅ Done |
| 09 | Pass by Value | oops | ✅ Done |
| 10 | Pass by Reference | oops | ✅ Done |
| 11 | Constructor | oops | ✅ Done |
| 12 | this Keyword & Named Arguments | oops | ✅ Done |
| 13 | Nested Classes | oops | ✅ Done |
| 14 | Shallow Copy | oops | ✅ Done |
| 15 | Deep Copy | oops | ✅ Done |
| 16 | Inheritance | oops | ✅ Done |
| 17 | Polymorphism | oops | ✅ Done |
| 18 | Randomization & Constraints | randomization | ✅ Done |
| 19 | Advanced Constraints | randomization | ✅ Done |

---

### 📌 Task 01 — Clock Generation & Edge Alignment

**File:** `clocking/01_clock_gen_alignment.sv`
**Waveform:** `clocking/waveform_01.png`

| Signal | Frequency | Period |
|--------|-----------|--------|
| clk | 100 MHz | 10 ns |
| clk50 | 50 MHz | 20 ns |
| clk25 | 25 MHz | 40 ns |

**Key Concepts:** `timescale` · `initial` block · `always` block · `$dumpfile` · `$finish`

---

### 📌 Task 02 — Data Types & Default Values

**File:** `data_types/01_data_types.sv`

| Type | Default Value | State |
|------|--------------|-------|
| reg | X (unknown) | 4-state |
| logic | X (unknown) | 4-state |
| bit | 0 | 2-state |
| byte | 0 | 2-state |
| int | 0 | 2-state |

**Key Learning:** 4-state types default to **X**, 2-state types default to **0**

---

### 📌 Task 03 — Static Arrays

**File:** `data_types/02_static_arrays.sv`

**Key Concepts:** Fixed size arrays · `'{}` initialization · `'{5{0}}` repetition · `'{default:2}` · `%0p` display

---

### 📌 Task 04 — Dynamic Arrays

**File:** `data_types/03_dynamic_arrays.sv`

**Key Concepts:** `int arr[]` declaration · `new[5]` runtime allocation · `new[15](arr)` resize with data preserve · `arr.delete()` deallocation

---

### 📌 Task 05 — Queues

**File:** `data_types/04_queues.sv`

| Method | Operation |
|--------|-----------|
| `push_front(7)` | Add at front |
| `push_back(9)` | Add at back |
| `insert(2,10)` | Insert at index |
| `pop_front()` | Remove from front |
| `pop_back()` | Remove from back |
| `delete(1)` | Delete at index |

**Key Learning:** Queue `[$]` supports both FIFO and LIFO operations

---

### 📌 Task 06 — Class Basics

**File:** `oops/01_class_basics.sv`

**Key Concepts:** `class` definition · `new()` object creation · dot operator for member access · `null` for deallocation

---

### 📌 Task 07 — Functions

**File:** `oops/02_functions.sv`

| Function | Return Type | Description |
|----------|-------------|-------------|
| `add()` | `bit [4:0]` | Returns sum of ain + bin |
| `display_ain_bin()` | `void` | Displays values only |

**Key Learning:** Functions cannot consume simulation time · `void` for display-only functions

---

### 📌 Task 08 — Tasks

**File:** `oops/03_tasks.sv`

**Key Concepts:** `task` keyword · `#` delays allowed · `@(posedge clk)` · `$urandom` · difference between task and function

---

### 📌 Task 09 — Pass by Value

**File:** `oops/04_task_pass_by_value.sv`

| | a | b |
|-|---|---|
| Before swap | 3 | 2 |
| Inside task | 2 | 3 |
| Outside task | 3 | 2 |

**Key Learning:** Pass by value sends a **copy** — original variable unchanged outside task

---

### 📌 Task 10 — Pass by Reference

**File:** `oops/05_pass_by_reference.sv`

| | a | b |
|-|---|---|
| Before swap | 1 | 2 |
| Inside task | 2 | 1 |
| Outside task | 2 | 1 |

**Key Learning:** `ref` keyword passes **original variable** — changes reflect outside · requires `task automatic`

---

### 📌 Task 11 — Constructor

**File:** `oops/06_constructor.sv`

Explored constructor (`new` function) in SystemVerilog
class — default and parameterized initialization.

| Call | Output |
|------|--------|
| `f1 = new()` | data = 0 (default value) |
| `f1 = new(23)` | data = 23 (custom value) |

**Key Learning:**
- `function new()` is the constructor in SV class
- Default argument `input int datain = 0` sets fallback value
- `new()` without argument → uses default value (0)
- `new(23)` with argument → initializes data to 23
- Constructor runs automatically when object is created

---

### 📌 Task 12 — this Keyword & Named Arguments

**File:** `oops/07_this_keyword.sv`

Explored `this` keyword for resolving name conflict between
class data members and constructor arguments, and named
argument passing in constructor call.

| Concept | Example |
|---------|---------|
| `this` keyword | `this.data1 = data1` |
| Positional args | `new(16, 254, 256, 512)` |
| Named args | `new(.data4(12), .data2(15))` |

**Key Learning:**
- `this` refers to **current object's** data member
- Resolves conflict when argument & member have same name
- Named arguments allow passing in **any order**
- Positional arguments must follow **declared order**

---

### 📌 Task 13 — Nested Classes

**File:** `oops/08_nested_classes.sv`

Explored nested classes in SystemVerilog — a class
containing an object of another class as a member.

| Concept | Example |
|---------|---------|
| Outer class | `class second` contains `first f1` |
| Inner class object | `first f1` declared inside `second` |
| Constructor chaining | `second.new()` calls `f1 = new()` |
| Nested access | `s.f1.data` — dot chaining |
| Nested task call | `s.f1.display()` |

**Key Learning:**
- A class can contain **object of another class** as member
- Inner object must be created inside outer constructor
- Members accessed via **chained dot operator** `s.f1.data`
- Inner object data can be read and modified from outside

---

### 📌 Task 14 — Shallow Copy

**File:** `oops/09_shallow_copy.sv`

Explored shallow copy in SystemVerilog using `new` to
copy one object's data into another object.

| Step | f1.data | f2.data |
|------|---------|---------|
| After `f1.data = 32` | 32 | — |
| After `f2 = new f1` | 32 | 32 |
| After `f2.data = 64` | 32 | 64 |

**Key Learning:**
- `f2 = new f1` creates a **shallow copy** of f1 into f2
- Both objects are **independent** after copying
- Changing `f2.data` does **NOT** affect `f1.data`
- Shallow copy copies only **primitive members** directly
- For nested objects use **deep copy** instead

---

### 📌 Task 15 — Deep Copy

**File:** `oops/10_deep_copy.sv`

Implemented deep copy in SystemVerilog using a custom
`copy()` function inside the class that manually copies
each member to a new object.

| Member | Value |
|--------|-------|
| data | 34 |
| temp | 8'h11 |

**Key Concepts Used:**
- Custom `copy()` function returns a new object of same class
- `copy = new()` creates fresh object inside function
- Each member copied manually — `copy.data = data`
- `f2 = f1.copy` — calls copy function on f1
- Deep copy vs Shallow copy — deep copy is safer for nested objects

**Key Learning:**
- Shallow copy `new f1` — fast but shared nested handles
- Deep copy via custom function — fully independent copy
- Deep copy is preferred in **verification environments**

---

### 📌 Task 16 — Inheritance

**File:** `oops/11_inheritance.sv`

Explored inheritance in SystemVerilog — child class
extending parent class to reuse and extend functionality.

| Class | Type | Members |
|-------|------|---------|
| `first` | Parent | `data = 32` · `display()` |
| `second` | Child | `temp = 16` · `add()` + inherits from `first` |

**Key Concepts Used:**
- `extends` keyword — child inherits parent members
- Child object `s` can access parent's `data` & `display()`
- Child adds its own member `temp` and function `add()`
- Single object accesses both parent & child members

**Key Learning:**
- `class second extends first` — inherits all members of `first`
- Child class can **use** parent members directly
- Child class can **add** new members on top of parent
- Promotes **code reuse** in verification environments

---

### 📌 Task 17 — Polymorphism

**File:** `oops/12_polymorphism.sv`

Explored polymorphism using `virtual` function — parent
handle pointing to child object calls child's version.

| Scenario | f.display() output |
|----------|--------------------|
| Without virtual | First : the value of data : 4 |
| With virtual + f = s | Second : the value of data : 4 |

**Key Concepts Used:**
- `virtual function` in parent class
- Child class **overrides** `display()` function
- `f = s` — parent handle points to child object
- `f.display()` calls **child's** display due to virtual

**Key Learning:**
- Without `virtual` → parent handle calls **parent** function
- With `virtual` → parent handle calls **child** function
- This is **runtime polymorphism** in SystemVerilog
- Critical concept in **OOP-based verification** (UVM)

---

### 📌 Task 18 — Randomization & Constraints

**File:** `randomization/01_rand_constraints.sv`

Explored randomization in SystemVerilog using `rand`,
`randc` and `constraint` block with assertion-based
randomization check.

| Concept | Description |
|---------|-------------|
| `randc` | Cyclic random — no repeat until all values used |
| `rand` | Pure random — can repeat values |
| `constraint data` | Restricts `a > 15` (only value = 15 for 4-bit) |
| `g.randomize()` | Randomizes all rand/randc members |
| `assert(g.randomize)` | Fails simulation if randomization fails |

**Key Learning:**
- `rand` → purely random values each call
- `randc` → cyclic — covers all values before repeating
- `constraint` block → restricts random value range
- `assert(g.randomize)` → better than `if(!g.randomize)`
- Randomization failure caught via `$display` + `$finish`

---

### 📌 Task 19 — Advanced Constraints

**File:** `randomization/02_advanced_constraints.sv`

Explored advanced constraint techniques in SystemVerilog
including inside operator, range constraints and negation.

| Constraint Type | Syntax | Description |
|----------------|--------|-------------|
| Range | `a inside {[0:8]}` | Value within range |
| Specific values | `a inside {10,11,15}` | Exact values only |
| Negation | `!(a inside {[3:7]})` | Skip range 3 to 7 |
| Multiple blocks | `constraint data_a` + `constraint data_b` | Separate constraints |
| Combined | `a>3; a<7; b>0` | Multiple rules in one block |

**Key Learning:**
- `inside {[min:max]}` → value within range
- `!(inside {})` → exclude/skip a range
- Multiple `constraint` blocks → all applied simultaneously
- Commented constraints show different approaches to same problem

---

### 🎯 Learning Goals

- [x] Clock generation & edge alignment
- [x] SystemVerilog Data Types & Variables
- [x] Arrays, Queues & Associative Arrays
- [x] OOP — Classes, Inheritance, Polymorphism
- [x] Randomization & Constraints
- [ ] Clocking Blocks & Interfaces
- [ ] Assertions (SVA — SystemVerilog Assertions)
- [ ] Testbench Components — Driver, Monitor, Scoreboard

---

### 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| Xilinx Vivado | Simulation & Waveform Analysis |
| SystemVerilog | Hardware Verification Language |

---

### 👨‍💻 Author

**Arshad Ansari**
M.Tech ECE (VLSI Design) — NIT Hamirpur
[![LinkedIn](https://img.shields.io/badge/LinkedIn-arshadansari04-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/arshadansari04/)
  
