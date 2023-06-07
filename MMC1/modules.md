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

### 3-nand

|![3nand_topo.jpg](imgstore/3nand_topo.jpg)|![3nand_tran.jpg](imgstore/3nand_tran.jpg)|
|---|---|

### 4-and

|![4and_topo.jpg](imgstore/4and_topo.jpg)|![4and_tran.jpg](imgstore/4and_tran.jpg)|
|---|---|

### 3-or

|![3or_topo.jpg](imgstore/3or_topo.jpg)|![3or_tran.jpg](imgstore/3or_tran.jpg)|
|---|---|

## Fused Comb

### oan

"OR to AND NON-invering".

|![oan_topo.jpg](imgstore/oan_topo.jpg)|![oan_tran.jpg](imgstore/oan_tran.jpg)|![oan_logisim.jpg](imgstore/oan_logisim.jpg)|
|---|---|---|

### aon

"AND to OR NON-invering".

|![aon_topo.jpg](imgstore/aon_topo.jpg)|![aon_tran.jpg](imgstore/aon_tran.jpg)|![aon_logisim.jpg](imgstore/aon_logisim.jpg)|
|---|---|---|

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

### dff

Posedge DFF.

|![dff_topo.jpg](imgstore/dff_topo.jpg)|![dff_tran.jpg](imgstore/dff_tran.jpg)|![dff_logisim.jpg](imgstore/dff_logisim.jpg)|
|---|---|---|

### dffr

Posedge DFF with async #reset.

|![dffr_topo.jpg](imgstore/dffr_topo.jpg)|![dffr_tran.jpg](imgstore/dffr_tran.jpg)|![dffr_logisim.jpg](imgstore/dffr_logisim.jpg)|
|---|---|---|

### dffrnq

Posedge DFF with async #reset and additional inverse output (#Q).

|![dffrnq_topo.jpg](imgstore/dffrnq_topo.jpg)|![dffrnq_logisim.jpg](imgstore/dffrnq_logisim.jpg)|
|---|---|

### dffre

Posedge DFF with async #reset and Master/Slave enable.

ena1 = ena2 for most cases (common Enable).

|![dffre_topo.jpg](imgstore/dffre_topo.jpg)|![dffre_tran.jpg](imgstore/dffre_tran.jpg)|![dffre_logisim.jpg](imgstore/dffre_logisim.jpg)|
|---|---|---|

## Misc

### const

Constant generator (`1'b0` / `1'b1`).

![const_topo.jpg](imgstore/const_topo.jpg)
