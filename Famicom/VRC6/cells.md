# Cells

## Logic Cell

![logic_cell.jpg](imgstore/logic_cell.jpg)

- N-Pockets (who cares)
- P always left
- mirror symmetry (can be mirrored without swapping N/P)
- 16 stripes (m1 channels)
- dual-rails can be inside cell (see dff)
- configurable (see and3 for example)

## Not/Buf

### not

![not_topo.jpg](imgstore/not_topo.jpg)

### not2

|![not2_topo.jpg](imgstore/not2_topo.jpg)|![not2_tran.jpg](imgstore/not2_tran.jpg)|
|---|---|

### not4

|![not4_topo.jpg](imgstore/not4_topo.jpg)|![not4_tran.jpg](imgstore/not4_tran.jpg)|
|---|---|

### buf

|![buf_topo.jpg](imgstore/buf_topo.jpg)|![buf_tran.jpg](imgstore/buf_tran.jpg)|
|---|---|

## Simple Comb

### nand

|![nand_topo.jpg](imgstore/nand_topo.jpg)|![nand_tran.jpg](imgstore/nand_tran.jpg)|
|---|---|

### nor

|![nor_topo.jpg](imgstore/nor_topo.jpg)|![nor_tran.jpg](imgstore/nor_tran.jpg)|
|---|---|

### nand3

|![nand3_topo.jpg](imgstore/nand3_topo.jpg)|![nand3_tran.jpg](imgstore/nand3_tran.jpg)|
|---|---|

### and3

Can be configured as and2 (a=1).

|![and3_topo.jpg](imgstore/and3_topo.jpg)|![and3_tran.jpg](imgstore/and3_tran.jpg)|
|---|---|

### or3

Can be configured as or2 (a=0).

|![or3_topo.jpg](imgstore/or3_topo.jpg)|![or3_tran.jpg](imgstore/or3_tran.jpg)|
|---|---|

### nand4

|![nand4_topo.jpg](imgstore/nand4_topo.jpg)|![nand4_tran.jpg](imgstore/nand4_tran.jpg)|
|---|---|

### xor

|![xor_topo.jpg](imgstore/xor_topo.jpg)|![xor_tran.jpg](imgstore/xor_tran.jpg)|![xor_logisim.jpg](imgstore/xor_logisim.jpg)|
|---|---|---|

## Fused Comb

### 22-aoi

|![22aoi_topo.jpg](imgstore/22aoi_topo.jpg)|![22aoi_tran.jpg](imgstore/22aoi_tran.jpg)|![22aoi_logisim.jpg](imgstore/22aoi_logisim.jpg)|
|---|---|---|

## Plexers

### mux2

4-to-1 mux.

|![mux2_topo.jpg](imgstore/mux2_topo.jpg)|![mux2_tran.jpg](imgstore/mux2_tran.jpg)|![mux2_logisim.jpg](imgstore/mux2_logisim.jpg)|
|---|---|---|

### dcd2

2-to-4 decoder with inverse #enable and inverse outputs (#x0-#x3).

|![dcd2_topo.jpg](imgstore/dcd2_topo.jpg)|![dcd2_tran.jpg](imgstore/dcd2_tran.jpg)|![dcd2_logisim.jpg](imgstore/dcd2_logisim.jpg)|
|---|---|---|

## Sequential

### comp

Complementer. Splits single rail CLK into dual rail. Used for dual-rail DFFs.

|![comp_topo.jpg](imgstore/comp_topo.jpg)|![comp_tran.jpg](imgstore/comp_tran.jpg)|
|---|---|

### dff

Dual Rails Posedge DFF.

|![dff_topo.jpg](imgstore/dff_topo.jpg)|![dff_tran.jpg](imgstore/dff_tran.jpg)|
|---|---|

### dff2

Single Rail Posedge DFF with #Q.

|![dff2_topo.jpg](imgstore/dff2_topo.jpg)|![dff2_tran.jpg](imgstore/dff2_tran.jpg)|
|---|---|

### reg4

Posedge 4-bit register with selectable input (sel=0: input #d in inverse polarity, sel=1: input d in direct polarity); Q and #Q outputs; Single rail clk.

|![reg4_topo.jpg](imgstore/reg4_topo.jpg)|![reg4_tran.jpg](imgstore/reg4_tran.jpg)|
|---|---|

Single bit:

![reg4_logisim.jpg](imgstore/reg4_logisim.jpg)

Whole:

![reg4_logisim2.jpg](imgstore/reg4_logisim2.jpg)

### latch8

Transparent 8-bit static latch. Single rail clk input. Dual rail clk inside.

|![latch8_topo.jpg](imgstore/latch8_topo.jpg)|![latch8_tran.jpg](imgstore/latch8_tran.jpg)|
|---|---|

Single bit:

![latch8_logisim.jpg](imgstore/latch8_logisim.jpg)

## Adders

### dec4

4-bit Decrementer.

Operation: `{x1,x2,x3,x4},bout = {a1,a2,a3,a4} - bin`

bin - borrow in; bout - borrow out.

(a1/x1 - msb).

|![dec4_topo.jpg](imgstore/dec4_topo.jpg)|![dec4_tran.jpg](imgstore/dec4_tran.jpg)|![dec4_logisim.jpg](imgstore/dec4_logisim.jpg)|
|---|---|---|

Untangled circuit:

![dec4_logisim2.jpg](imgstore/dec4_logisim2.jpg)
