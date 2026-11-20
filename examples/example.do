set type double
insheet using tests/fixtures/data.csv, comma names clear
fastflex y x, time(time) cluster(state) gvar(g) inference(native jackknife)
