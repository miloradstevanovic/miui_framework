// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) nonlb 

package miui.util;


public class AllPinyinConstants {

    public AllPinyinConstants() {
    }

    public static final String ALL_PINYIN[];
    public static final int ALL_PINYIN_COUNT = 1309;
    public static final String DIGEST = "26d188162454f2c17cf3194641c1e0fca7c2b72d";
    private static final String EMPTY = "";
    public static final byte FILE_TAG[];

    static  {
        byte abyte0[] = new byte[4];
        abyte0[0] = 80;
        abyte0[1] = 85;
        abyte0[2] = 32;
        abyte0[3] = 32;
        FILE_TAG = abyte0;
        String as[] = new String[1310];
        as[0] = "";
        as[1] = "a";
        as[2] = "ai";
        as[3] = "an";
        as[4] = "ang";
        as[5] = "ao";
        as[6] = "ba";
        as[7] = "bai";
        as[8] = "ban";
        as[9] = "bang";
        as[10] = "bao";
        as[11] = "bei";
        as[12] = "ben";
        as[13] = "beng";
        as[14] = "bi";
        as[15] = "bian";
        as[16] = "biao";
        as[17] = "bie";
        as[18] = "bin";
        as[19] = "bing";
        as[20] = "bo";
        as[21] = "bu";
        as[22] = "ca";
        as[23] = "cai";
        as[24] = "can";
        as[25] = "cang";
        as[26] = "cao";
        as[27] = "ce";
        as[28] = "cen";
        as[29] = "ceng";
        as[30] = "cha";
        as[31] = "chai";
        as[32] = "chan";
        as[33] = "chang";
        as[34] = "chao";
        as[35] = "che";
        as[36] = "chen";
        as[37] = "cheng";
        as[38] = "chi";
        as[39] = "chong";
        as[40] = "chou";
        as[41] = "chu";
        as[42] = "chua";
        as[43] = "chuai";
        as[44] = "chuan";
        as[45] = "chuang";
        as[46] = "chui";
        as[47] = "chun";
        as[48] = "chuo";
        as[49] = "ci";
        as[50] = "cong";
        as[51] = "cou";
        as[52] = "cu";
        as[53] = "cuan";
        as[54] = "cui";
        as[55] = "cun";
        as[56] = "cuo";
        as[57] = "da";
        as[58] = "dai";
        as[59] = "dan";
        as[60] = "dang";
        as[61] = "dao";
        as[62] = "de";
        as[63] = "dei";
        as[64] = "den";
        as[65] = "deng";
        as[66] = "di";
        as[67] = "dia";
        as[68] = "dian";
        as[69] = "diao";
        as[70] = "die";
        as[71] = "ding";
        as[72] = "diu";
        as[73] = "dong";
        as[74] = "dou";
        as[75] = "du";
        as[76] = "duan";
        as[77] = "dui";
        as[78] = "dun";
        as[79] = "duo";
        as[80] = "e";
        as[81] = "ei";
        as[82] = "en";
        as[83] = "eng";
        as[84] = "er";
        as[85] = "fa";
        as[86] = "fan";
        as[87] = "fang";
        as[88] = "fei";
        as[89] = "fen";
        as[90] = "feng";
        as[91] = "fiao";
        as[92] = "fo";
        as[93] = "fou";
        as[94] = "fu";
        as[95] = "ga";
        as[96] = "gai";
        as[97] = "gan";
        as[98] = "gang";
        as[99] = "gao";
        as[100] = "ge";
        as[101] = "gei";
        as[102] = "gen";
        as[103] = "geng";
        as[104] = "gong";
        as[105] = "gou";
        as[106] = "gu";
        as[107] = "gua";
        as[108] = "guai";
        as[109] = "guan";
        as[110] = "guang";
        as[111] = "gui";
        as[112] = "gun";
        as[113] = "guo";
        as[114] = "ha";
        as[115] = "hai";
        as[116] = "han";
        as[117] = "hang";
        as[118] = "hao";
        as[119] = "he";
        as[120] = "hei";
        as[121] = "hen";
        as[122] = "heng";
        as[123] = "hm";
        as[124] = "hng";
        as[125] = "hong";
        as[126] = "hou";
        as[127] = "hu";
        as[128] = "hua";
        as[129] = "huai";
        as[130] = "huan";
        as[131] = "huang";
        as[132] = "hui";
        as[133] = "hun";
        as[134] = "huo";
        as[135] = "ji";
        as[136] = "jia";
        as[137] = "jian";
        as[138] = "jiang";
        as[139] = "jiao";
        as[140] = "jie";
        as[141] = "jin";
        as[142] = "jing";
        as[143] = "jiong";
        as[144] = "jiu";
        as[145] = "ju";
        as[146] = "juan";
        as[147] = "jue";
        as[148] = "jun";
        as[149] = "ka";
        as[150] = "kai";
        as[151] = "kan";
        as[152] = "kang";
        as[153] = "kao";
        as[154] = "ke";
        as[155] = "kei";
        as[156] = "ken";
        as[157] = "keng";
        as[158] = "kong";
        as[159] = "kou";
        as[160] = "ku";
        as[161] = "kua";
        as[162] = "kuai";
        as[163] = "kuan";
        as[164] = "kuang";
        as[165] = "kui";
        as[166] = "kun";
        as[167] = "kuo";
        as[168] = "la";
        as[169] = "lai";
        as[170] = "lan";
        as[171] = "lang";
        as[172] = "lao";
        as[173] = "le";
        as[174] = "lei";
        as[175] = "leng";
        as[176] = "li";
        as[177] = "lia";
        as[178] = "lian";
        as[179] = "liang";
        as[180] = "liao";
        as[181] = "lie";
        as[182] = "lin";
        as[183] = "ling";
        as[184] = "liu";
        as[185] = "lo";
        as[186] = "long";
        as[187] = "lou";
        as[188] = "lu";
        as[189] = "luan";
        as[190] = "lue";
        as[191] = "lun";
        as[192] = "luo";
        as[193] = "m";
        as[194] = "ma";
        as[195] = "mai";
        as[196] = "man";
        as[197] = "mang";
        as[198] = "mao";
        as[199] = "me";
        as[200] = "mei";
        as[201] = "men";
        as[202] = "meng";
        as[203] = "mi";
        as[204] = "mian";
        as[205] = "miao";
        as[206] = "mie";
        as[207] = "min";
        as[208] = "ming";
        as[209] = "miu";
        as[210] = "mo";
        as[211] = "mou";
        as[212] = "mu";
        as[213] = "n";
        as[214] = "na";
        as[215] = "nai";
        as[216] = "nan";
        as[217] = "nang";
        as[218] = "nao";
        as[219] = "ne";
        as[220] = "nei";
        as[221] = "nen";
        as[222] = "neng";
        as[223] = "ng";
        as[224] = "ni";
        as[225] = "nian";
        as[226] = "niang";
        as[227] = "niao";
        as[228] = "nie";
        as[229] = "nin";
        as[230] = "ning";
        as[231] = "niu";
        as[232] = "nong";
        as[233] = "nou";
        as[234] = "nu";
        as[235] = "nuan";
        as[236] = "nue";
        as[237] = "nuo";
        as[238] = "o";
        as[239] = "ou";
        as[240] = "pa";
        as[241] = "pai";
        as[242] = "pan";
        as[243] = "pang";
        as[244] = "pao";
        as[245] = "pei";
        as[246] = "pen";
        as[247] = "peng";
        as[248] = "pi";
        as[249] = "pian";
        as[250] = "piao";
        as[251] = "pie";
        as[252] = "pin";
        as[253] = "ping";
        as[254] = "po";
        as[255] = "pou";
        as[256] = "pu";
        as[257] = "qi";
        as[258] = "qia";
        as[259] = "qian";
        as[260] = "qiang";
        as[261] = "qiao";
        as[262] = "qie";
        as[263] = "qin";
        as[264] = "qing";
        as[265] = "qiong";
        as[266] = "qiu";
        as[267] = "qu";
        as[268] = "quan";
        as[269] = "que";
        as[270] = "qui";
        as[271] = "qun";
        as[272] = "r";
        as[273] = "ran";
        as[274] = "rang";
        as[275] = "rao";
        as[276] = "re";
        as[277] = "ren";
        as[278] = "reng";
        as[279] = "ri";
        as[280] = "rong";
        as[281] = "rou";
        as[282] = "ru";
        as[283] = "ruan";
        as[284] = "rui";
        as[285] = "run";
        as[286] = "ruo";
        as[287] = "sa";
        as[288] = "sai";
        as[289] = "san";
        as[290] = "sang";
        as[291] = "sao";
        as[292] = "se";
        as[293] = "sen";
        as[294] = "seng";
        as[295] = "sha";
        as[296] = "shai";
        as[297] = "shan";
        as[298] = "shang";
        as[299] = "shao";
        as[300] = "she";
        as[301] = "shei";
        as[302] = "shen";
        as[303] = "sheng";
        as[304] = "shi";
        as[305] = "shou";
        as[306] = "shu";
        as[307] = "shua";
        as[308] = "shuai";
        as[309] = "shuan";
        as[310] = "shuang";
        as[311] = "shui";
        as[312] = "shun";
        as[313] = "shuo";
        as[314] = "si";
        as[315] = "song";
        as[316] = "sou";
        as[317] = "su";
        as[318] = "suan";
        as[319] = "sui";
        as[320] = "sun";
        as[321] = "suo";
        as[322] = "ta";
        as[323] = "tai";
        as[324] = "tan";
        as[325] = "tang";
        as[326] = "tao";
        as[327] = "te";
        as[328] = "tei";
        as[329] = "teng";
        as[330] = "ti";
        as[331] = "tian";
        as[332] = "tiao";
        as[333] = "tie";
        as[334] = "ting";
        as[335] = "tong";
        as[336] = "tou";
        as[337] = "tu";
        as[338] = "tuan";
        as[339] = "tui";
        as[340] = "tun";
        as[341] = "tuo";
        as[342] = "wa";
        as[343] = "wai";
        as[344] = "wan";
        as[345] = "wang";
        as[346] = "wei";
        as[347] = "wen";
        as[348] = "weng";
        as[349] = "wo";
        as[350] = "wu";
        as[351] = "xi";
        as[352] = "xia";
        as[353] = "xian";
        as[354] = "xiang";
        as[355] = "xiao";
        as[356] = "xie";
        as[357] = "xin";
        as[358] = "xing";
        as[359] = "xiong";
        as[360] = "xiu";
        as[361] = "xu";
        as[362] = "xuan";
        as[363] = "xue";
        as[364] = "xun";
        as[365] = "ya";
        as[366] = "yan";
        as[367] = "yang";
        as[368] = "yao";
        as[369] = "ye";
        as[370] = "yi";
        as[371] = "yin";
        as[372] = "ying";
        as[373] = "yo";
        as[374] = "yong";
        as[375] = "you";
        as[376] = "yu";
        as[377] = "yuan";
        as[378] = "yue";
        as[379] = "yun";
        as[380] = "za";
        as[381] = "zai";
        as[382] = "zan";
        as[383] = "zang";
        as[384] = "zao";
        as[385] = "ze";
        as[386] = "zei";
        as[387] = "zen";
        as[388] = "zeng";
        as[389] = "zha";
        as[390] = "zhai";
        as[391] = "zhan";
        as[392] = "zhang";
        as[393] = "zhao";
        as[394] = "zhe";
        as[395] = "zhei";
        as[396] = "zhen";
        as[397] = "zheng";
        as[398] = "zhi";
        as[399] = "zhong";
        as[400] = "zhou";
        as[401] = "zhu";
        as[402] = "zhua";
        as[403] = "zhuai";
        as[404] = "zhuan";
        as[405] = "zhuang";
        as[406] = "zhui";
        as[407] = "zhun";
        as[408] = "zhuo";
        as[409] = "zi";
        as[410] = "zong";
        as[411] = "zou";
        as[412] = "zu";
        as[413] = "zuan";
        as[414] = "zui";
        as[415] = "zun";
        as[416] = "zuo";
        as[417] = "ding,zheng";
        as[418] = "wan,mo";
        as[419] = "bu,fou";
        as[420] = "qie,ju";
        as[421] = "qiang,pan";
        as[422] = "zhu,dian";
        as[423] = "jing,dan";
        as[424] = "yi,ai";
        as[425] = "me,ma,yao";
        as[426] = "le,yue";
        as[427] = "cheng,sheng";
        as[428] = "mie,nie";
        as[429] = "gan,qian";
        as[430] = "qian,gan";
        as[431] = "gui,jun,qiu";
        as[432] = "le,liao";
        as[433] = "gen,geng";
        as[434] = "ji,qi";
        as[435] = "wang,wu";
        as[436] = "qin,qing";
        as[437] = "shen,shi,she";
        as[438] = "chou,qiu";
        as[439] = "fo,fu";
        as[440] = "zi,zai";
        as[441] = "ge,yi";
        as[442] = "jia,jie";
        as[443] = "hui,kuai";
        as[444] = "cui,zu";
        as[445] = "chuan,zhuan";
        as[446] = "chang,tang";
        as[447] = "cang,chen";
        as[448] = "nao,nu";
        as[449] = "bo,bai,ba";
        as[450] = "si,ci";
        as[451] = "si,shi";
        as[452] = "jia,ga,qie,qia";
        as[453] = "dian,tian";
        as[454] = "ti,ben";
        as[455] = "yu,tu";
        as[456] = "yi,die";
        as[457] = "xuan,san";
        as[458] = "nai,er";
        as[459] = "jiao,jia";
        as[460] = "gai,kai";
        as[461] = "dong,tong";
        as[462] = "jiao,yao,jia";
        as[463] = "ce,ze,zhai";
        as[464] = "bian,pian";
        as[465] = "jun,zun,juan";
        as[466] = "yu,shu";
        as[467] = "si,qi";
        as[468] = "xin,shen";
        as[469] = "liang,lia";
        as[470] = "ti,chu";
        as[471] = "yu,zhou";
        as[472] = "bi,bei";
        as[473] = "lia,liang";
        as[474] = "tang,chang";
        as[475] = "jing,liang";
        as[476] = "jie,ji";
        as[477] = "xie,jie";
        as[478] = "si,cai";
        as[479] = "ce,ze";
        as[480] = "za,zan";
        as[481] = "lou,lu";
        as[482] = "kui,gui";
        as[483] = "jiao,yao";
        as[484] = "tong,zhuang";
        as[485] = "jun,juan";
        as[486] = "zan,zuan";
        as[487] = "er,r";
        as[488] = "mian,wen";
        as[489] = "chang,zhang";
        as[490] = "shi,ke";
        as[491] = "bai,ke";
        as[492] = "liu,lu";
        as[493] = "qi,ji";
        as[494] = "zi,ci";
        as[495] = "mao,mou";
        as[496] = "mao,mo";
        as[497] = "feng,ping";
        as[498] = "qing,jing";
        as[499] = "qu,kan";
        as[500] = "tu,gu";
        as[501] = "ao,wa";
        as[502] = "zao,zuo";
        as[503] = "hua,huai";
        as[504] = "bao,pao";
        as[505] = "quan,xuan";
        as[506] = "cha,sha";
        as[507] = "xue,xiao";
        as[508] = "pou,po";
        as[509] = "yan,shan";
        as[510] = "bo,bao";
        as[511] = "tuan,zhuan";
        as[512] = "jiao,chao,jia";
        as[513] = "nu,nao";
        as[514] = "jing,jin";
        as[515] = "le,lei";
        as[516] = "jiao,chao";
        as[517] = "shao,shuo,biao";
        as[518] = "chi,shi";
        as[519] = "fang,xi";
        as[520] = "cang,zang";
        as[521] = "pi,ya";
        as[522] = "qu,ou";
        as[523] = "zu,cu";
        as[524] = "dan,chan,shan";
        as[525] = "nan,na";
        as[526] = "dan,chan";
        as[527] = "shuai,lu";
        as[528] = "bu,bo";
        as[529] = "ka,qia";
        as[530] = "ang,yang";
        as[531] = "juan,quan";
        as[532] = "chang,han,an";
        as[533] = "an,chang";
        as[534] = "ce,si";
        as[535] = "sha,xia";
        as[536] = "qin,jin";
        as[537] = "chang,an";
        as[538] = "can,cen,shen";
        as[539] = "can,cen,shen,san";
        as[540] = "ju,gou";
        as[541] = "tao,dao";
        as[542] = "zhao,shao";
        as[543] = "ye,xie";
        as[544] = "yu,xu";
        as[545] = "chi,ji";
        as[546] = "he,ge";
        as[547] = "he,xia";
        as[548] = "bi,pi";
        as[549] = "fou,pi";
        as[550] = "ting,yin";
        as[551] = "hang,keng";
        as[552] = "zhi,zi";
        as[553] = "ou,hong";
        as[554] = "gao,gu";
        as[555] = "dai,ai";
        as[556] = "na,ne";
        as[557] = "dai,tai";
        as[558] = "bei,bai";
        as[559] = "yuan,yun";
        as[560] = "ni,ne,na";
        as[561] = "gua,gu,wa";
        as[562] = "ci,zi";
        as[563] = "he,ke,a";
        as[564] = "ju,zui";
        as[565] = "bi,fu";
        as[566] = "he,huo";
        as[567] = "za,ze,zha";
        as[568] = "he,huo,hai,hu";
        as[569] = "ka,ga";
        as[570] = "xi,die";
        as[571] = "ge,ka,lo,luo";
        as[572] = "zan,za";
        as[573] = "ke,hai,ka,kai";
        as[574] = "guo,kuai";
        as[575] = "yan,ye";
        as[576] = "xiong,hong";
        as[577] = "ha,ka";
        as[578] = "hui,yue";
        as[579] = "hua,ye";
        as[580] = "e,o,wo";
        as[581] = "na,nei,ne,nai";
        as[582] = "heng,hng";
        as[583] = "bai,bei";
        as[584] = "wu,n,ng";
        as[585] = "hu,xia";
        as[586] = "zhou,zhao";
        as[587] = "chuo,chuai";
        as[588] = "tan,chan";
        as[589] = "ka,ke";
        as[590] = "die,zha";
        as[591] = "re,nuo";
        as[592] = "wo,o";
        as[593] = "shi,si";
        as[594] = "zha,cha";
        as[595] = "a,sha";
        as[596] = "ai,yi";
        as[597] = "da,ta";
        as[598] = "ru,nou";
        as[599] = "jie,jue";
        as[600] = "jia,lun";
        as[601] = "hai,hei";
        as[602] = "ng,n";
        as[603] = "sou,zu";
        as[604] = "gu,jia";
        as[605] = "xu,shi";
        as[606] = "de,dei";
        as[607] = "ma,mo";
        as[608] = "zuo,chuai,zhuai";
        as[609] = "chao,zhao";
        as[610] = "fu,m";
        as[611] = "hei,mo,hai";
        as[612] = "cheng,ceng";
        as[613] = "xue,jue";
        as[614] = "huo,o";
        as[615] = "xia,he";
        as[616] = "ca,cha";
        as[617] = "xiao,ao";
        as[618] = "jiao,jue";
        as[619] = "jian,nan";
        as[620] = "dun,tun";
        as[621] = "cong,chuang";
        as[622] = "quan,juan";
        as[623] = "tu,shu,guan";
        as[624] = "yuan,huan";
        as[625] = "wei,xu";
        as[626] = "di,de";
        as[627] = "zhuo,shao";
        as[628] = "qi,yin";
        as[629] = "jun,yun";
        as[630] = "huai,pi,pei";
        as[631] = "chi,di";
        as[632] = "tong,dong";
        as[633] = "huan,yuan";
        as[634] = "mai,man";
        as[635] = "lie,le";
        as[636] = "pu,bu";
        as[637] = "wu,ya";
        as[638] = "pi,bei,bi";
        as[639] = "ku,jue";
        as[640] = "dui,zui";
        as[641] = "e,wu";
        as[642] = "peng,beng";
        as[643] = "leng,ling";
        as[644] = "duo,hui";
        as[645] = "bao,bu,pu";
        as[646] = "di,ti";
        as[647] = "e,ai";
        as[648] = "ta,da";
        as[649] = "sai,se";
        as[650] = "xun,xuan";
        as[651] = "deng,yan";
        as[652] = "huai,pi";
        as[653] = "qiao,ke";
        as[654] = "xia,jia";
        as[655] = "da,dai";
        as[656] = "hang,ben";
        as[657] = "ben,tao";
        as[658] = "jia,ga";
        as[659] = "en,mang";
        as[660] = "qi,xie,qie";
        as[661] = "zhuang,zang";
        as[662] = "nu,ru";
        as[663] = "nai,ni";
        as[664] = "lao,mu";
        as[665] = "na,nuo";
        as[666] = "shen,chen,zhen";
        as[667] = "mian,wan";
        as[668] = "chou,zhou";
        as[669] = "yan,an";
        as[670] = "ti,shi";
        as[671] = "tao,yao";
        as[672] = "han,ran";
        as[673] = "huan,qiong,xuan";
        as[674] = "bei,bo";
        as[675] = "chan,can";
        as[676] = "zhai,zhe";
        as[677] = "wan,yuan";
        as[678] = "jia,gu,jie";
        as[679] = "su,xiu";
        as[680] = "cai,shen";
        as[681] = "xun,xin";
        as[682] = "lu,luo";
        as[683] = "she,shi,ye";
        as[684] = "jiang,qiang";
        as[685] = "wei,yu";
        as[686] = "wang,you";
        as[687] = "mang,pang";
        as[688] = "chi,che";
        as[689] = "wei,yi";
        as[690] = "niao,sui,ni";
        as[691] = "ju,ji";
        as[692] = "ping,bing";
        as[693] = "shu,zhu";
        as[694] = "tun,zhun";
        as[695] = "yi,ge";
        as[696] = "zhi,shi";
        as[697] = "jiao,qiao";
        as[698] = "wu,yu";
        as[699] = "ya,ai";
        as[700] = "yao,xiao";
        as[701] = "wei,wai";
        as[702] = "qian,kan";
        as[703] = "jie,he";
        as[704] = "tu,die";
        as[705] = "sui,xi";
        as[706] = "cha,chai,ci";
        as[707] = "xiang,hang";
        as[708] = "shuai,shuo";
        as[709] = "chou,dao";
        as[710] = "zhen,zheng";
        as[711] = "dao,tao";
        as[712] = "chuang,zhuang";
        as[713] = "guang,an";
        as[714] = "du,duo";
        as[715] = "pang,mang";
        as[716] = "ce,ci";
        as[717] = "nong,long";
        as[718] = "zang,zhuang";
        as[719] = "qiang,jiang";
        as[720] = "dan,tan";
        as[721] = "pang,fang";
        as[722] = "huai,hui";
        as[723] = "cong,zong";
        as[724] = "zhi,zheng";
        as[725] = "te,tui,tei";
        as[726] = "zhong,song";
        as[727] = "niu,nu";
        as[728] = "zen,ze";
        as[729] = "lian,ling";
        as[730] = "si,sai";
        as[731] = "fu,fei";
        as[732] = "qie,que";
        as[733] = "nen,ren,nin";
        as[734] = "mou,mu";
        as[735] = "sai,si";
        as[736] = "ke,que";
        as[737] = "zhe,qi";
        as[738] = "kui,li";
        as[739] = "kai,qi";
        as[740] = "qian,qie";
        as[741] = "ni,te";
        as[742] = "she,zhe";
        as[743] = "gang,zhuang";
        as[744] = "xu,qu";
        as[745] = "xi,hu";
        as[746] = "shi,chi";
        as[747] = "chuang,qiang";
        as[748] = "zha,za";
        as[749] = "ba,pa";
        as[750] = "fu,bi";
        as[751] = "kang,gang";
        as[752] = "ban,pan";
        as[753] = "zhe,she";
        as[754] = "ze,zhai";
        as[755] = "mo,ma";
        as[756] = "chen,shen";
        as[757] = "chai,ca";
        as[758] = "tuo,ta";
        as[759] = "ao,niu,yao";
        as[760] = "pan,pin";
        as[761] = "kuo,gua";
        as[762] = "zhuai,ye";
        as[763] = "shi,she";
        as[764] = "ru,na";
        as[765] = "wo,zhua";
        as[766] = "xie,jia";
        as[767] = "suo,sa,sha";
        as[768] = "long,nong";
        as[769] = "xie,jia,xia";
        as[770] = "xi,qi";
        as[771] = "ye,yi";
        as[772] = "bai,bo";
        as[773] = "shou,pa";
        as[774] = "guai,guo";
        as[775] = "dan,shan";
        as[776] = "chan,shan,can";
        as[777] = "ti,di,shi";
        as[778] = "xu,ju";
        as[779] = "ji,jie";
        as[780] = "she,die";
        as[781] = "bang,peng";
        as[782] = "qiang,chuang";
        as[783] = "guo,guai";
        as[784] = "gai,xi";
        as[785] = "chan,shan";
        as[786] = "zhuang,chuang";
        as[787] = "cuo,zuo";
        as[788] = "zhua,wo";
        as[789] = "bo,bai";
        as[790] = "zan,cuan";
        as[791] = "xie,xi";
        as[792] = "jiao,gao,jia";
        as[793] = "dun,dui";
        as[794] = "hun,min";
        as[795] = "shu,shuo";
        as[796] = "yi,du";
        as[797] = "xie,xia";
        as[798] = "tiao,tou";
        as[799] = "qu,ju";
        as[800] = "pang,bang";
        as[801] = "wu,mo";
        as[802] = "fei,fu";
        as[803] = "xu,kua";
        as[804] = "sheng,cheng";
        as[805] = "jing,ying";
        as[806] = "zan,zhan";
        as[807] = "bao,pu";
        as[808] = "yao,yue";
        as[809] = "pu,bao";
        as[810] = "ye,zhuai,yi";
        as[811] = "ceng,zeng";
        as[812] = "pi,bi";
        as[813] = "juan,zui";
        as[814] = "po,piao,pu";
        as[815] = "shan,sha";
        as[816] = "shao,biao";
        as[817] = "yao,miao";
        as[818] = "pa,ba";
        as[819] = "chou,niu";
        as[820] = "zhi,qi";
        as[821] = "zong,cong";
        as[822] = "gou,ju";
        as[823] = "bao,fu";
        as[824] = "tuo,duo";
        as[825] = "fan,bian";
        as[826] = "ju,gui";
        as[827] = "zuo,zha";
        as[828] = "cha,zha";
        as[829] = "zha,shan";
        as[830] = "li,yue";
        as[831] = "qi,xi";
        as[832] = "chi,yi";
        as[833] = "gua,kuo";
        as[834] = "bing,ben";
        as[835] = "xiao,jiao";
        as[836] = "he,hu";
        as[837] = "heng,hang";
        as[838] = "jie,ju";
        as[839] = "gui,hui";
        as[840] = "shao,sao";
        as[841] = "bing,bin";
        as[842] = "pou,bang";
        as[843] = "zhao,zhuo";
        as[844] = "zhui,chui";
        as[845] = "bei,pi";
        as[846] = "shen,zhen";
        as[847] = "yu,ju";
        as[848] = "hu,ku";
        as[849] = "shun,dun";
        as[850] = "kai,jie";
        as[851] = "gan,han";
        as[852] = "dian,zhen";
        as[853] = "jian,kan";
        as[854] = "bin,bing";
        as[855] = "qi,cu";
        as[856] = "chu,shu";
        as[857] = "mo,mu";
        as[858] = "pu,po";
        as[859] = "qiao,cui";
        as[860] = "rao,nao";
        as[861] = "cheng,chen";
        as[862] = "tong,chuang";
        as[863] = "gu,ku";
        as[864] = "yan,yin";
        as[865] = "gui,hui,kuai";
        as[866] = "mi,ni";
        as[867] = "gui,ju";
        as[868] = "zhi,jie";
        as[869] = "li,ji";
        as[870] = "yi,qi";
        as[871] = "she,xi";
        as[872] = "chou,xiu";
        as[873] = "yin,yan";
        as[874] = "sha,shai";
        as[875] = "ke,qiao";
        as[876] = "ke,qiao,que";
        as[877] = "shi,zhi";
        as[878] = "mang,meng";
        as[879] = "nei,nai";
        as[880] = "gong,hong";
        as[881] = "tang,shang";
        as[882] = "qin,shen";
        as[883] = "shen,chen";
        as[884] = "dun,zhuan";
        as[885] = "mei,mo";
        as[886] = "bo,po";
        as[887] = "mi,bi";
        as[888] = "qi,xie";
        as[889] = "long,shuang";
        as[890] = "luo,po";
        as[891] = "xi,xian";
        as[892] = "qie,jie";
        as[893] = "guang,huang";
        as[894] = "qia,xia";
        as[895] = "pai,pa";
        as[896] = "qian,jian";
        as[897] = "hu,xu";
        as[898] = "jun,xun";
        as[899] = "huan,wan";
        as[900] = "yong,chong";
        as[901] = "wo,guo";
        as[902] = "he,hao";
        as[903] = "xiao,yao";
        as[904] = "piao,hu";
        as[905] = "mian,sheng";
        as[906] = "qiu,jia,jiao,jiu";
        as[907] = "kui,hui";
        as[908] = "zhen,qin";
        as[909] = "ni,niao";
        as[910] = "ying,xing";
        as[911] = "hua,gu";
        as[912] = "qi,qu,xi";
        as[913] = "lu,lou";
        as[914] = "luo,ta";
        as[915] = "kuo,huo";
        as[916] = "chuang,shuang";
        as[917] = "xiao,su";
        as[918] = "liao,lao";
        as[919] = "cheng,deng";
        as[920] = "min,mian,sheng";
        as[921] = "kuai,hui";
        as[922] = "ning,neng";
        as[923] = "zui,cui";
        as[924] = "dui,wei";
        as[925] = "bin,pin";
        as[926] = "gui,jiong";
        as[927] = "gui,que";
        as[928] = "pao,bao";
        as[929] = "luo,lao";
        as[930] = "jing,ting";
        as[931] = "qu,jun";
        as[932] = "zhuo,chao";
        as[933] = "nuan,xuan";
        as[934] = "shu,shou";
        as[935] = "yun,yu";
        as[936] = "rang,shang";
        as[937] = "jue,jiao";
        as[938] = "zhua,zhao";
        as[939] = "pan,qiang,ban";
        as[940] = "jian,qian";
        as[941] = "kao,di";
        as[942] = "an,han";
        as[943] = "he,hao,mo";
        as[944] = "ba,pi";
        as[945] = "xie,he";
        as[946] = "lu,shuai,shuo";
        as[947] = "yang,chang";
        as[948] = "min,wen";
        as[949] = "bin,fen";
        as[950] = "hun,hui";
        as[951] = "ti,di";
        as[952] = "ya,ye";
        as[953] = "zhuo,zuo";
        as[954] = "mao,mei";
        as[955] = "jiang,hong";
        as[956] = "qian,wa";
        as[957] = "shen,she";
        as[958] = "ding,ting";
        as[959] = "ting,ding";
        as[960] = "chu,xu";
        as[961] = "fan,pan";
        as[962] = "pi,shu,ya";
        as[963] = "gong,gang";
        as[964] = "nue,yao";
        as[965] = "dan,da";
        as[966] = "xuan,xian";
        as[967] = "ji,zhi";
        as[968] = "jia,xia";
        as[969] = "chai,cuo";
        as[970] = "ai,yan";
        as[971] = "xian,xuan";
        as[972] = "de,di";
        as[973] = "wan,huan";
        as[974] = "gai,ge";
        as[975] = "meng,ming";
        as[976] = "dun,shun";
        as[977] = "sheng,xing";
        as[978] = "zhe,zhuo,zhao";
        as[979] = "qiao,ya";
        as[980] = "ju,qu";
        as[981] = "jin,qin,guan";
        as[982] = "bai,pai";
        as[983] = "shi,dan";
        as[984] = "hua,xu";
        as[985] = "qi,qie";
        as[986] = "zha,zuo";
        as[987] = "la,li";
        as[988] = "gui,huo";
        as[989] = "wei,kui";
        as[990] = "luo,ge";
        as[991] = "shuo,shi";
        as[992] = "bang,pang";
        as[993] = "wo,yi";
        as[994] = "kuang,gong";
        as[995] = "ji,zhai";
        as[996] = "gai,jie";
        as[997] = "shan,chan";
        as[998] = "ni,mi";
        as[999] = "zhong,chong";
        as[1000] = "mi,bi,lin";
        as[1001] = "bai,bi";
        as[1002] = "su,wei";
        as[1003] = "zhai,ze";
        as[1004] = "jiong,jun";
        as[1005] = "yin,xun";
        as[1006] = "shi,gong,sheng";
        as[1007] = "qian,gong,sheng";
        as[1008] = "qian,fen,zhi,yi,gong,sheng";
        as[1009] = "gong,sheng";
        as[1010] = "shi,fen,zhi,yi,gong,sheng";
        as[1011] = "yi,gong,sheng,bai,bei,si";
        as[1012] = "ze,zuo";
        as[1013] = "yun,jun";
        as[1014] = "jia,ce";
        as[1015] = "shi,yi";
        as[1016] = "ze,kui";
        as[1017] = "xu,yu";
        as[1018] = "cui,sui";
        as[1019] = "zhan,nian";
        as[1020] = "zhou,yu";
        as[1021] = "jing,geng";
        as[1022] = "san,shen";
        as[1023] = "gu,yu";
        as[1024] = "mi,mei";
        as[1025] = "xi,ji";
        as[1026] = "yue,yao";
        as[1027] = "hong,gong";
        as[1028] = "beng,ping";
        as[1029] = "gei,ji";
        as[1030] = "zong,zeng";
        as[1031] = "qi,qing";
        as[1032] = "lun,guan";
        as[1033] = "bi,bie";
        as[1034] = "suo,su";
        as[1035] = "fan,po";
        as[1036] = "mou,miao,miu";
        as[1037] = "zhou,yao,you";
        as[1038] = "qiao,zao";
        as[1039] = "jiao,jia,zhuo";
        as[1040] = "dao,du";
        as[1041] = "xian,qian";
        as[1042] = "ji,gei";
        as[1043] = "chuo,chao";
        as[1044] = "qiao,sao,zao";
        as[1045] = "jiao,zhuo,jia";
        as[1046] = "fu,fou";
        as[1047] = "lin,sen";
        as[1048] = "pi,biao";
        as[1049] = "qian,qiang";
        as[1050] = "fu,pei";
        as[1051] = "pi,po";
        as[1052] = "zhai,di";
        as[1053] = "zhuan,duan";
        as[1054] = "guo,gua";
        as[1055] = "lei,le";
        as[1056] = "yu,yo";
        as[1057] = "pang,pan";
        as[1058] = "hai,gai";
        as[1059] = "ge,ga";
        as[1060] = "mo,mai";
        as[1061] = "mai,mo";
        as[1062] = "jiao,jue,jia";
        as[1063] = "fu,pu";
        as[1064] = "chui,zhui";
        as[1065] = "la,xi";
        as[1066] = "a,yan";
        as[1067] = "chuo,duo";
        as[1068] = "zhuan,dun";
        as[1069] = "gua,luo";
        as[1070] = "bei,bi";
        as[1071] = "nao,ru";
        as[1072] = "guang,wang";
        as[1073] = "ban,bo,pan";
        as[1074] = "duo,tuo";
        as[1075] = "sou,sao";
        as[1076] = "chong,tong";
        as[1077] = "se,shai";
        as[1078] = "mang,wang";
        as[1079] = "jie,gai";
        as[1080] = "yan,yuan";
        as[1081] = "ya,di";
        as[1082] = "zhu,ning";
        as[1083] = "yi,ti";
        as[1084] = "tiao,shao";
        as[1085] = "ruo,re";
        as[1086] = "ping,pin";
        as[1087] = "qie,jia";
        as[1088] = "qian,xi";
        as[1089] = "ti,yi";
        as[1090] = "lao,pei";
        as[1091] = "hun,xun";
        as[1092] = "qian,xun";
        as[1093] = "sha,suo";
        as[1094] = "guan,wan";
        as[1095] = "niu,chou";
        as[1096] = "lang,liang";
        as[1097] = "fu,piao";
        as[1098] = "yu,wan";
        as[1099] = "pian,bian";
        as[1100] = "luo,la,lao";
        as[1101] = "xie,ye,she";
        as[1102] = "zhu,zhe,zhao,zi,zhuo";
        as[1103] = "shen,ren";
        as[1104] = "gai,ge,he";
        as[1105] = "lan,la";
        as[1106] = "qiu,ou";
        as[1107] = "liao,lu";
        as[1108] = "xu,su";
        as[1109] = "biao,piao";
        as[1110] = "man,wan";
        as[1111] = "bo,bu";
        as[1112] = "yu,wei";
        as[1113] = "fan,bo";
        as[1114] = "xun,jun";
        as[1115] = "shen,can,cen";
        as[1116] = "bi,bo";
        as[1117] = "lian,xian";
        as[1118] = "zang,cang";
        as[1119] = "xian,li";
        as[1120] = "zhu,shu";
        as[1121] = "wu,e";
        as[1122] = "pin,ping";
        as[1123] = "bo,nie";
        as[1124] = "chong,hui";
        as[1125] = "she,yi";
        as[1126] = "hong,jiang";
        as[1127] = "xia,ha";
        as[1128] = "bang,beng";
        as[1129] = "qi,chi";
        as[1130] = "can,tian";
        as[1131] = "he,ke";
        as[1132] = "ha,ge";
        as[1133] = "shao,xiao";
        as[1134] = "tui,shui";
        as[1135] = "e,yi";
        as[1136] = "la,zha";
        as[1137] = "you,qiu";
        as[1138] = "li,xi";
        as[1139] = "gua,wo";
        as[1140] = "teng,te";
        as[1141] = "shi,zhe";
        as[1142] = "zhe,zhi";
        as[1143] = "ru,ruan";
        as[1144] = "xue,xie";
        as[1145] = "xing,hang,heng";
        as[1146] = "shuai,cui";
        as[1147] = "qi,zhi";
        as[1148] = "bo,fu";
        as[1149] = "jia,qia";
        as[1150] = "bi,pi,bei";
        as[1151] = "shang,chang";
        as[1152] = "ti,xi";
        as[1153] = "kun,hui";
        as[1154] = "chu,zhu";
        as[1155] = "tun,tui";
        as[1156] = "zhe,xi";
        as[1157] = "bie,bi";
        as[1158] = "tan,qin";
        as[1159] = "jian,xian";
        as[1160] = "zhan,chan";
        as[1161] = "zui,zi";
        as[1162] = "jie,xie";
        as[1163] = "ne,na";
        as[1164] = "xu,hu";
        as[1165] = "chu,qu";
        as[1166] = "tiao,diao";
        as[1167] = "shuo,shui,yue";
        as[1168] = "du,dou";
        as[1169] = "shui,shei";
        as[1170] = "diao,tiao";
        as[1171] = "zou,zhou";
        as[1172] = "xiao,sou";
        as[1173] = "nue,xue";
        as[1174] = "jian,zen";
        as[1175] = "ei,ai,e";
        as[1176] = "shei,shui";
        as[1177] = "huo,hua";
        as[1178] = "qi,kai";
        as[1179] = "feng,li";
        as[1180] = "han,an";
        as[1181] = "bi,ben";
        as[1182] = "lin,ren";
        as[1183] = "jia,gu";
        as[1184] = "zei,ze";
        as[1185] = "zhuan,zuan";
        as[1186] = "ju,qie";
        as[1187] = "qu,cu";
        as[1188] = "zu,ju";
        as[1189] = "bao,bo";
        as[1190] = "li,luo";
        as[1191] = "zhuai,shi";
        as[1192] = "jiao,jia,jue";
        as[1193] = "dian,die";
        as[1194] = "di,zhi";
        as[1195] = "man,pan";
        as[1196] = "dun,cun";
        as[1197] = "shen,juan";
        as[1198] = "che,ju";
        as[1199] = "ya,zha,ga";
        as[1200] = "zhuan,zhuai";
        as[1201] = "rong,fu";
        as[1202] = "zhou,zhu";
        as[1203] = "che,zhe";
        as[1204] = "hai,huan";
        as[1205] = "zhei,zhe";
        as[1206] = "po,pai";
        as[1207] = "shi,kuo";
        as[1208] = "zhe,zhei";
        as[1209] = "yi,wei";
        as[1210] = "huan,hai,xuan";
        as[1211] = "nei,na";
        as[1212] = "xie,ye";
        as[1213] = "xun,huan";
        as[1214] = "dou,du";
        as[1215] = "dan,zhen";
        as[1216] = "zuo,cu";
        as[1217] = "fa,po";
        as[1218] = "lao,luo";
        as[1219] = "jiao,xiao";
        as[1220] = "shi,shai";
        as[1221] = "niang,nian";
        as[1222] = "ta,tuo";
        as[1223] = "she,tuo,ta";
        as[1224] = "liu,mao";
        as[1225] = "qian,yan";
        as[1226] = "jia,ha";
        as[1227] = "xian,xi";
        as[1228] = "yao,diao,tiao";
        as[1229] = "qing,qiang";
        as[1230] = "a,e";
        as[1231] = "cuo,cu";
        as[1232] = "zang,zhe";
        as[1233] = "hao,gao";
        as[1234] = "dui,dun";
        as[1235] = "tan,chan,xin";
        as[1236] = "lou,lue";
        as[1237] = "dang,cheng";
        as[1238] = "dang,zheng";
        as[1239] = "diao,yao";
        as[1240] = "tuo,she,ta";
        as[1241] = "zhe,zang";
        as[1242] = "chan,xin,tan";
        as[1243] = "zhang,chang";
        as[1244] = "e,yan";
        as[1245] = "du,she";
        as[1246] = "kan,han";
        as[1247] = "yan,e";
        as[1248] = "fu,yi";
        as[1249] = "dian,yan";
        as[1250] = "po,bei,pi";
        as[1251] = "lu,liu";
        as[1252] = "jiang,xiang";
        as[1253] = "shan,xia";
        as[1254] = "zhui,cui";
        as[1255] = "sun,zhun";
        as[1256] = "juan,jun";
        as[1257] = "que,qiao";
        as[1258] = "hang,yu";
        as[1259] = "ying,ji";
        as[1260] = "xian,san";
        as[1261] = "huo,sui";
        as[1262] = "tian,mian";
        as[1263] = "ge,ji";
        as[1264] = "bei,tuo";
        as[1265] = "qiao,shao";
        as[1266] = "yi,eng";
        as[1267] = "kuo,kui";
        as[1268] = "yin,an";
        as[1269] = "dun,du";
        as[1270] = "he,han";
        as[1271] = "shi,si,yi";
        as[1272] = "xing,tang";
        as[1273] = "tang,xing";
        as[1274] = "zuan,zan";
        as[1275] = "xin,xing";
        as[1276] = "hai,xie";
        as[1277] = "jie,ge";
        as[1278] = "tuo,tan";
        as[1279] = "piao,biao";
        as[1280] = "tai,dai";
        as[1281] = "tou,shai";
        as[1282] = "biao,shan";
        as[1283] = "fu,fo";
        as[1284] = "quan,qian";
        as[1285] = "li,ge";
        as[1286] = "po,tuo,bo";
        as[1287] = "gui,xie";
        as[1288] = "qing,zheng";
        as[1289] = "sai,xi";
        as[1290] = "ha,xia";
        as[1291] = "ba,bo";
        as[1292] = "chi,zhi";
        as[1293] = "hu,gu";
        as[1294] = "pian,bin";
        as[1295] = "mu,wu";
        as[1296] = "gu,hu";
        as[1297] = "yi,ni";
        as[1298] = "li,piao";
        as[1299] = "liao,liu";
        as[1300] = "niao,diao";
        as[1301] = "jun,qun";
        as[1302] = "chi,li";
        as[1303] = "ma,me,mo";
        as[1304] = "mo,me";
        as[1305] = "min,mian";
        as[1306] = "yan,qui";
        as[1307] = "qi,zhai";
        as[1308] = "zi,ji";
        as[1309] = "yin,ken";
        ALL_PINYIN = as;
    }
}
