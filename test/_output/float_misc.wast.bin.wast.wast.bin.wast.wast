(module
  (type $0 (func (param f32 f32) (result f32)))
  (type $1 (func (param f32) (result f32)))
  (type $2 (func (param f64 f64) (result f64)))
  (type $3 (func (param f64) (result f64)))
  (func $0 (type 0) (local.get 0) (local.get 1) (f32.add))
  (func $1 (type 0) (local.get 0) (local.get 1) (f32.sub))
  (func $2 (type 0) (local.get 0) (local.get 1) (f32.mul))
  (func $3 (type 0) (local.get 0) (local.get 1) (f32.div))
  (func $4 (type 1) (local.get 0) (f32.sqrt))
  (func $5 (type 1) (local.get 0) (f32.abs))
  (func $6 (type 1) (local.get 0) (f32.neg))
  (func $7 (type 0) (local.get 0) (local.get 1) (f32.copysign))
  (func $8 (type 1) (local.get 0) (f32.ceil))
  (func $9 (type 1) (local.get 0) (f32.floor))
  (func $10 (type 1) (local.get 0) (f32.trunc))
  (func $11 (type 1) (local.get 0) (f32.nearest))
  (func $12 (type 0) (local.get 0) (local.get 1) (f32.min))
  (func $13 (type 0) (local.get 0) (local.get 1) (f32.max))
  (func $14 (type 2) (local.get 0) (local.get 1) (f64.add))
  (func $15 (type 2) (local.get 0) (local.get 1) (f64.sub))
  (func $16 (type 2) (local.get 0) (local.get 1) (f64.mul))
  (func $17 (type 2) (local.get 0) (local.get 1) (f64.div))
  (func $18 (type 3) (local.get 0) (f64.sqrt))
  (func $19 (type 3) (local.get 0) (f64.abs))
  (func $20 (type 3) (local.get 0) (f64.neg))
  (func $21 (type 2) (local.get 0) (local.get 1) (f64.copysign))
  (func $22 (type 3) (local.get 0) (f64.ceil))
  (func $23 (type 3) (local.get 0) (f64.floor))
  (func $24 (type 3) (local.get 0) (f64.trunc))
  (func $25 (type 3) (local.get 0) (f64.nearest))
  (func $26 (type 2) (local.get 0) (local.get 1) (f64.min))
  (func $27 (type 2) (local.get 0) (local.get 1) (f64.max))
  (export "f32.add" (func 0))
  (export "f32.sub" (func 1))
  (export "f32.mul" (func 2))
  (export "f32.div" (func 3))
  (export "f32.sqrt" (func 4))
  (export "f32.abs" (func 5))
  (export "f32.neg" (func 6))
  (export "f32.copysign" (func 7))
  (export "f32.ceil" (func 8))
  (export "f32.floor" (func 9))
  (export "f32.trunc" (func 10))
  (export "f32.nearest" (func 11))
  (export "f32.min" (func 12))
  (export "f32.max" (func 13))
  (export "f64.add" (func 14))
  (export "f64.sub" (func 15))
  (export "f64.mul" (func 16))
  (export "f64.div" (func 17))
  (export "f64.sqrt" (func 18))
  (export "f64.abs" (func 19))
  (export "f64.neg" (func 20))
  (export "f64.copysign" (func 21))
  (export "f64.ceil" (func 22))
  (export "f64.floor" (func 23))
  (export "f64.trunc" (func 24))
  (export "f64.nearest" (func 25))
  (export "f64.min" (func 26))
  (export "f64.max" (func 27))
)
(assert_return
  (invoke "f32.add"
    (f32.const 1.123_456_835_746_765_1)
    (f32.const 1.234_500_002_222_915_8e-10)
  )
  (f32.const 1.123_456_835_746_765_1)
)
(assert_return
  (invoke "f64.add" (f64.const 1.123_456_789) (f64.const 1.234_5e-10))
  (f64.const 1.123_456_789_123_449_9)
)
(assert_return
  (invoke "f32.add" (f32.const 1) (f32.const 5.960_464_477_539_062_5e-08))
  (f32.const 1)
)
(assert_return
  (invoke "f32.add" (f32.const 1) (f32.const 5.960_465_188_081_798_3e-08))
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f64.add" (f64.const 1) (f64.const 1.110_223_024_625_156_5e-16))
  (f64.const 1)
)
(assert_return
  (invoke "f64.add" (f64.const 1) (f64.const 1.110_223_024_625_156_8e-16))
  (f64.const 1.000_000_000_000_000_2)
)
(assert_return
  (invoke "f32.add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_210_692_441_1e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_200_9e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "f32.add" (f32.const 2_147_483_648) (f32.const 1_024.25))
  (f32.const 2_147_484_672)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.223_372_036_854_775_8e+18)
    (f64.const 1_024.25)
  )
  (f64.const 9.223_372_036_854_777_9e+18)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.645_561_009_778_198_7e-304)
    (f64.const 2.919_927_966_921_767_1e-320)
  )
  (f64.const -3.645_561_009_778_198_3e-304)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9_007_199_254_740_992)
    (f64.const 1.000_010_000_000_000_1)
  )
  (f64.const 9_007_199_254_740_994)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9_007_199_254_740_994)
    (f64.const 0.999_984_741_210_937_5)
  )
  (f64.const 9_007_199_254_740_994)
)
(assert_return
  (invoke "f32.add" (f32.const 8_388_608) (f32.const 0.5))
  (f32.const 8_388_608)
)
(assert_return
  (invoke "f32.add" (f32.const 8_388_609) (f32.const 0.5))
  (f32.const 8_388_610)
)
(assert_return
  (invoke "f64.add" (f64.const 4_503_599_627_370_496) (f64.const 0.5))
  (f64.const 4_503_599_627_370_496)
)
(assert_return
  (invoke "f64.add" (f64.const 4_503_599_627_370_497) (f64.const 0.5))
  (f64.const 4_503_599_627_370_498)
)
(assert_return
  (invoke "f32.add"
    (f32.const -6.207_600_156_575_025_4e+30)
    (f32.const 2.309_799_003_433_569_8e-30)
  )
  (f32.const -6.207_600_156_575_025_4e+30)
)
(assert_return
  (invoke "f32.add"
    (f32.const 2.098_658_074_950_002_3e+20)
    (f32.const -5_270_152_505_458_688)
  )
  (f32.const 2.098_605_298_391_869e+20)
)
(assert_return
  (invoke "f32.add"
    (f32.const 1.963_492_049_427_400_1e-25)
    (f32.const 4.622_006_701_228_597e-38)
  )
  (f32.const 1.963_492_049_427_400_1e-25)
)
(assert_return
  (invoke "f32.add"
    (f32.const 640_904_986_624)
    (f32.const -64_449_549_099_335_680)
  )
  (f32.const -64_448_909_149_208_576)
)
(assert_return
  (invoke "f32.add"
    (f32.const 6.019_659_849_698_655_3e-05)
    (f32.const 1.203_727_922_160_614_1e+32)
  )
  (f32.const 1.203_727_922_160_614_1e+32)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.218_993_827_002_740_7e-125)
    (f64.const -1.283_078_243_878_048_5e+75)
  )
  (f64.const -1.283_078_243_878_048_5e+75)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.650_340_787_014_896_5e+22)
    (f64.const 4.670_208_988_478_548_3e-56)
  )
  (f64.const -9.650_340_787_014_896_5e+22)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.855_914_767_543_410_6e-45)
    (f64.const -0.000_261_242_805_706_530_86)
  )
  (f64.const -0.000_261_242_805_706_530_86)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.179_099_281_652_966_7e+149)
    (f64.const 7.933_556_474_151_270_8e+19)
  )
  (f64.const 4.179_099_281_652_966_7e+149)
)
(assert_return
  (invoke "f64.add"
    (f64.const 8.265_442_868_747_022_9e+96)
    (f64.const 4.360_332_783_900_625e+118)
  )
  (f64.const 4.360_332_783_900_625e+118)
)
(assert_return
  (invoke "f32.add"
    (f32.const 5.238_404_127_822_499e+21)
    (f32.const -1_570_182.5)
  )
  (f32.const 5.238_404_127_822_499e+21)
)
(assert_return
  (invoke "f32.add"
    (f32.const 4.258_937_901_782_319_8e-14)
    (f32.const -5.709_235_256_700_059_7e-24)
  )
  (f32.const 4.258_937_901_782_319_8e-14)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.725_102_587_163_019_7e-13)
    (f32.const 8.371_155_873_353_713_4e+37)
  )
  (f32.const 8.371_155_873_353_713_4e+37)
)
(assert_return
  (invoke "f32.add"
    (f32.const -8.845_359_747_390_244e-14)
    (f32.const -1.516_562_567_345_435_7e-32)
  )
  (f32.const -8.845_359_747_390_244e-14)
)
(assert_return
  (invoke "f32.add"
    (f32.const 0.001_052_103_471_010_923_4)
    (f32.const -7.582_134_723_423_547_9e-33)
  )
  (f32.const 0.001_052_103_471_010_923_4)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.511_135_228_188_924_6e+54)
    (f64.const -2.760_218_100_603_169_2e-159)
  )
  (f64.const 1.511_135_228_188_924_6e+54)
)
(assert_return
  (invoke "f64.add"
    (f64.const 6.238_671_976_036_027_6e+46)
    (f64.const -8.592_185_488_839_212_4e-19)
  )
  (f64.const 6.238_671_976_036_027_6e+46)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.195_022_848_436_354_2e-122)
    (f64.const -2.922_534_202_255_145_3e-295)
  )
  (f64.const 4.195_022_848_436_354_2e-122)
)
(assert_return
  (invoke "f64.add"
    (f64.const -2.152_205_467_148_245_2e+44)
    (f64.const -1.112_220_412_047_137_2e+42)
  )
  (f64.const -2.163_327_671_268_716_5e+44)
)
(assert_return
  (invoke "f64.add"
    (f64.const -13.691_153_505_585_6)
    (f64.const 2.066_117_898_924_419_8e+87)
  )
  (f64.const 2.066_117_898_924_419_8e+87)
)
(assert_return
  (invoke "f32.add"
    (f32.const -6.456_021_030_610_507_5e-36)
    (f32.const 2.021_994_903_326_010_4e-13)
  )
  (f32.const 2.021_994_903_326_010_4e-13)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.682_316_880_964_208_4e-05)
    (f32.const 1.119_601_567_012_296_1e-08)
  )
  (f32.const -2.681_197_292_986_325_9e-05)
)
(assert_return
  (invoke "f32.add"
    (f32.const -128_526_172_160)
    (f32.const 2.735_630_473_371_789_9e-33)
  )
  (f32.const -128_526_172_160)
)
(assert_return
  (invoke "f32.add"
    (f32.const 4.158_973_127_324_512e-36)
    (f32.const -1_573_528_704)
  )
  (f32.const -1_573_528_704)
)
(assert_return
  (invoke "f32.add"
    (f32.const -9.338_768_644_095_452_5e-37)
    (f32.const 7.864_751_449_863_013_5e+28)
  )
  (f32.const 7.864_751_449_863_013_5e+28)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.198_659_665_068_321_8e-234)
    (f64.const -2.354_475_948_454_613_4e+302)
  )
  (f64.const -2.354_475_948_454_613_4e+302)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.141_756_195_935_957e+155)
    (f64.const -3.011_409_851_461_165_8e+148)
  )
  (f64.const -3.141_756_497_076_942_3e+155)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.372_285_836_768_183_6e-291)
    (f64.const 1.157_184_274_968_897_7e-85)
  )
  (f64.const 1.157_184_274_968_897_7e-85)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.828_583_756_551_075_3e-154)
    (f64.const 1.686_258_157_475_294_4e-259)
  )
  (f64.const -9.828_583_756_551_075_3e-154)
)
(assert_return
  (invoke "f64.add"
    (f64.const -6.725_842_035_221_635_3e+290)
    (f64.const 8.374_007_930_974_482_3e+240)
  )
  (f64.const -6.725_842_035_221_635_3e+290)
)
(assert_return
  (invoke "f64.add"
    (f64.const -2.108_966_053_278_899_5e+242)
    (f64.const 5.814_832_334_211_963_4e+248)
  )
  (f64.const 5.814_830_225_245_910_6e+248)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.023_157_926_668_214_8e+236)
    (f64.const 4.502_043_007_974_949_1e+224)
  )
  (f64.const 1.023_157_926_672_716_8e+236)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.305_299_785_709_565_6e+188)
    (f64.const 1.548_994_342_201_865_7e+203)
  )
  (f64.const 1.548_994_342_201_864_5e+203)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.762_999_743_472_168_4e+139)
    (f64.const 4.555_864_510_582_596_7e+155)
  )
  (f64.const 4.555_864_510_582_596_7e+155)
)
(assert_return
  (invoke "f64.add"
    (f64.const 3.958_952_516_558_413_8e-300)
    (f64.const 2.309_246_071_006_294_6e-290)
  )
  (f64.const 2.309_246_071_402_19e-290)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.378_055_847_541_599_6e+226)
    (f64.const -4.968_075_934_738_343_5e+286)
  )
  (f64.const -4.968_075_934_738_343_5e+286)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.117_431_116_854_608e+58)
    (f64.const -2.638_592_847_461_212_8e+82)
  )
  (f64.const -2.638_592_847_461_212_8e+82)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.508_489_561_700_634_9e+90)
    (f64.const 7.858_068_235_728_165_4e-128)
  )
  (f64.const -9.508_489_561_700_634_9e+90)
)
(assert_return
  (invoke "f64.add"
    (f64.const -5.079_144_928_553_737_3e-96)
    (f64.const -3.540_217_207_424_998_1e+140)
  )
  (f64.const -3.540_217_207_424_998_1e+140)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.165_382_103_988_111e-60)
    (f64.const 1.086_594_228_351_664_8e-298)
  )
  (f64.const -4.165_382_103_988_111e-60)
)
(assert_return
  (invoke "f32.add"
    (f32.const 9.721_564_916_252_782_7e+34)
    (f32.const 3.055_908_670_394_317_6e+38)
  )
  (f32.const 3.056_880_806_286_620_6e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const 2.704_656_278_285_509_7e+38)
    (f32.const -2.302_368_468_383_210_3e+32)
  )
  (f32.const 2.704_654_047_220_453_3e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const 3.572_092_819_342_499_1e+35)
    (f32.const -2.364_940_520_759_258_9e+38)
  )
  (f32.const -2.361_368_382_779_863_7e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const -1.484_234_092_792_273_4e+36)
    (f32.const -3.289_913_928_835_008_2e+38)
  )
  (f32.const -3.304_756_190_534_768_4e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.198_855_981_478_796_8e+38)
    (f32.const -8.156_092_864_302_113_2e+37)
  )
  (f32.const -3.014_465_217_202_984_1e+38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.039_020_493_954_762_8e+307)
    (f64.const 2.294_333_742_204_035_6e+295)
  )
  (f64.const 9.039_020_493_957_058e+307)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.659_160_597_362_460_5e+308)
    (f64.const 1.257_734_933_144_416e+298)
  )
  (f64.const 1.659_160_597_488_233_9e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.363_512_925_613_943_1e+308)
    (f64.const 6.050_703_060_387_358_4e+304)
  )
  (f64.const -1.362_907_855_307_904_4e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.437_761_325_822_742_4e+301)
    (f64.const 1.699_471_527_587_934_9e+308)
  )
  (f64.const 1.699_471_183_811_802_2e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.227_342_700_864_556_7e+307)
    (f64.const -3.926_941_645_101_868_1e+298)
  )
  (f64.const 9.227_342_696_937_615_1e+307)
)
(assert_return
  (invoke "f32.add"
    (f32.const 8.313_455_373_330_555_7e-39)
    (f32.const 8.730_089_432_743_610_4e-43)
  )
  (f32.const 8.314_328_382_273_830_1e-39)
)
(assert_return
  (invoke "f32.add"
    (f32.const 5.184_804_318_001_823_2e-44)
    (f32.const -2.802_596_928_649_634_1e-45)
  )
  (f32.const 4.904_544_625_136_859_7e-44)
)
(assert_return
  (invoke "f32.add"
    (f32.const -1.121_038_771_459_853_7e-44)
    (f32.const 5.186_284_089_180_150_2e-39)
  )
  (f32.const 5.186_272_878_792_435_6e-39)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.802_596_928_649_634_1e-44)
    (f32.const 2.367_528_283_470_939_4e-37)
  )
  (f32.const 2.367_528_059_263_185_1e-37)
)
(assert_return
  (invoke "f32.add"
    (f32.const 6.347_882_043_391_421_3e-43)
    (f32.const -3.326_962_813_999_980_7e-41)
  )
  (f32.const -3.263_483_993_566_066_5e-41)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.846_148_937_593_675_5e-308)
    (f64.const -5.130_160_608_603_642_2e-308)
  )
  (f64.const -2.284_011_671_009_966_8e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.740_481_135_477_499_9e-308)
    (f64.const -8.895_417_776_504_167e-308)
  )
  (f64.const -4.154_936_641_026_667_1e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.330_082_001_250_493_6e-309)
    (f64.const -2.986_398_060_941_971_7e-308)
  )
  (f64.const -3.919_406_261_067_021e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.441_869_388_449_400_8e-307)
    (f64.const -1.632_491_437_775_918_7e-307)
  )
  (f64.const -1.906_220_493_265_178_2e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.320_361_936_228_150_6e-308)
    (f64.const 2.521_511_966_399_843_9e-308)
  )
  (f64.const -1.798_849_969_828_306_7e-308)
)
(assert_return
  (invoke "f32.add"
    (f32.const 3.402_823_263_561_192_6e+38)
    (f32.const 2.028_240_960_365_167e+31)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.797_693_134_862_315_5e+308)
    (f64.const 1.995_840_309_534_719_8e+292)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "f32.add" (f32.const 2) (f32.const 2)) (f32.const 4))
(assert_return (invoke "f64.add" (f64.const 2) (f64.const 2)) (f64.const 4))
(assert_return
  (invoke "f32.add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.014_120_419_736_292_5e+31)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.014_120_480_182_583_5e+31)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 9.979_201_547_673_598e+291)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 9.979_201_547_673_599_1e+291)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f32.sub" (f32.const 65_536) (f32.const 7.275_957_614_183_425_9e-12))
  (f32.const 65_536)
)
(assert_return
  (invoke "f64.sub" (f64.const 65_536) (f64.const 7.275_957_614_183_425_9e-12))
  (f64.const 65_535.999_999_999_993)
)
(assert_return
  (invoke "f32.sub" (f32.const 1) (f32.const 2.980_232_238_769_531_2e-08))
  (f32.const 1)
)
(assert_return
  (invoke "f32.sub" (f32.const 1) (f32.const 2.980_232_594_040_899_1e-08))
  (f32.const 0.999_999_940_395_355_22)
)
(assert_return
  (invoke "f64.sub" (f64.const 1) (f64.const 5.551_115_123_125_782_7e-17))
  (f64.const 1)
)
(assert_return
  (invoke "f64.sub" (f64.const 1) (f64.const 5.551_115_123_125_783_9e-17))
  (f64.const 0.999_999_999_999_999_89)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 2.379_208_059_840_796_4e-32)
    (f32.const -7.221_297_616_978_506_5e+35)
  )
  (f32.const 7.221_297_616_978_506_5e+35)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -8.422_840_238_404_833_7e+35)
    (f32.const -11_118_414_135_296)
  )
  (f32.const -8.422_840_238_404_833_7e+35)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 1.454_944_372_177_124)
    (f32.const -3.379_261_455_584_648_6e-25)
  )
  (f32.const 1.454_944_372_177_124)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 9.480_891_428_414_284_7e-36)
    (f32.const 1.858_950_249_836_771_2e-23)
  )
  (f32.const -1.858_950_249_836_771_2e-23)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 6.181_167_009_344_790_1e-06)
    (f32.const -9.395_986_424_247_663_5e-33)
  )
  (f32.const 6.181_167_009_344_790_1e-06)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -7.757_016_501_244_130_4e-101)
    (f64.const -2.524_845_082_116_608_9e-272)
  )
  (f64.const -7.757_016_501_244_130_4e-101)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -2.099_187_106_483_270_9e+166)
    (f64.const -3.816_507_977_842_686_4e-48)
  )
  (f64.const -2.099_187_106_483_270_9e+166)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.859_203_096_416_233_2e-139)
    (f64.const -2.088_946_519_433_608_7e-252)
  )
  (f64.const 2.859_203_096_416_233_2e-139)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.038_795_289_309_430_3e-303)
    (f64.const -2.320_494_111_402_189_7e+46)
  )
  (f64.const 2.320_494_111_402_189_7e+46)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -1.495_390_403_903_631_7e-43)
    (f64.const -1.059_225_269_564_568_3e-162)
  )
  (f64.const -1.495_390_403_903_631_7e-43)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -4.486_016_552_717_641_2e+32)
    (f32.const -8.984_148_050_887_243_8e+33)
  )
  (f32.const 8.535_546_434_301_105_9e+33)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -8.994_274_245_666_093_3e+32)
    (f32.const 91.579_383_850_097_656)
  )
  (f32.const -8.994_274_245_666_093_3e+32)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.197_499_975_329_712_5e-25)
    (f32.const 6.314_040_490_451_589e-08)
  )
  (f32.const -6.314_040_490_451_589e-08)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.180_048_666_194_516_2e-23)
    (f32.const -0.000_315_587_356_453_761_46)
  )
  (f32.const 0.000_315_587_356_453_761_46)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -7.364_838_050_540_576_2e+29)
    (f32.const 3.082_451_329_551_292_7e-18)
  )
  (f32.const -7.364_838_050_540_576_2e+29)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.410_469_964_196_795_6e+60)
    (f64.const -1.730_627_569_138_596_9e+271)
  )
  (f64.const 1.730_627_569_138_596_9e+271)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.877_908_564_233_173e-111)
    (f64.const 2.339_448_785_991_429e-136)
  )
  (f64.const 2.877_908_564_233_173e-111)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.719_219_783_531_961_8e-61)
    (f64.const 1.572_015_082_308_034e-153)
  )
  (f64.const -9.719_219_783_531_961_8e-61)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -3.490_889_603_175_127_4e-299)
    (f64.const -1.992_847_972_130_320_8e-99)
  )
  (f64.const 1.992_847_972_130_320_8e-99)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -7.538_298_763_725_555_9e+33)
    (f64.const 4.447_012_580_193_329_1e+51)
  )
  (f64.const -4.447_012_580_193_329_1e+51)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 7.584_697_644_672_856_9e+28)
    (f32.const 4.639_175_313_059_240_6e-05)
  )
  (f32.const 7.584_697_644_672_856_9e+28)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -567_139.875)
    (f32.const -3.033_484_227_699_112_5e-11)
  )
  (f32.const -567_139.875)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.741_226_086_926_506_2e-11)
    (f32.const -1.787_779_336_774_325_8e-17)
  )
  (f32.const -1.741_224_352_203_030_2e-11)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -6.564_554_496_435_448_5e-05)
    (f32.const 0.000_144_738_063_681_870_7)
  )
  (f32.const -0.000_210_383_615_922_182_8)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.601_611_482_326_958_9e-10)
    (f32.const -8.538_007_497_388_273_4e-32)
  )
  (f32.const -1.601_611_482_326_958_9e-10)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.358_725_267_183_177_4e-48)
    (f64.const -3.113_714_733_868_516_4e+217)
  )
  (f64.const 3.113_714_733_868_516_4e+217)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -4.390_767_596_767_214_7e+228)
    (f64.const -6.789_045_715_895_856_1e+271)
  )
  (f64.const 6.789_045_715_895_856_1e+271)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.628_828_101_083_115_3e-240)
    (f64.const 3.383_199_683_245_004_4e+54)
  )
  (f64.const -3.383_199_683_245_004_4e+54)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -3.645_097_751_812_618_7e-173)
    (f64.const 3.142_349_096_968_662_4e-164)
  )
  (f64.const -3.142_349_100_613_760_3e-164)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -8.021_529_638_989_887e-169)
    (f64.const -6.774_972_769_072_139_2e-05)
  )
  (f64.const 6.774_972_769_072_139_2e-05)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 5.816_988_065_793_038_9e-24)
    (f64.const 2.502_149_924_154_086_6e-35)
  )
  (f64.const 5.816_988_065_768_017_8e-24)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 4.333_668_330_480_955_4e-296)
    (f64.const 1.694_558_260_747_631_6e-304)
  )
  (f64.const 4.333_668_313_535_372_6e-296)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 6.908_052_676_315_257_1e-77)
    (f64.const 1.200_177_373_479_985_6e-60)
  )
  (f64.const -1.200_177_373_479_985_6e-60)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -2.204_429_154_744_381_3e-12)
    (f64.const -2.794_742_992_561_863_2e-21)
  )
  (f64.const -2.204_429_151_949_638_1e-12)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 4.016_393_569_117_761_2e-08)
    (f64.const 0.170_538_819_893_954_47)
  )
  (f64.const -0.170_538_779_730_018_77)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -1.001_510_689_866_728_5e-245)
    (f64.const -4.785_375_958_943_186e-231)
  )
  (f64.const 4.785_375_958_943_175_7e-231)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -15_618_959_953.641_388)
    (f64.const 5.982_344_106_207_189_3e+110)
  )
  (f64.const -5.982_344_106_207_189_3e+110)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.883_207_154_037_668e+34)
    (f64.const 4.219_227_927_432_030_4e-178)
  )
  (f64.const 3.883_207_154_037_668e+34)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.070_598_689_080_789_7e-147)
    (f64.const -1.746_660_773_473_721_6e-209)
  )
  (f64.const 1.070_598_689_080_789_7e-147)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 9.493_783_462_618_339_8e-18)
    (f64.const 1.458_488_543_495_029_4e-186)
  )
  (f64.const 9.493_783_462_618_339_8e-18)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 23.140_691_757_202_148)
    (f32.const 3.141_592_741_012_573_2)
  )
  (f32.const 19.999_099_731_445_312)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 23.140_692_632_779_27)
    (f64.const 3.141_592_653_589_793_1)
  )
  (f64.const 19.999_099_979_189_477)
)
(assert_return
  (invoke "f32.sub" (f32.const 2_999_999) (f32.const 2_999_998))
  (f32.const 1)
)
(assert_return
  (invoke "f32.sub" (f32.const 1_999_999) (f32.const 1_999_995))
  (f32.const 4)
)
(assert_return
  (invoke "f32.sub" (f32.const 1_999_999) (f32.const 1_999_993))
  (f32.const 6)
)
(assert_return
  (invoke "f32.sub" (f32.const 400_002) (f32.const 400_001))
  (f32.const 1)
)
(assert_return
  (invoke "f32.sub" (f32.const 400_002) (f32.const 400_000))
  (f32.const 2)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2_999_999_999_999_999)
    (f64.const 2_999_999_999_999_998)
  )
  (f64.const 1)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1_999_999_999_999_999)
    (f64.const 1_999_999_999_999_995)
  )
  (f64.const 4)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1_999_999_999_999_999)
    (f64.const 1_999_999_999_999_993)
  )
  (f64.const 6)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 400_000_000_000_002)
    (f64.const 400_000_000_000_001)
  )
  (f64.const 1)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 400_000_000_000_002)
    (f64.const 400_000_000_000_000)
  )
  (f64.const 2)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_210_692_441_1e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_200_9e-308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 1.000_000_119_209_289_6)
    (f32.const 0.999_999_940_395_355_22)
  )
  (f32.const 1.788_139_343_261_718_8e-07)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.000_000_119_209_289_6) (f32.const 1))
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "f32.sub" (f32.const 1) (f32.const 0.999_999_940_395_355_22))
  (f32.const 5.960_464_477_539_062_5e-08)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.000_000_000_000_000_2)
    (f64.const 0.999_999_999_999_999_89)
  )
  (f64.const 3.330_669_073_875_469_6e-16)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.000_000_000_000_000_2) (f64.const 1))
  (f64.const 2.220_446_049_250_313_1e-16)
)
(assert_return
  (invoke "f64.sub" (f64.const 1) (f64.const 0.999_999_999_999_999_89))
  (f64.const 1.110_223_024_625_156_5e-16)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.014_120_419_736_292_5e+31)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.014_120_480_182_583_5e+31)
  )
  (f32.const 3.402_823_263_561_192_6e+38)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 9.979_201_547_673_598e+291)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 9.979_201_547_673_599_1e+291)
  )
  (f64.const 1.797_693_134_862_315_5e+308)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 999_999_986_991_104)
    (f32.const 999_999_986_991_104)
  )
  (f32.const 9.999_999_394_896_024_9e+29)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.000_000_020_040_877_3e+20)
    (f32.const 1.000_000_020_040_877_3e+20)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 9.999_999_562_023_526_2e+24)
    (f32.const 9.999_999_562_023_526_2e+24)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1_000_000_000_000_000)
    (f64.const 1_000_000_000_000_000)
  )
  (f64.const 1e+30)
)
(assert_return
  (invoke "f64.mul" (f64.const 1e+20) (f64.const 1e+20))
  (f64.const 1e+40)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.000_000_000_000_000_1e+25)
    (f64.const 1.000_000_000_000_000_1e+25)
  )
  (f64.const 1.000_000_000_000_000_3e+50)
)
(assert_return
  (invoke "f32.mul" (f32.const 1_848_874_880) (f32.const 19_954_563_072))
  (f32.const 3.689_349_254_546_561_4e+19)
)
(assert_return
  (invoke "f64.mul" (f64.const 1_848_874_847) (f64.const 19_954_562_207))
  (f64.const 3.689_348_814_741_911_1e+19)
)
(assert_return
  (invoke "f32.mul" (f32.const 77.099_998_474_121_094) (f32.const 850))
  (f32.const 65_535)
)
(assert_return
  (invoke "f64.mul" (f64.const 77.099_999_999_999_994) (f64.const 850))
  (f64.const 65_534.999_999_999_993)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.493_839_431_476_183e+18)
    (f32.const 2.117_605_396_589_894_4e-11)
  )
  (f32.const -52_809_680)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -6.777_248_420_629_077_9e+30)
    (f32.const -3.475_824_183_022_695_4e-31)
  )
  (f32.const 2.355_652_332_305_908_2)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -8.384_397_588_099_775_4e+27)
    (f32.const -1.194_899_073_023_288_8e-29)
  )
  (f32.const 0.100_185_088_813_304_9)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -6.567_654_100_365_863_1e+23)
    (f32.const -4.688_976_598_859_210_6e-23)
  )
  (f32.const 30.795_576_095_581_055)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 13_328_203_716_231_168)
    (f32.const 45.567_222_595_214_844)
  )
  (f32.const 6.073_291_976_558_510_1e+17)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -9.942_622_609_334_243_1e+127)
    (f64.const 5.831_772_415_142_451_4e+284)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.748_155_824_301_908_9e-297)
    (f64.const -2.093_035_437_779_454_9e-66)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.648_882_573_713_025_1e+182)
    (f64.const -1.592_728_864_872_543_6e+32)
  )
  (f64.const -7.404_409_464_555_695_8e+214)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -8.261_927_764_172_427e-95)
    (f64.const 3.668_474_419_052_953_5e+175)
  )
  (f64.const -3.030_867_065_492_991_3e+81)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.538_389_583_317_692_5e+239)
    (f64.const 7.842_892_881_810_105e-259)
  )
  (f64.const 1.990_831_759_426_324_8e-19)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.015_333_345_742_641_3e-27)
    (f32.const -5.031_353_283_027_047_5e+27)
  )
  (f32.const 10.139_854_431_152_344)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.228_632_531_252_488_5e+22)
    (f32.const 749_601.812_5)
  )
  (f32.const 9.209_851_901_614_32e+27)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.763_513_862_191_757_7e-10)
    (f32.const -3.552_471_361_627_201_6e+22)
  )
  (f32.const 9_817_304_334_336)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 2.189_312_192_933_621_9e+20)
    (f32.const -40_298.785_156_25)
  )
  (f32.const -8.822_662_062_252_867_8e+24)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1_691_996_288)
    (f32.const -1.221_033_523_158_733_3e+20)
  )
  (f32.const -2.065_984_145_802_795_5e+29)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -7.576_316_076_452_304_4e-193)
    (f64.const 4.601_355_879_514_985_7e-95)
  )
  (f64.const -3.486_132_652_344_771_9e-287)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.222_861_608_144_388_5e-83)
    (f64.const -8.055_526_185_180_066_9e-192)
  )
  (f64.const -9.850_793_705_258_527_2e-275)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.068_651_246_039_250_8e+99)
    (f64.const -3.668_010_715_832_548e+251)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.543_238_835_610_281_1e+285)
    (f64.const 7.370_621_385_787_006_6e-133)
  )
  (f64.const 1.137_462_916_512_617_7e+153)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.235_876_566_242_058_7e+102)
    (f64.const -7.606_690_059_202_569_3e+50)
  )
  (f64.const -1.700_762_005_003_744_1e+153)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -110_087_033_061_376)
    (f32.const -5.403_802_077_401_141_9e+28)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -0.193_663_507_699_966_43)
    (f32.const 2.974_895_399_840_685_3e-30)
  )
  (f32.const -5.761_286_832_871_643_3e-31)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -3.430_071_274_124_202_3e-06)
    (f32.const 7.799_152_327_916_086_3e+31)
  )
  (f32.const -2.675_164_903_378_551_4e+26)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -99_003_849_485_844_480)
    (f32.const 2.093_377_365_526_276_7e-29)
  )
  (f32.const -2.072_524_226_889_860_3e-12)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -129_919.070_312_5)
    (f32.const 1.848_099_856_444_059_8e-36)
  )
  (f32.const -2.401_034_198_136_483_1e-31)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -6.625_572_200_844_894_8e-150)
    (f64.const -3.737_402_068_174_000_9e+130)
  )
  (f64.const 2.476_242_724_627_387_7e-19)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 8.210_768_485_617_579_7e+143)
    (f64.const -1.297_655_232_855_228_9e-230)
  )
  (f64.const -1.065_474_669_112_445_5e-86)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.022_344_929_490_604_1e+52)
    (f64.const 1.970_855_583_334_680_5e+108)
  )
  (f64.const -2.014_894_212_380_457_4e+160)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.918_243_080_119_086e+231)
    (f64.const -6.363_317_094_168_970_1e+112)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 3.407_037_798_802_671_8e+24)
    (f64.const 1.225_791_423_971_562_9e+21)
  )
  (f64.const 4.176_317_714_919_266_4e+45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.409_192_728_439_954_7e-103)
    (f64.const 1.151_884_070_229_659_2e-173)
  )
  (f64.const 5.078_878_866_462_431_6e-276)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -0.002_980_041_826_472_431_8)
    (f64.const 6.312_541_299_321_800_3e+217)
  )
  (f64.const -1.881_163_710_331_359_4e+215)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -3.083_445_780_813_001_1e+110)
    (f64.const -1.008_104_955_500_852_9e-196)
  )
  (f64.const 3.108_436_971_655_783_3e-86)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 3.493_875_013_156_772_8e+233)
    (f64.const 2.131_316_915_930_809_9e+18)
  )
  (f64.const 7.446_554_917_689_010_2e+251)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.250_010_800_510_023_4e-83)
    (f64.const 1.035_265_704_160_467_5e+270)
  )
  (f64.const -1.294_093_311_598_199e+187)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 8.947_461_661_755_698_5e-181)
    (f64.const 2.085_384_414_131_243_6e-128)
  )
  (f64.const 1.865_889_709_546_217_3e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.161_813_037_330_394e-17)
    (f64.const -1.873_703_813_558_366_8e-291)
  )
  (f64.const 2.176_893_518_687_788_6e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.175_232_676_835_243_3e-147)
    (f64.const -6.631_210_068_072_051_8e-162)
  )
  (f64.const 1.442_442_482_702_918_4e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -7.149_518_157_441_742_6e-233)
    (f64.const 2.277_044_506_236_539_3e-77)
  )
  (f64.const -1.627_977_104_264_112_9e-309)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -4.817_739_302_150_785_7e-156)
    (f64.const -2.537_502_304_971_976_3e-153)
  )
  (f64.const 1.222_502_458_396_169_7e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.657_644_162_950_155_4e+256)
    (f64.const 7.021_344_893_525_713_7e-266)
  )
  (f64.const 3.270_292_605_938_992_1e-09)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 0.012_451_716_278_313_712)
    (f64.const 1.945_309_177_849_330_8e-45)
  )
  (f64.const 2.422_243_795_617_957_8e-47)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -3.831_231_477_759_858_6)
    (f64.const 9.039_887_741_742_674_3e-13)
  )
  (f64.const -3.463_390_247_158_001_7e-12)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 9.843_582_638_849_688_6e-113)
    (f64.const 3.375_405_654_777_583_1e-62)
  )
  (f64.const 3.322_608_450_244_368_4e-174)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.605_445_370_945_144_6e+23)
    (f64.const 3.288_752_818_580_903_5e-105)
  )
  (f64.const -8.568_665_807_354_412e-82)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 2.646_977_960_169_688_6e-23)
    (f32.const 2.646_977_960_169_688_6e-23)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 2.646_978_275_714_050_6e-23)
    (f32.const 2.646_978_275_714_050_6e-23)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.571_727_784_702_628_5e-162)
    (f64.const 1.571_727_784_702_628_5e-162)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.571_727_784_702_628_8e-162)
    (f64.const 1.571_727_784_702_628_8e-162)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.844_674_297_419_792_4e+19)
    (f32.const 1.844_674_297_419_792_4e+19)
  )
  (f32.const 3.402_823_263_561_192_6e+38)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.844_674_407_370_955_2e+19)
    (f32.const 1.844_674_407_370_955_2e+19)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.340_780_792_994_259_6e+154)
    (f64.const 1.340_780_792_994_259_6e+154)
  )
  (f64.const 1.797_693_134_862_315_5e+308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.340_780_792_994_259_7e+154)
    (f64.const 1.340_780_792_994_259_7e+154)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.000_000_119_209_289_6)
    (f32.const 1.000_000_119_209_289_6)
  )
  (f32.const 1.000_000_238_418_579_1)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 0.999_999_940_395_355_22)
    (f32.const 0.999_999_940_395_355_22)
  )
  (f32.const 0.999_999_880_790_710_45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.000_000_000_000_000_2)
    (f64.const 1.000_000_000_000_000_2)
  )
  (f64.const 1.000_000_000_000_000_4)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 0.999_999_999_999_999_89)
    (f64.const 0.999_999_999_999_999_89)
  )
  (f64.const 0.999_999_999_999_999_78)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.000_000_119_209_289_6)
    (f32.const 0.999_999_940_395_355_22)
  )
  (f32.const 1)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.000_000_238_418_579_1)
    (f32.const 0.999_999_880_790_710_45)
  )
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.000_000_000_000_000_2)
    (f64.const 0.999_999_999_999_999_89)
  )
  (f64.const 1)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.000_000_000_000_000_4)
    (f64.const 0.999_999_999_999_999_78)
  )
  (f64.const 1.000_000_000_000_000_2)
)
(assert_return
  (invoke "f32.mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.192_092_895_507_812_5e-07)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.220_446_049_250_313_1e-16)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -16.001_464_843_75)
    (f32.const 2.984_653_625_134_714_4e-40)
  )
  (f32.const -4.775_883_005_336_412_3e-39)
)
(assert_return
  (invoke "f32.div" (f32.const 1.123_456_835_746_765_1) (f32.const 100))
  (f32.const 0.011_234_568_431_973_457)
)
(assert_return
  (invoke "f32.div" (f32.const 8_391_667) (f32.const 12_582_905))
  (f32.const 0.666_910_171_508_789_06)
)
(assert_return
  (invoke "f32.div" (f32.const 65_536) (f32.const 7.275_957_614_183_425_9e-12))
  (f32.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.862_295_746_803_283_7)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 5.472_794_974_494_466_6e-39)
)
(assert_return
  (invoke "f32.div" (f32.const 4) (f32.const 3))
  (f32.const 1.333_333_373_069_763_2)
)
(assert_return
  (invoke "f64.div" (f64.const 1.123_456_789) (f64.const 100))
  (f64.const 0.011_234_567_89)
)
(assert_return
  (invoke "f64.div" (f64.const 8_391_667) (f64.const 12_582_905))
  (f64.const 0.666_910_145_153_285_39)
)
(assert_return
  (invoke "f64.div" (f64.const 65_536) (f64.const 7.275_957_614_183_425_9e-12))
  (f64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.862_295_746_803_283_7)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.035_936_395_755_283_1e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 4) (f64.const 3))
  (f64.const 1.333_333_333_333_333_3)
)
(assert_return
  (invoke "f32.div" (f32.const 4_195_835) (f32.const 3_145_727))
  (f32.const 1.333_820_462_226_867_7)
)
(assert_return
  (invoke "f64.div" (f64.const 4_195_835) (f64.const 3_145_727))
  (f64.const 1.333_820_449_136_241_1)
)
(assert_return
  (invoke "f32.div"
    (f32.const 5.029_632_936_401_568_3e-15)
    (f32.const 3.363_243_763_812_434_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.div"
    (f32.const 8.921_986_793_542_511_1e-27)
    (f32.const 3.540_975_262_112_143_1e+20)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.div"
    (f32.const -104_167.468_75)
    (f32.const 1.586_662_266_903_732_8e-24)
  )
  (f32.const -6.565_194_917_182_446_6e+28)
)
(assert_return
  (invoke "f32.div"
    (f32.const -2.493_865_738_264_807_8e-23)
    (f32.const -3.623_008_750_636_887_5e-37)
  )
  (f32.const 68_834_107_064_320)
)
(assert_return
  (invoke "f32.div"
    (f32.const -4_142_204_190_720)
    (f32.const 1.195_494_838_820_060_5e-24)
  )
  (f32.const -3.464_844_983_329_765e+36)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.939_011_638_244_838_4e+44)
    (f64.const 2.529_074_235_734_831_4e+67)
  )
  (f64.const 7.666_883_046_955_921_3e-24)
)
(assert_return
  (invoke "f64.div"
    (f64.const 6.600_332_149_752_303_8e-189)
    (f64.const 3.007_915_153_468_629_2e-293)
  )
  (f64.const 2.194_321_253_423_992_7e+104)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.348_275_173_661_902_9e+89)
    (f64.const 4.809_309_529_035_846_6e+192)
  )
  (f64.const -1.943_787_380_958_200_1e-103)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.759_833_908_841_753_5e+208)
    (f64.const 1.993_860_725_806_828_5e+74)
  )
  (f64.const -8.826_262_968_440_914_9e+133)
)
(assert_return
  (invoke "f64.div"
    (f64.const -4.566_268_877_844_991_1e+162)
    (f64.const 3.128_249_582_233_453_1e+136)
  )
  (f64.const -1.459_688_160_362_462_6e+26)
)
(assert_return
  (invoke "f32.div"
    (f32.const -1.039_406_376_042_880_8e+21)
    (f32.const -1.296_596_589_798_938_7e-26)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.div"
    (f32.const 2.683_156_262_006_224_8e-14)
    (f32.const 31_241_038_462_976)
  )
  (f32.const 8.588_563_253_408_381_9e-28)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.273_424_744_606_018_1)
    (f32.const -6.927_837_068_229_470_8e+26)
  )
  (f32.const -1.838_127_376_001_605_1e-27)
)
(assert_return
  (invoke "f32.div"
    (f32.const 6.898_882_714_456_895_4e-16)
    (f32.const 3.762_675_552_004_817_7e-39)
  )
  (f32.const 1.833_504_579_575_150_9e+23)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.819_916_220_492_890_3e+27)
    (f32.const 2.050_670_305_246_714_1e+26)
  )
  (f32.const 8.874_738_693_237_304_7)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.113_771_592_442_807_7e-308)
    (f64.const -1.673_326_161_291_025_3e+109)
  )
  (f64.const -0)
)
(assert_return
  (invoke "f64.div"
    (f64.const -8.116_644_948_016_275_4e-298)
    (f64.const 6.517_571_349_002_277e-162)
  )
  (f64.const -1.245_348_077_280_164_8e-136)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.335_476_912_259_028_8e-122)
    (f64.const -39_099_281_466_396.5)
  )
  (f64.const 2.387_633_880_249_772_6e-135)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.686_856_985_488_590_2e+24)
    (f64.const 1.353_599_386_107_685_7e-238)
  )
  (f64.const -1.246_201_056_827_601_2e+262)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.733_887_733_249_412_1e+71)
    (f64.const -70_026_160_475_217_472)
  )
  (f64.const 2.476_057_121_342_589_8e+54)
)
(assert_return
  (invoke "f32.div" (f32.const 93_506_192) (f32.const 2.876_088_463_816_27e-36))
  (f32.const inf)
)
(assert_return
  (invoke "f32.div"
    (f32.const -2.005_753_934_667_175_3e+23)
    (f32.const 246_697_216)
  )
  (f32.const -813_042_812_059_648)
)
(assert_return
  (invoke "f32.div"
    (f32.const 384_712_212_480)
    (f32.const -1.070_378_481_662_298_8e+29)
  )
  (f32.const -3.594_170_071_894_972_3e-18)
)
(assert_return
  (invoke "f32.div"
    (f32.const -4.156_665_003_774_591_9e+33)
    (f32.const -901.419_189_453_125)
  )
  (f32.const 4.611_245_346_076_672_4e+30)
)
(assert_return
  (invoke "f32.div"
    (f32.const -6.702_386_865_118_696_2e+27)
    (f32.const -14_000.254_882_812_5)
  )
  (f32.const 4.787_332_168_502_360_3e+23)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.008_526_959_890_752_5e-197)
    (f64.const 1.878_037_403_285_021_5e-208)
  )
  (f64.const -53_701_111_496.856_209)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.257_166_456_295_110_2e+235)
    (f64.const -5.885_738_519_211_168_1e-167)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.164_094_686_123_331_7e-225)
    (f64.const 4.585_451_055_651_625_4e-20)
  )
  (f64.const -6.900_291_046_010_721e-206)
)
(assert_return
  (invoke "f64.div"
    (f64.const -5.268_422_429_466_565_9e+95)
    (f64.const -1.481_690_707_145_120_1e-177)
  )
  (f64.const 3.555_682_980_301_343_6e+272)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.039_956_270_017_489_8e+54)
    (f64.const -4.709_788_197_188_427_4e+64)
  )
  (f64.const -8.577_787_579_554_420_6e-11)
)
(assert_return
  (invoke "f64.div"
    (f64.const -2.039_595_604_683_476_1e+176)
    (f64.const -7.474_088_739_461_225_7e+58)
  )
  (f64.const 2.728_888_665_604_071_2e+117)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.042_617_122_946_876_6e+164)
    (f64.const -2.655_679_232_658_824_3e+99)
  )
  (f64.const 1.145_702_043_202_204_2e+65)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.923_524_051_248_072_6e+55)
    (f64.const -3.663_408_283_100_366_9e+290)
  )
  (f64.const -1.343_973_608_936_992_7e-235)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.892_608_435_563_416_2e+65)
    (f64.const 5.171_948_758_373_354_8e+128)
  )
  (f64.const 5.592_879_146_144_477_7e-64)
)
(assert_return
  (invoke "f64.div"
    (f64.const -4.215_425_823_442_686_1e+248)
    (f64.const 1.428_505_854_670_649_1e+105)
  )
  (f64.const -2.950_933_529_365_603_4e+143)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.862_295_743_310_848_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.035_936_393_812_551_3e-308)
)
(assert_return
  (invoke "f64.div"
    (f64.const 8.566_632_480_779_937_5e-305)
    (f64.const 5_381.269_979_655_623_5)
  )
  (f64.const 1.591_935_084_685_745_8e-308)
)
(assert_return
  (invoke "f64.div"
    (f64.const -8.196_220_919_495_564_6e-44)
    (f64.const -1.040_655_708_648_477_7e+265)
  )
  (f64.const 7.876_015_911_295_175_6e-309)
)
(assert_return
  (invoke "f64.div"
    (f64.const -7.052_801_866_447_111_3e-119)
    (f64.const -1.376_742_940_578_113_3e+190)
  )
  (f64.const 5.122_816_800_851_396_7e-309)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.265_562_173_416_547_5e-258)
    (f64.const 1.332_199_329_634_947e+50)
  )
  (f64.const 1.700_618_010_397_410_6e-308)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.196_304_106_554_002_9e-303)
    (f64.const -9_789_327.297_653_636)
  )
  (f64.const -4.286_611_305_313_922_7e-310)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.038_860_784_993_546_8e+27)
    (f32.const 6_211_079_503_872)
  )
  (f32.const 167_259_297_284_096)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.869_032_963_985_407_2e+27)
    (f32.const -1.123_557_281_077_378_2e+32)
  )
  (f32.const -1.663_496_004_766_784_6e-05)
)
(assert_return
  (invoke "f32.div"
    (f32.const 3.290_747_245_341_552_1e+24)
    (f32.const 0.906_478_822_231_292_72)
  )
  (f32.const 3.630_252_652_489_148_7e+24)
)
(assert_return
  (invoke "f32.div" (f32.const -908_946.562_5) (f32.const -17_034_289_152))
  (f32.const 5.335_981_768_439_523_9e-05)
)
(assert_return
  (invoke "f32.div"
    (f32.const -2.409_247_660_314_223_2e-13)
    (f32.const -89_840_811_637_735_424)
  )
  (f32.const 2.681_685_167_107_169_4e-30)
)
(assert_return
  (invoke "f64.div"
    (f64.const 3.910_973_045_785_834e+18)
    (f64.const -8.392_730_733_897_135_8e-260)
  )
  (f64.const -4.659_952_963_807_033_6e+277)
)
(assert_return
  (invoke "f64.div"
    (f64.const 8.379_351_966_732_404e-40)
    (f64.const -2.107_727_780_204_883_2e-157)
  )
  (f64.const -3.975_538_039_318_285_9e+117)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.561_142_017_854_715e+201)
    (f64.const 1.500_578_067_736_849_1e+192)
  )
  (f64.const 3_039_589_952.646_559_2)
)
(assert_return
  (invoke "f64.div"
    (f64.const -6.236_072_401_827_852_2e+54)
    (f64.const 8.317_063_250_460_990_2e+232)
  )
  (f64.const -7.497_925_907_299_316_1e-179)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.757_271_330_468_098_3e-263)
    (f64.const -3.561_381_224_348_086_5e-195)
  )
  (f64.const 2.739_743_575_824_061e-68)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.046_256_872_449_641e-17)
    (f64.const 1.815_089_271_165_744_7)
  )
  (f64.const 5.764_217_160_391_678_3e-18)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.203_826_810_659_643_6e-31)
    (f64.const -2.859_803_943_943_555_1e-13)
  )
  (f64.const -7.706_216_418_530_616_4e-19)
)
(assert_return
  (invoke "f64.div"
    (f64.const 7.596_539_988_437_179_1e-13)
    (f64.const 2.105_535_883_133_712_4e-34)
  )
  (f64.const 3.607_889_112_357_986_6e+21)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.120_696_114_500_866_9e+27)
    (f64.const 1.597_132_338_028_665e+29)
  )
  (f64.const 0.007_016_927_074_960_727_8)
)
(assert_return
  (invoke "f64.div"
    (f64.const 0.000_634_214_250_230_195_31)
    (f64.const -6_391_950_865_520_085)
  )
  (f64.const -9.922_076_429_769_178_3e-20)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_210_692_441_1e-38)
  )
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.175_494_210_692_441_1e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0.999_999_880_790_710_45)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_200_9e-308)
  )
  (f64.const 1.000_000_000_000_000_2)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.225_073_858_507_200_9e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 0.999_999_999_999_999_78)
)
(assert_return
  (invoke "f32.div"
    (f32.const 2.384_185_648_907_077_8e-07)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.div"
    (f32.const 2.384_185_791_015_625e-07)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.440_892_098_500_625_7e-16)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.440_892_098_500_626_2e-16)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 2.938_735_877_055_718_8e-39))
  (f32.const inf)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 2.938_737_278_354_183_1e-39))
  (f32.const 3.402_822_046_616_616_3e+38)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 5.562_684_646_268_003_5e-309))
  (f64.const inf)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 5.562_684_646_268_008_4e-309))
  (f64.const 1.797_693_134_862_314_3e+308)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 8.507_060_187_143_941_8e+37))
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 8.507_059_173_023_461_6e+37))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 4.494_232_837_155_790_8e+307))
  (f64.const 2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 4.494_232_837_155_789_8e+307))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 3))
  (f32.const 0.333_333_343_267_440_8)
)
(assert_return
  (invoke "f32.div" (f32.const 3) (f32.const 9))
  (f32.const 0.333_333_343_267_440_8)
)
(assert_return
  (invoke "f32.div" (f32.const 9) (f32.const 27))
  (f32.const 0.333_333_343_267_440_8)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 3))
  (f64.const 0.333_333_333_333_333_31)
)
(assert_return
  (invoke "f64.div" (f64.const 3) (f64.const 9))
  (f64.const 0.333_333_333_333_333_31)
)
(assert_return
  (invoke "f64.div" (f64.const 9) (f64.const 27))
  (f64.const 0.333_333_333_333_333_31)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.000_000_119_209_289_6)
    (f32.const 0.999_999_940_395_355_22)
  )
  (f32.const 1.000_000_238_418_579_1)
)
(assert_return
  (invoke "f32.div"
    (f32.const 0.999_999_940_395_355_22)
    (f32.const 1.000_000_119_209_289_6)
  )
  (f32.const 0.999_999_821_186_065_67)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 0.999_999_940_395_355_22))
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f32.div" (f32.const 1) (f32.const 1.000_000_119_209_289_6))
  (f32.const 0.999_999_880_790_710_45)
)
(assert_return
  (invoke "f64.div"
    (f64.const 1.000_000_000_000_000_2)
    (f64.const 0.999_999_999_999_999_89)
  )
  (f64.const 1.000_000_000_000_000_4)
)
(assert_return
  (invoke "f64.div"
    (f64.const 0.999_999_999_999_999_89)
    (f64.const 1.000_000_000_000_000_2)
  )
  (f64.const 0.999_999_999_999_999_67)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 0.999_999_999_999_999_89))
  (f64.const 1.000_000_000_000_000_2)
)
(assert_return
  (invoke "f64.div" (f64.const 1) (f64.const 1.000_000_000_000_000_2))
  (f64.const 0.999_999_999_999_999_78)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 171))
  (f32.const 13.076_696_395_874_023)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.607_949_968_729_371_9e-07))
  (f32.const 0.000_400_992_517_825_216_05)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 171))
  (f64.const 13.076_696_830_622_021)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.607_95e-07))
  (f64.const 0.000_400_992_518_633_452_83)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.316_357_580_352_844_3e-50))
  (f64.const 2.077_584_554_320_917_5e-25)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.762_533_004_796_484_7e+101))
  (f64.const 8.223_462_169_181_838e+50)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.748_529_662_486_199_6e+121))
  (f64.const 4.181_542_373_916_829_4e+60)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.593_720_960_603_523_4e-12))
  (f64.const 3.097_373_235_598_758_5e-06)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.348_452_898_717_835_1e-112))
  (f64.const 2.519_613_640_762_773e-56)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 0.999_999_999_999_999_89))
  (f64.const 0.999_999_999_999_999_89)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.129_639_416_933_059_69))
  (f32.const 0.360_054_731_369_018_55)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 2.345_875_822_706_862_2e+30))
  (f32.const 1_531_625_200_418_816)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.078_786_574_304_103_851))
  (f32.const 0.280_689_448_118_209_84)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 5.137_102_604_477_576_2e-22))
  (f32.const 2.266_517_702_687_043_1e-11)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.000_901_671_533_938_497_3))
  (f32.const 0.030_027_845_874_428_749)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.591_922_760_825_561_3e-279))
  (f64.const 9.793_836_204_892_116_1e-140)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.357_875_352_164_004_5e+218))
  (f64.const 3.059_064_457_013_615_1e+109)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.477_066_997_833_655_8e+116))
  (f64.const 1.215_346_451_771_533_2e+58)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.880_045_718_002_788_9e+31))
  (f64.const 6_985_732_401_117_859)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 7.618_977_687_174_539_9e+300))
  (f64.const 2.760_249_569_726_357_1e+150)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 154_481_008))
  (f32.const 12_429.039_062_5)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.047_130_482_506_863_9e-34))
  (f32.const 1.023_293_968_851_081_1e-17)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 3.790_637_128_986_418_2e-05))
  (f32.const 0.006_156_815_215_945_243_8)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 8.960_753_473_528_172_7e-37))
  (f32.const 9.466_125_683_086_137_3e-19)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.687_711_987_421_832_2e-37))
  (f32.const 4.108_177_261_102_068e-19)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.169_962_643_789_095_1e+209))
  (f64.const 5.630_242_129_597_176_8e+104)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.057_366_927_184_799_3e-230))
  (f64.const 2.014_290_675_941_483_7e-115)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.529_986_166_058_883_8e-09))
  (f64.const 3.911_503_759_500_793_2e-05)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.822_766_928_951_238_9e-73))
  (f64.const 5.312_971_794_533_864_1e-37)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.437_595_772_704_506_7e+280))
  (f64.const 1.198_997_820_141_682_6e+140)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 4.640_234_229_853_808_6e+35))
  (f32.const 6.811_926_708_229_242_9e+17)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 47_536.132_812_5))
  (f32.const 218.027_832_031_25)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.812_613_010_406_494_14))
  (f32.const 0.901_450_514_793_396)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 9.549_604_991_959_534_7e-27))
  (f32.const 9.772_208_270_451_138_2e-14)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 6.885_648_533_602_653_4e-29))
  (f32.const 8.297_981_137_666_329_1e-15)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.349_768_917_495_332_2e+222))
  (f64.const 1.532_895_599_020_146_1e+111)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.926_257_474_342_968_3e-115))
  (f64.const 5.409_489_323_718_985_2e-58)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.773_350_874_844_908_1e+290))
  (f64.const 1.942_511_486_412_605_1e+145)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.549_843_202_394_523_4e-14))
  (f64.const 1.884_102_757_918_082_2e-07)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.374_741_933_616_676_7e-148))
  (f64.const 1.172_493_894_916_590_5e-74)
)
(assert_return_canonical_nan
  (invoke "f64.sqrt" (f64.const -1.553_515_266_325_784_7e-290))
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.876_329_634_802_97e+31))
  (f64.const 4_331_662_076_851_067)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.744_057_770_361_65e-229))
  (f64.const 5.238_375_483_259_719_6e-115)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.561_385_995_292_044_5e-83))
  (f64.const 3.951_437_707_078_329_4e-42)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.193_037_689_450_712_2e+170))
  (f64.const 2.488_581_461_284_864_6e+85)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.000_000_119_209_289_6))
  (f32.const 1)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.000_000_238_418_579_1))
  (f32.const 1.000_000_119_209_289_6)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.000_000_000_000_000_2))
  (f64.const 1)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.000_000_000_000_000_4))
  (f64.const 1.000_000_000_000_000_2)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.999_999_880_790_710_45))
  (f32.const 0.999_999_940_395_355_22)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.999_999_821_186_065_67))
  (f32.const 0.999_999_880_790_710_45)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 0.999_999_999_999_999_78))
  (f64.const 0.999_999_999_999_999_89)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 0.999_999_999_999_999_67))
  (f64.const 0.999_999_999_999_999_78)
)
(assert_return (invoke "f32.abs" (f32.const nan:0xf1e2)) (f32.const nan:0xf1e2))
(assert_return
  (invoke "f32.abs" (f32.const -nan:0xf1e2))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f64.abs" (f64.const nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.abs" (f64.const -nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f32.neg" (f32.const nan:0xf1e2))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f32.neg" (f32.const -nan:0xf1e2))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f64.neg" (f64.const nan:0xf1e27a6b))
  (f64.const -nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.neg" (f64.const -nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f32.copysign" (f32.const nan:0xf1e2) (f32.const nan:0x400000))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const nan:0xf1e2) (f32.const -nan:0x400000))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const -nan:0xf1e2) (f32.const nan:0x400000))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const -nan:0xf1e2) (f32.const -nan:0x400000))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const nan:0xf1e27a6b)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const nan:0xf1e27a6b)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const -nan:0xf1e27a6b)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const -nan:0xf1e27a6b)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0xf1e27a6b)
)
(assert_return
  (invoke "f32.ceil" (f32.const 0.999_999_940_395_355_22))
  (f32.const 1)
)
(assert_return
  (invoke "f32.ceil" (f32.const 1.000_000_119_209_289_6))
  (f32.const 2)
)
(assert_return
  (invoke "f64.ceil" (f64.const 0.999_999_999_999_999_89))
  (f64.const 1)
)
(assert_return
  (invoke "f64.ceil" (f64.const 1.000_000_000_000_000_2))
  (f64.const 2)
)
(assert_return
  (invoke "f32.ceil" (f32.const 8_388_607.5))
  (f32.const 8_388_608)
)
(assert_return
  (invoke "f32.ceil" (f32.const -8_388_607.5))
  (f32.const -8_388_607)
)
(assert_return
  (invoke "f64.ceil" (f64.const 4_503_599_627_370_495.5))
  (f64.const 4_503_599_627_370_496)
)
(assert_return
  (invoke "f64.ceil" (f64.const -4_503_599_627_370_495.5))
  (f64.const -4_503_599_627_370_495)
)
(assert_return
  (invoke "f32.ceil" (f32.const 16_777_215))
  (f32.const 16_777_215)
)
(assert_return
  (invoke "f32.ceil" (f32.const -16_777_215))
  (f32.const -16_777_215)
)
(assert_return
  (invoke "f64.ceil" (f64.const 9_007_199_254_740_991))
  (f64.const 9_007_199_254_740_991)
)
(assert_return
  (invoke "f64.ceil" (f64.const -9_007_199_254_740_991))
  (f64.const -9_007_199_254_740_991)
)
(assert_return
  (invoke "f32.floor" (f32.const -0.999_999_940_395_355_22))
  (f32.const -1)
)
(assert_return
  (invoke "f32.floor" (f32.const -1.000_000_119_209_289_6))
  (f32.const -2)
)
(assert_return
  (invoke "f64.floor" (f64.const -0.999_999_999_999_999_89))
  (f64.const -1)
)
(assert_return
  (invoke "f64.floor" (f64.const -1.000_000_000_000_000_2))
  (f64.const -2)
)
(assert_return
  (invoke "f32.floor" (f32.const -8_388_607.5))
  (f32.const -8_388_608)
)
(assert_return
  (invoke "f32.floor" (f32.const 8_388_607.5))
  (f32.const 8_388_607)
)
(assert_return
  (invoke "f64.floor" (f64.const -4_503_599_627_370_495.5))
  (f64.const -4_503_599_627_370_496)
)
(assert_return
  (invoke "f64.floor" (f64.const 4_503_599_627_370_495.5))
  (f64.const 4_503_599_627_370_495)
)
(assert_return (invoke "f32.floor" (f32.const 88_607)) (f32.const 88_607))
(assert_return (invoke "f64.floor" (f64.const 88_607)) (f64.const 88_607))
(assert_return
  (invoke "f32.trunc" (f32.const -8_388_607.5))
  (f32.const -8_388_607)
)
(assert_return
  (invoke "f32.trunc" (f32.const 8_388_607.5))
  (f32.const 8_388_607)
)
(assert_return
  (invoke "f64.trunc" (f64.const -4_503_599_627_370_495.5))
  (f64.const -4_503_599_627_370_495)
)
(assert_return
  (invoke "f64.trunc" (f64.const 4_503_599_627_370_495.5))
  (f64.const 4_503_599_627_370_495)
)
(assert_return
  (invoke "f32.nearest" (f32.const 8_388_609))
  (f32.const 8_388_609)
)
(assert_return
  (invoke "f32.nearest" (f32.const 8_388_610))
  (f32.const 8_388_610)
)
(assert_return
  (invoke "f32.nearest" (f32.const 0.499_999_970_197_677_61))
  (f32.const 0)
)
(assert_return
  (invoke "f32.nearest" (f32.const 281_474_959_933_440))
  (f32.const 281_474_959_933_440)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4_503_599_627_370_497))
  (f64.const 4_503_599_627_370_497)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4_503_599_627_370_498))
  (f64.const 4_503_599_627_370_498)
)
(assert_return
  (invoke "f64.nearest" (f64.const 0.499_999_999_999_999_94))
  (f64.const 0)
)
(assert_return
  (invoke "f64.nearest" (f64.const 8.112_963_841_460_667_3e+31))
  (f64.const 8.112_963_841_460_667_3e+31)
)
(assert_return (invoke "f32.nearest" (f32.const 4.5)) (f32.const 4))
(assert_return (invoke "f32.nearest" (f32.const -4.5)) (f32.const -4))
(assert_return (invoke "f32.nearest" (f32.const -3.5)) (f32.const -4))
(assert_return (invoke "f64.nearest" (f64.const 4.5)) (f64.const 4))
(assert_return (invoke "f64.nearest" (f64.const -4.5)) (f64.const -4))
(assert_return (invoke "f64.nearest" (f64.const -3.5)) (f64.const -4))
(assert_return
  (invoke "f32.nearest" (f32.const -8_388_607.5))
  (f32.const -8_388_608)
)
(assert_return
  (invoke "f32.nearest" (f32.const 8_388_607.5))
  (f32.const 8_388_608)
)
(assert_return
  (invoke "f64.nearest" (f64.const -4_503_599_627_370_495.5))
  (f64.const -4_503_599_627_370_496)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4_503_599_627_370_495.5))
  (f64.const 4_503_599_627_370_496)
)
