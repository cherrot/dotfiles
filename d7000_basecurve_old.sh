#!/bin/sh
# to test your new basecurve, copy/paste the following line into your shell.
# note that it is a smart idea to backup your database before messing with it on this level.
# (you have been warned :) )

echo "INSERT INTO presets VALUES('NIKON D7000','','basecurve',2,X'00000000000000000ef24a3c2c91043cfea5383d5230893d7d1db13d3ccf3a3e3966163e3411a53ed36f263ea575b43eaddb573e2112dc3efa989e3ee3bb143ffbb0c53e18142f3fe8dcfb3eb5814d3fa363193f2a88613ffb8d2d3feca56d3f64e83d3f5476763f36ce4d3fceb07c3fb24c5e3fb2ac7f3f0000803f0000803f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000020000000000000000000000',1,X'00000000180000000000C842000000000000000000000000000000000000000000000000000000000000000000000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F',7,0,'','%','%','%',0.0,51200.0,0.0,10000000.0,0.0,100000000.0,0.0,1000.0,0,0,0,0,2);" | sqlite3 ~/.config/darktable/library.db
#!/bin/sh
# to test your new tonecurve, copy/paste the following line into your shell.
# note that it is a smart idea to backup your database before messing with it on this level.

echo "INSERT INTO presets VALUES('NIKON D7000','','tonecurve',4,X'000000000000000008206b3d8146f53cb97cb93d1d965a3da3e1043e9542c73d5d843e3ef3fa3c3eff30803e6a129b3ef6dca63e8582e63ece60d73e28be183f3329003f744d303f87e1153f6dd4443f0c0b1b3ff54e4a3fa36f313f12c65e3f85a13e3f6f14693fbc346b3f1ef77e3f4414703f77897f3f0000803f0000803f000000000000000000000000000000000000000000000000000000000000000000000000000000000000803d0000803d0000003e0000003e0000403e0000403e0000803e0000803e0000a03e0000a03e0000c03e0000c03e0000e03e0000e03e0000003f0000003f0000103f0000103f0000203f0000203f0000303f0000303f0000403f0000403f0000503f0000503f0000603f0000603f0000703f0000703f000000000000000000000000000000000000000000000000000000000000000000000000000000000000803d0000803d0000003e0000003e0000403e0000403e0000803e0000803e0000a03e0000a03e0000c03e0000c03e0000e03e0000e03e0000003f0000003f0000103f0000103f0000203f0000203f0000303f0000303f0000403f0000403f0000503f0000503f0000603f0000603f0000703f0000703f0000000000000000000000000000000000000000000000000000000000000000100000001000000010000000020000000200000002000000010000000000000000000000',1,X'00000000180000000000C842000000000000000000000000000000000000000000000000000000000000000000000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F00000000000000000000803F0000803F',7,0,'','%','%','%',0.0,51200.0,0.0,10000000.0,0.0,100000000.0,0.0,1000.0,0,0,0,0,2);" | sqlite3 ~/.config/darktable/library.db



# if it pleases you, then in iop/tonecurve.c append the following line to the array presets_from_basecurve and modify its name
# {"NIKON D7000", {{{{0.000000, 0.000000}, {0.057404, 0.029941}, {0.090570, 0.053366}, {0.129767, 0.097295}, {0.186052, 0.184551}, {0.250374, 0.302875}, {0.325905, 0.450215}, {0.420660, 0.596652}, {0.500629, 0.688682}, {0.585473, 0.768866}, {0.605637, 0.790267}, {0.693110, 0.870210}, {0.744652, 0.910468}, {0.918773, 0.995958}, {0.937809, 0.998191}, {1.000000, 1.000000}, },{{0.000000, 0.000000}, {0.062500, 0.062500}, {0.125000, 0.125000}, {0.187500, 0.187500}, {0.250000, 0.250000}, {0.312500, 0.312500}, {0.375000, 0.375000}, {0.437500, 0.437500}, {0.500000, 0.500000}, {0.562500, 0.562500}, {0.625000, 0.625000}, {0.687500, 0.687500}, {0.750000, 0.750000}, {0.812500, 0.812500}, {0.875000, 0.875000}, {0.937500, 0.937500}, },{{0.000000, 0.000000}, {0.062500, 0.062500}, {0.125000, 0.125000}, {0.187500, 0.187500}, {0.250000, 0.250000}, {0.312500, 0.312500}, {0.375000, 0.375000}, {0.437500, 0.437500}, {0.500000, 0.500000}, {0.562500, 0.562500}, {0.625000, 0.625000}, {0.687500, 0.687500}, {0.750000, 0.750000}, {0.812500, 0.812500}, {0.875000, 0.875000}, {0.937500, 0.937500}, },}, {16, 16, 16}, {2, 2, 2}, 0, 0, 0}},
