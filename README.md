# FULL ADDER RTL TO GDSII

This document describes the complete **VLSI Flow** of a full adder using **Synopsys VCS VERDI & Design Compiler and ICC2** with **SAED 32nm PDK**.

---

###  xxxxxx

```
mkdir full_adder
```
![Simulation](images/01.png)

```
cd full_adder/
```
![Simulation](images/02.png)

```
mkdir rtl sim tb
```
![Simulation](images/03.png)

```
cd rtl
```
![Simulation](images/04.png)

```
gedit full_adder.v
```
![Simulation](images/05.png)

```
cd ..
```
![Simulation](images/06.png)

```
cd tb/
```
![Simulation](images/07.png)

```
gedit tb_full_adder.v
```
![Simulation](images/07.png)

```
cd ..
```
![Simulation](images/08.png)

```
cd sim/
```
![Simulation](images/08.png)

```
vcs ./../rtl/full_adder.v ./../tb/tb_full_adder.v -lca -kdb -debug_access+all -full64
```
![Simulation](images/09.png)


### vcs result

![Simulation](images/010.png)

```
ls
```
![Simulation](images/011.png)


```
./simv
```
![Simulation](images/012.png)

```
./simv -verdi &
```
![Simulation](images/013.png)

### Simulation Results
![Simulation](images/014.png)
