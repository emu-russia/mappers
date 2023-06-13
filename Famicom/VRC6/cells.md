# Cells

## Logic Cell

![logic_cell.jpg](imgstore/logic_cell.jpg)

## not

![not_topo.jpg](imgstore/not_topo.jpg)

## dff

Posedge DFF.

|![dff_topo.jpg](imgstore/dff_topo.jpg)|![dff_tran.jpg](imgstore/dff_tran.jpg)|
|---|---|

## comp

Complementer. Splits single rail CLK into dual rail

|![comp_topo.jpg](imgstore/comp_topo.jpg)|![comp_tran.jpg](imgstore/comp_tran.jpg)|
|---|---|

## 31-aoi (Weird)

Strange 31-AOI, which has a forbidden state (a0=0, a1=a2=1, b=0), which switches the output to the HighZ state. At the same time the N-MOS part of the circuit is fully consistent with the NMOS variant of the 31-AOI.

|![31aoi_topo.jpg](imgstore/31aoi_topo.jpg)|![31aoi_tran.jpg](imgstore/31aoi_tran.jpg)|![31aoi_logisim.jpg](imgstore/31aoi_logisim.jpg)|
|---|---|---|

I don't know how it works.
