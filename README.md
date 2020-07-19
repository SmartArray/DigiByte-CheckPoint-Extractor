# DigiByte CheckPoint Extractor

This shell script extracts Checkpoints (interval = 50000) from a BlockExplorer Endpoint,
starting from GenesisBlock all the way to the current block height.

## Prerequisites
Any `sh`-compatible shell, `python`, `curl` and standard utils like `seq`, `tr`, `echo`.

## Usage
```
$ ./collect.sh > output.txt
$ cat output.txt | head
0	7497ea1b465eb39f1c8f507bc877078fe016d6fcb6dfad3a64c98dcc6e1e8496
50000	e77a35893a5611c4154cc71f7a7f949e074143e66b05cac2bd8c1db1c752c2f8
100000	236eb6c24599c6a6a2a3f2263086e1e67b2fe29a37bec19be89bf24b33f12cc9
150000	c652b775c9678167a1a0088c1e3624875d226dfa62a10128bf550dff904b4111
200000	0000000000000e8acbba6f1d21394c5df111dd836a17b750f29150f72be02802
250000	301cb89611709f47bddf383aeac2d3fb03d1ab187f695e6b56bd62d1681c3330
300000	701771ab8095e412122d1b7d49c60b0ef871751bc26a7d2a9a68d59dcff5edef
350000	23ffa9e21a1f8275f13976ae33463cc375a2ad1a9c0d5581bccc76d018f29c74
400000	596eeb60dab06afccb354f63abbd684e11fd46339977c7943528e4aa34ed0400
450000	ee9e1b718a21cd8d380093d3c999b1221a7fdde4b229ddbffa88e89210881fe8
```