# Modules

## Logic Cell

![logic_cell.jpg](imgstore/logic_cell.jpg)

## Not/Buf

### not

|![not_topo.jpg](imgstore/not_topo.jpg)|![not_tran.jpg](imgstore/not_tran.jpg)|
|---|---|

### not2

Strong not.

![not2_topo.jpg](imgstore/not2_topo.jpg)

### not3

Strong not.

![not3_topo.jpg](imgstore/not3_topo.jpg)

### buf

![buf_topo.jpg](imgstore/buf_topo.jpg)

### buf2

Strong buf. Can act as transparent DLatch (with gate memory), but nyet confirmed.

![buf2_topo.jpg](imgstore/buf2_topo.jpg)

## Simple Comb

### nor

|![nor_topo.jpg](imgstore/nor_topo.jpg)|![nor_tran.jpg](imgstore/nor_tran.jpg)|
|---|---|

### nand

|![nand_topo.jpg](imgstore/nand_topo.jpg)|![nand_tran.jpg](imgstore/nand_tran.jpg)|
|---|---|

### or

![or_topo.jpg](imgstore/or_topo.jpg)

### and

![and_topo.jpg](imgstore/and_topo.jpg)

### 3-or

|![3or_topo.jpg](imgstore/3or_topo.jpg)|![3or_tran.jpg](imgstore/3or_tran.jpg)|
|---|---|

## Fused Comb

### 22-aon

"two+two AND to OR NON-inverting".

|![22aon_topo.jpg](imgstore/22aon_topo.jpg)|![22aon_tran.jpg](imgstore/22aon_tran.jpg)|
|---|---|

### 33-aon

"three+three AND to OR NON-inverting".

|![33aon_topo.jpg](imgstore/33aon_topo.jpg)|![33aon_tran.jpg](imgstore/33aon_tran.jpg)|![33aon_logisim.jpg](imgstore/33aon_logisim.jpg)|
|---|---|---|

### 222-aon

"two+two+two AND to OR NON-inverting".

|![222aon_topo.jpg](imgstore/222aon_topo.jpg)|![222aon_tran.jpg](imgstore/222aon_tran.jpg)|
|---|---|

### 333-aon

"three+three+three AND to OR NON-inverting".

|![333aon_topo.jpg](imgstore/333aon_topo.jpg)|![333aon_tran.jpg](imgstore/333aon_tran.jpg)|
|---|---|

## Sequential

### latch

Static latch. Can be used as register bit.

|![latch_topo.jpg](imgstore/latch_topo.jpg)|![latch_tran.jpg](imgstore/latch_tran.jpg)|
|---|---|

### dffpos

Posedge DFF.

|![dffpos_topo.jpg](imgstore/dffpos_topo.jpg)|![dffpos_tran.jpg](imgstore/dffpos_tran.jpg)|![dffpos_logisim.jpg](imgstore/dffpos_logisim.jpg)|
|---|---|---|

### dffrpos

Posedge DFF with async #reset.

|![dffrpos_topo.jpg](imgstore/dffrpos_topo.jpg)|![dffrpos_tran.jpg](imgstore/dffrpos_tran.jpg)|![dffrpos_logisim.jpg](imgstore/dffrpos_logisim.jpg)|
|---|---|---|

## Misc

### const

Constant generator (`1'b0` / `1'b1`).

![const_topo.jpg](imgstore/const_topo.jpg)
