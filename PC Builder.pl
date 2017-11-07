% processador(Proc, Spec), member(	familia('i5'),Spec), m	ember(ram('ddr4'),Spec).
% EXEMPLO DE PESQUISA: processador(Proc, Specs), member(familia('pentium'), Specs).

% REGRAS.
build(MarcaProc, Familia, SerieProc, Clock, Socket, Ram, Cores, Threads, MarcaRam, ModeloRam, SerieRam, Capacidade, MarcaMobo, ModeloMobo, SerieMobo, Slots):-
	processador(NomeProc, [marca(MarcaProc), familia(Familia), serie(SerieProc), clock(Clock), socket(Socket), ram(Ram), cores(Cores), threads(Threads)]),
	periferico_ram(NomeRam, [marca(MarcaRam), modelo(ModeloRam), serie(SerieRam), capacidade(Capacidade), ram(Ram)]),
	placa_mae(NomeMobo, [marca(MarcaMobo), modelo(ModeloMobo), serie(SerieMobo), socket(Socket), slots(Slots), ram(Ram)]),
	write("-----------------------------"), nl, 
	write("Processador: "), write(NomeProc), nl,
	write("Ram: "), write(NomeRam), nl,
	write("Placa-mãe: "), write(NomeMobo), nl,!.
build:-
	write('Não foi possível montar.'), nl.

%EXEMPLO DE BUILD: build(_, i5, _, _, lga1151, ddr4, _, _, _, _, _, '8gb', asus, _, 'h110', 2).

aProcessador :-		% "ADIVINHA" O PROCESSADOR
    processador(P),
	write('O processador é: '), write(P), nl,!.
aProcessador:-
    write('Processador não encontrado.'),nl.

%%%

aRam :-				% "ADIVINHA" A RAM
    ram(R),
	write('A memória RAM é: '), write(R), nl,!.
aRam:-
    write('RAM não encontrada.'),nl.

%%%

aMobo :-			% "ADIVINHA" A MOTHERBOARD
    ram(M),
	write('A placa-mãe é: '), write(M), nl,!.
aMobo:-
    write('Placa-mãe não encontrada.'),nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

known(nope,info,info).

ask(A, V):-
	known(yes, A, V),        % êxito se verdadeiro
	!.                       % parar de procurar
ask(A, V):-
	known(_, A, V),          % falhar se falso
	!,
	fail.
ask(A, V):-
	write(A:V),              % pedir ao usuário
	write('?: '),
	read(Y),                 % pegar a resposta
	asserta(known(Y, A, V)), % lembrar
	Y == yes.                % êxito ou falha

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clock(C):-
    ask(clock,C).

socket(S):-
    ask(socket,S).

ram(R):-
    ask(ram,R).

cores(C):-
    ask(cores,C).

threads(T):-
    ask(threads,T).

marca(M):-
	ask(marca,M).

familia(F):-
	ask(familia,F).

serie(S):-
	ask(serie,S).

capacidade(C):-
	ask(capacidade,C).

modelo(M):-
	ask(modelo,M).

slots(S):-
	ask(slots,S).

%FIM REGRAS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

processador(pentium_g4400, [clock(3.3), socket('lga1151'), ram('ddr4'), cores(2), threads(2), familia('pentium'), serie('g4400'), marca('intel')]).
processador(pentium_g4500, [clock(3.5), socket('lga1151'), ram('ddr4'), cores(2), threads(2), familia('pentium'), serie('g4500'), marca('intel')]).
processador(pentium_g4520, [clock(3.6), socket('lga1151'), ram('ddr4'), cores(2), threads(2), familia('pentium'), serie('g4520'), marca('intel')]).
processador(pentium_g4560, [clock(3.5), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('pentium'), serie('g4560'), marca('intel')]).
processador(pentium_g4600, [clock(3.6), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('pentium'), serie('g4600'), marca('intel')]).
processador(i3_4130, [clock(3.5), socket('lga1150'), ram('ddr3'), cores(2), threads(4), familia('i3'), serie('4130'), marca('intel')]).
processador(i3_4170, [clock(3.7), socket('lga1150'), ram('ddr3'), cores(2), threads(4),  familia('i3'), serie('4170'), marca('intel')]).
processador(i3_4330, [clock(3.5), socket('lga1150'), ram('ddr3'), cores(2), threads(4), familia('i3'), serie('4330'), marca('intel')]).
processador(i3_4370, [clock(3.8), socket('lga1150'), ram('ddr3'), cores(2), threads(4), familia('i3'), serie('4370'), marca('intel')]).
processador(i3_6100, [clock(3.7), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('i3'), serie('6100'), marca('intel')]).
processador(i3_6300, [clock(3.8), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('i3'), serie('6300'), marca('intel')]).
processador(i3_7100, [clock(3.9), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('i3'), serie('7100'), marca('intel')]).
processador(i3_7300, [clock(4.0), socket('lga1151'), ram('ddr3'), cores(2), threads(4), familia('i3'), serie('7300'), marca('intel')]).
processador(i3_7350k, [clock(4.2), socket('lga1151'), ram('ddr4'), cores(2), threads(4), familia('i3'), serie('7350k'), marca('intel')]).
processador(i5_4440, [clock(3.1), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4440'), marca('intel')]).
processador(i5_4460, [clock(3.2), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4460'), marca('intel')]).
processador(i5_4570, [clock(3.2), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4570'), marca('intel')]).
processador(i5_4590, [clock(3.3), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4590'), marca('intel')]).
processador(i5_4670k, [clock(3.4), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4670k'), marca('intel')]).
processador(i5_4690, [clock(3.5), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4690'), marca('intel')]).
processador(i5_4690k, [clock(3.5), socket('lga1150'), ram('ddr3'), cores(4), threads(4), familia('i5'), serie('4690k'), marca('intel')]).
processador(i5_6400, [clock(2.7), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('6400'), marca('intel')]).
processador(i5_6500, [clock(3.2), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('6500'), marca('intel')]).
processador(i5_6600, [clock(3.3), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('6600'), marca('intel')]).
processador(i5_6600k, [clock(3.5), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('6600k'), marca('intel')]).
processador(i5_7400, [clock(3.0), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('7400'), marca('intel')]).
processador(i5_7500, [clock(3.4), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('7500'), marca('intel')]).
processador(i5_7600, [clock(3.5), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('7600'), marca('intel')]).
processador(i5_7600k, [clock(3.8), socket('lga1151'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('7600k'), marca('intel')]).
processador(i5_7640x, [clock(4.0), socket('lga2066'), ram('ddr4'), cores(4), threads(4), familia('i5'), serie('7640x'), marca('intel')]).
processador(i7_4770, [clock(3.4), socket('lga1150'), ram('ddr3'), cores(4), threads(8), familia('i7'), serie('4770'), marca('intel')]).
processador(i7_4770k, [clock(3.5), socket('lga1150'), ram('ddr3'), cores(4), threads(8), familia('i7'), serie('4770k'), marca('intel')]).
processador(i7_4790, [clock(3.6), socket('lga1150'), ram('ddr3'), cores(4), threads(8), familia('i7'), serie('4790'), marca('intel')]).
processador(i7_4790k, [clock(4.0), socket('lga1150'), ram('ddr3'), cores(4), threads(8), familia('i7'), serie('4790k'), marca('intel')]).
processador(i7_5820k, [clock(3.3), socket('lga2011'), ram('ddr4'), cores(6), threads(12), familia('i7'), serie('5820k'), marca('intel')]).
processador(i7_5930k, [clock(3.5), socket('lga2011'), ram('ddr4'), cores(6), threads(12), familia('i7'), serie('5930k'), marca('intel')]).
processador(i7_5960k, [clock(3.0), socket('lga2011'), ram('ddr4'), cores(8), threads(16), familia('i7'), serie('5960k'), marca('intel')]).
processador(i7_6700, [clock(3.4), socket('lga1151'), ram('ddr4'), cores(4), threads(8), familia('i7'), serie('6700'), marca('intel')]).
processador(i7_6700k, [clock(4.0), socket('lga1151'), ram('ddr4'), cores(4), threads(8), familia('i7'), serie('6700k'), marca('intel')]).
processador(i7_6800k, [clock(3.4), socket('lga2011'), ram('ddr4'), cores(6), threads(12), familia('i7'), serie('6800k'), marca('intel')]).
processador(i7_6900k, [clock(3.2), socket('lga2011'), ram('ddr4'), cores(8), threads(16), familia('i7'), serie('6900k'), marca('intel')]).
processador(i7_6950k, [clock(3.0), socket('lga2011'), ram('ddr4'), cores(10), threads(20), familia('i7'), serie('6950k'), marca('intel')]).
processador(i7_7700, [clock(3.6), socket('lga1151'), ram('ddr4'), cores(4), threads(8), familia('i7'), serie('7700'), marca('intel')]).
processador(i7_7700k, [clock(4.2), socket('lga1151'), ram('ddr4'), cores(4), threads(8), familia('i7'), serie('7700k'), marca('intel')]).
processador(i7_7740k, [clock(4.3), socket('lga2066'), ram('ddr4'), cores(4), threads(8), familia('i7'), serie('7740x'), marca('intel')]).
processador(i7_7800x, [clock(3.5), socket('lga2066'), ram('ddr4'), cores(6), threads(12), familia('i7'), serie('7800x'), marca('intel')]).
processador(i9_7900, [clock(3.3), socket('lga2066'), ram('ddr4'), cores(10), threads(20), familia('i9'), serie('7900'), marca('intel')]).
processador(i9_7940x, [clock(3.1), socket('lga2066'), ram('ddr4'), cores(14), threads(28), familia('i9'), serie('7940x'), marca('intel')]).
processador(i9_7980xe, [clock(2.6), socket('lga2066'), ram('ddr4'), cores(18), threads(36), familia('i9'), serie('7980xe'), marca('intel')]).
processador(fx_4100, [clock(3.6), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4100'), marca('amd')]).
processador(fx_4130, [clock(3.8), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4130'), marca('amd')]).
processador(fx_4150, [clock(3.8), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4150'), marca('amd')]).
processador(fx_4170, [clock(4.2), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4170'), marca('amd')]).
processador(fx_6100, [clock(3.3), socket('am3+'), ram('ddr3'), cores(6), threads(6), familia('fx'), serie('6100'), marca('amd')]).
processador(fx_6120, [clock(3.6), socket('am3+'), ram('ddr3'), cores(6), threads(6), familia('fx'), serie('6120'), marca('amd')]).
processador(fx_6200, [clock(3.8), socket('am3+'), ram('ddr3'), cores(6), threads(6), familia('fx'), serie('6200'), marca('amd')]).
processador(fx_8100, [clock(2.8), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8100'), marca('amd')]).
processador(fx_8120, [clock(3.1), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8120'), marca('amd')]).
processador(fx_8150, [clock(3.6), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8150'), marca('amd')]).
processador(fx_8170, [clock(3.9), socket('am3+'), ram('ddr3'), cores(8), threads(8),  familia('fx'), serie('8170'), marca('amd')]).
processador(fx_4300, [clock(3.8), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4300'), marca('amd')]).
processador(fx_4320, [clock(4.0), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4320'), marca('amd')]).
processador(fx_4350, [clock(4.2), socket('am3+'), ram('ddr3'), cores(4), threads(4), familia('fx'), serie('4350'), marca('amd')]).
processador(fx_6300, [clock(3.5), socket('am3+'), ram('ddr3'), cores(6), threads(6), familia('fx'), serie('6300'), marca('amd')]).
processador(fx_6350, [clock(3.9), socket('am3+'), ram('ddr3'), cores(6), threads(6), familia('fx'), serie('6350'), marca('amd')]).
processador(fx_8300, [clock(3.3), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8300'), marca('amd')]).
processador(fx_8320E, [clock(3.2), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8320E'), marca('amd')]).
processador(fx_8320, [clock(3.5), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8320'), marca('amd')]).
processador(fx_8350, [clock(4.0), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8350'), marca('amd')]).
processador(fx_8370E, [clock(3.3), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8370E'), marca('amd')]).
processador(fx_8370, [clock(4.0), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('8370'), marca('amd')]).
processador(fx_9370, [clock(4.4), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('9370'), marca('amd')]).
processador(fx_9590, [clock(4.7), socket('am3+'), ram('ddr3'), cores(8), threads(8), familia('fx'), serie('9590'), marca('amd')]).
processador(r3_1200, [clock(3.1), socket('am4'), ram('ddr4'), cores(4), threads(4), familia('r3'), serie('1200'), marca('amd')]).
processador(r3_1300X, [clock(3.5), socket('am4'), ram('ddr4'), cores(4), threads(4), familia('r3'), serie('1300X'), marca('amd')]).
processador(r5_1400, [clock(3.2), socket('am4'), ram('ddr4'), cores(4), threads(8), familia('r5'), serie('1400'), marca('amd')]).
processador(r5_1500X, [clock(3.5), socket('am4'), ram('ddr4'), cores(4), threads(8), familia('r5'), serie('1500X'), marca('amd')]).
processador(r5_1600, [clock(3.2), socket('am4'), ram('ddr4'), cores(6), threads(12), familia('r5'), serie('1600'), marca('amd')]).
processador(r5_1600X, [clock(3.6), socket('am4'), ram('ddr4'), cores(6), threads(12), familia('r5'), serie('1600X'), marca('amd')]).
processador(r7_1700, [clock(3.0), socket('am4'), ram('ddr4'), cores(8), threads(16), familia('r7'), serie('1700'), marca('amd')]).
processador(r7_1700X, [clock(3.4), socket('am4'), ram('ddr4'), cores(8), threads(16), familia('r7'), serie('1700X'), marca('amd')]).
processador(r7_1800X, [clock(3.6), socket('am4'), ram('ddr4'), cores(8), threads(16), familia('r7'), serie('1800X'), marca('amd')]).
processador(threadripper_1900X, [clock(3.8), socket('tr4'), ram('ddr4'), cores(8), threads(16), familia('threadripper'), serie('1900X'), marca('amd')]).
processador(threadripper_1920X, [clock(3.5), socket('tr4'), ram('ddr4'), cores(12), threads(24), familia('threadripper'), serie('1920X'), marca('amd')]).
processador(threadripper_1950X, [clock(3.4), socket('tr4'), ram('ddr4'), cores(16), threads(32), familia('threadripper'), serie('1950X'), marca('amd')]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

periferico_ram(corsair_vengeance_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('vengeance'), marca('corsair')]).
periferico_ram(corsair_vengeance_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('vengeance'), marca('corsair')]).
periferico_ram(corsair_vengeance_lp_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('vengeance'), serie('low_profile'), marca('corsair')]).
periferico_ram(corsair_vengeance_lp_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('vengeance'), serie('low_profile'), marca('corsair')]).
periferico_ram(corsair_vengeance_pro_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('vengeance'), serie('pro'), marca('corsair')]).
periferico_ram(corsair_vengeance_pro_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('vengeance'), serie('pro'), marca('corsair')]).
periferico_ram(corsair_dominator_platinum_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('dominator'), serie('platinum'), marca('corsair')]).
periferico_ram(corsair_dominator_platinum_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('dominator'), serie('platinum'), marca('corsair')]).
periferico_ram(corsair_vengeance_lpx_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('vengeance'), serie('lpx'), marca('corsair')]).
periferico_ram(corsair_vengeance_lpx_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('vengeance'), serie('lpx'), marca('corsair')]).
periferico_ram(corsair_vengeance_lpx_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('vengeance'), serie('lpx'), marca('corsair')]).
periferico_ram(corsair_vengeance_led_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('vengeance'), serie('led'), marca('corsair')]).
periferico_ram(corsair_vengeance_led_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('vengeance'), serie('led'), marca('corsair')]).
periferico_ram(corsair_vengeance_rgb_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('vengeance'), serie('rgb'), marca('corsair')]).
periferico_ram(corsair_vengeance_rgb_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('vengeance'), serie('rgb'), marca('corsair')]).
periferico_ram(corsair_dominator_platinum_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('dominator'), serie('platinum'), marca('corsair')]).
periferico_ram(corsair_dominator_platinum_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('dominator'), serie('platinum'), marca('corsair')]).
periferico_ram(kingston_hyperx_fury_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('hyperx'), serie('fury'), marca('kingston')]).
periferico_ram(kingston_hyperx_fury_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('hyperx'), serie('fury'), marca('kingston')]).
periferico_ram(kingston_hyperx_savage_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('hyperx'), serie('savage'), marca('kingston')]).
periferico_ram(kingston_hyperx_savage_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('hyperx'), serie('savage'), marca('kingston')]).
periferico_ram(kingston_hyperx_predator_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(kingston_hyperx_predator_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(kingston_hyperx_fury_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('hyperx'), serie('fury'), marca('kingston')]).
periferico_ram(kingston_hyperx_fury_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('hyperx'), serie('fury'), marca('kingston')]).
periferico_ram(kingston_hyperx_fury_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('hyperx'), serie('fury'), marca('kingston')]).
periferico_ram(kingston_hyperx_savage_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('hyperx'), serie('savage'), marca('kingston')]).
periferico_ram(kingston_hyperx_savage_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('hyperx'), serie('savage'), marca('kingston')]).
periferico_ram(kingston_hyperx_savage_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(kingston_hyperx_predator_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(kingston_hyperx_predator_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(kingston_hyperx_predator_16gb_ddr4, [slot('ddr4'), capacidade('16gb'), modelo('hyperx'), serie('predator'), marca('kingston')]).
periferico_ram(crucial_ballistix_sport_2gb_ddr3, [slot('ddr3'), capacidade('2gb'), modelo('ballistix'), serie('sport'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('ballistix'), serie('sport'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('ballistix'), serie('sport'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_xt_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('ballistix'), serie('sport_xt'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_xt_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('ballistix'), serie('sport_xt'), marca('crucial')]).
periferico_ram(crucial_ballistix_tactical_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('ballistix'), serie('tactical'), marca('crucial')]).
periferico_ram(crucial_ballistix_tactical_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('ballistix'), serie('tactical'), marca('crucial')]).
periferico_ram(crucial_ballistix_elite_4gb_ddr3, [slot('ddr3'), capacidade('4gb'), modelo('ballistix'), serie('elite'), marca('crucial')]).
periferico_ram(crucial_ballistix_elite_8gb_ddr3, [slot('ddr3'), capacidade('8gb'), modelo('ballistix'), serie('elite'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('ballistix'), serie('sport'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('ballistix'), serie('sport'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_lt_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('ballistix'), serie('sport_lt'), marca('crucial')]).
periferico_ram(crucial_ballistix_sport_lt_4gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('ballistix'), serie('sport_lt'), marca('crucial')]).
periferico_ram(crucial_ballistix_tactical_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('ballistix'), serie('tactical'), marca('crucial')]).
periferico_ram(crucial_ballistix_tactical_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('ballistix'), serie('tactical'), marca('crucial')]).
periferico_ram(crucial_ballistix_elite_4gb_ddr4, [slot('ddr4'), capacidade('4gb'), modelo('ballistix'), serie('elite'), marca('crucial')]).
periferico_ram(crucial_ballistix_elite_8gb_ddr4, [slot('ddr4'), capacidade('8gb'), modelo('ballistix'), serie('elite'), marca('crucial')]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

placa_mae(asus_h81m-e, [socket('lga1150'), slots(2), ram('ddr3'), serie('h81'), modelo('h81m-e'), marca('asus')]).
placa_mae(asus_h81-plus/csm, [socket('lga1150'), slots(2), ram('ddr3'), serie('h81'), modelo('h81-plus/csm'), marca('asus')]).
placa_mae(asus_b85-g, [socket('lga1150'), slots(4), ram('ddr3'), serie('b85'), modelo('b85-g'), marca('asus')]).
placa_mae(asus_z97-a, [socket('lga1150'), slots(4), ram('ddr3'), serie('z97'), modelo('z97-a'), marca('asus')]).
placa_mae(asus_z97-e, [socket('lga1150'), slots(4), ram('ddr3'), serie('z97'), modelo('z97-e'), marca('asus')]).
placa_mae(asus_x99-e, [socket('lga2011'), slots(8), ram('ddr4'), serie('x99'), modelo('x99-e'), marca('asus')]).
placa_mae(asus_rog_rampage, [socket('lga2011'), slots(8), ram('ddr4'), serie('x99'), modelo('rog_rampage'), marca('asus')]).
placa_mae(asus_h110m-a, [socket('lga1151'), slots(2), ram('ddr4'), serie('h110'), modelo('h110m-a'), marca('asus')]).
placa_mae(asus_prime_h110, [socket('lga1151'), slots(2), ram('ddr4'), serie('h110'), modelo('prime_h110'), marca('asus')]).
placa_mae(asus_b150m-a, [socket('lga1151'), slots(4), ram('ddr4'), serie('b150'), modelo('b150m-a'), marca('asus')]).
placa_mae(asus_b150m-plus_d3, [socket('lga1151'), slots(4), ram('ddr4'), serie('b150'), modelo('b150m-plus_d3'), marca('asus')]).
placa_mae(asus_z170-pro, [socket('lga1151'), slots(4), ram('ddr4'), serie('z170'), modelo('z170-pro'), marca('asus')]).
placa_mae(asus_maximus_vii_impact, [socket('lga1151'), slots(4), ram('ddr4'), serie('z170'), modelo('maximus_vii_impact'), marca('asus')]).
placa_mae(asus_prime_b250m-plus, [socket('lga1151'), slots(4), ram('ddr4'), serie('b250'), modelo('prime_b250m-plus'), marca('asus')]).
placa_mae(asus_rog_strix_b250i, [socket('lga1151'), slots(4), ram('ddr4'), serie('b250'), modelo('rog_strix_b250i'), marca('asus')]).
placa_mae(asus_prime_z270m-plus, [socket('lga1151'), slots(4), ram('ddr4'), serie('z270'), modelo('prime_z270m-plus'), marca('asus')]).
placa_mae(asus_rog_strix_z270i, [socket('lga1151'), slots(4), ram('ddr4'), serie('z270'), modelo('rog_strix_z270i'), marca('asus')]).
placa_mae(asus_prime_x299-deluxe, [socket('lga2066'), slots(8), ram('ddr4'), serie('x299'), modelo('prime_x299-deluxe'), marca('asus')]).
placa_mae(asus_rog_rampage_x299-xe, [socket('lga2066'), slots(8), ram('ddr4'), serie('x299'), modelo('rog_rampage_x299-xe'), marca('asus')]).
placa_mae(asus_m5a78l-m, [socket('am3+'), slots(2), ram('ddr3'), serie('760g'), modelo('m5a78l-m'), marca('asus')]).
placa_mae(asus_m5a78l-m_plus, [socket('am3+'), slots(4), ram('ddr3'), serie('780g'), modelo('m5a78l-m_plus'), marca('asus')]).
placa_mae(asus_m5a97, [socket('am3+'), slots(4), ram('ddr3'), serie('970'), modelo('m5a97'), marca('asus')]).
placa_mae(asus_m5a97_le, [socket('am3+'), slots(4), ram('ddr3'), serie('970'), modelo('m5a97_le'), marca('asus')]).
placa_mae(asus_prime_a320m-a, [socket('am4'), slots(2), ram('ddr4'), serie('a320'), modelo('prime_a320m-a'), marca('asus')]).
placa_mae(asus_prime_a320m-c, [socket('am4'), slots(2), ram('ddr4'), serie('a320'), modelo('prime_a320m-c'), marca('asus')]).
placa_mae(asus_prime_b350-plus, [socket('am4'), slots(4), ram('ddr4'), serie('b350'), modelo('prime_b350-plus'), marca('asus')]).
placa_mae(asus_rog_strix_b350-f, [socket('am4'), slots(4), ram('ddr4'), serie('b350'), modelo('rog_strix_b350-f'), marca('asus')]).
placa_mae(asus_prime_x370-pro, [socket('am4'), slots(4), ram('ddr4'), serie('x370'), modelo('prime_x370-pro'), marca('asus')]).
placa_mae(asus_rog_crosshair_vi, [socket('am4'), slots(4), ram('ddr4'), serie('x370'), modelo('rog_crosshair_vi'), marca('asus')]).
placa_mae(asus_prim_x399-a, [socket('tr4'), slots(8), ram('ddr4'), serie('x399'), modelo('prim_x399-a'), marca('asus')]).
placa_mae(asus_rog_strix_x399-e, [socket('tr4'), slots(8), ram('ddr4'), serie('x399'), modelo('rog_strix_x399-e'), marca('asus')]).
placa_mae(gigabyte_ga-h81m-h, [socket('lga1150'), slots(2), ram('ddr3'), serie('h81'), modelo('ga-h81m-h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-h81m_gaming_3, [socket('lga1150'), slots(2), ram('ddr3'), serie('h81'), modelo('ga-h81m_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b85m-d3h, [socket('lga1150'), slots(4), ram('ddr3'), serie('b85'), modelo('ga-b85m-d3h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b85m_gaming_3, [socket('lga1150'), slots(4), ram('ddr3'), serie('b85'), modelo('ga-b85m_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z97-d3h, [socket('lga1150'), slots(4), ram('ddr3'), serie('z97'), modelo('ga-z97-d3h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z97_gaming_7, [socket('lga1150'), slots(4), ram('ddr3'), serie('z97'), modelo('ga-z97_gaming_7'), marca('gigabyte')]).
placa_mae(gigabyte_ga-x99_gaming_7, [socket('lga2011'), slots(8), ram('ddr3'), serie('x99'), modelo('ga-x99_gaming_7'), marca('gigabyte')]).
placa_mae(gigabyte_ga-x99_ultra_gaming, [socket('lga2011'), slots(8), ram('ddr3'), serie('x99'), modelo('ga-x99_ultra_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_ga-h110m-h, [socket('lga1151'), slots(2), ram('ddr4'), serie('h110'), modelo('ga-h110m-h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-h110m_gaming_3, [socket('lga1151'), slots(2), ram('ddr4'), serie('h110'), modelo('ga-h110m_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b150-d3h, [socket('lga1151'), slots(4), ram('ddr4'), serie('b150'), modelo('ga-b150-d3h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b150_gaming_3, [socket('lga1151'), slots(4), ram('ddr4'), serie('b150'), modelo('ga-b150_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z170_hd3, [socket('lga1151'), slots(4), ram('ddr4'), serie('z170'), modelo('ga-z170_hd3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z170x_ultra_gaming, [socket('lga1151'), slots(4), ram('ddr4'), serie('z170'), modelo('ga-z170x_ultra_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b250m-d3h, [socket('lga1151'), slots(4), ram('ddr4'), serie('b250'), modelo('ga-b250m-d3h'), marca('gigabyte')]).
placa_mae(gigabyte_ga-b250m_gaming_3, [socket('lga1151'), slots(4), ram('ddr4'), serie('b250'), modelo('ga-b250m_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z270x_gaming_9, [socket('lga1151'), slots(4), ram('ddr4'), serie('z270'), modelo('ga-z270x_gaming_9'), marca('gigabyte')]).
placa_mae(gigabyte_ga-z270x_ultra_gaming, [socket('lga1151'), slots(4), ram('ddr4'), serie('z270'), modelo('ga-z270x_ultra_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_z370_gaming_7, [socket('lga1151'), slots(4), ram('ddr4'), serie('z370'), modelo('z370_gaming_7'), marca('gigabyte')]).
placa_mae(gigabyte_z370_ultra_gaming, [socket('lga1151'), slots(4), ram('ddr4'), serie('z370'), modelo('z370_ultra_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_ga-x299_aorus_gaming_7, [socket('lga2066'), slots(8), ram('ddr4'), serie('x299'), modelo('ga-x299_aorus_gaming_7'), marca('gigabyte')]).
placa_mae(gigabyte_ga-x299_aorus_ultra_gaming, [socket('lga2066'), slots(8), ram('ddr4'), serie('x299'), modelo('ga-x299_aorus_ultra_gaming'), marca('gigabyte')]).
placa_mae('gigabyte_ga-78lmt-s2p', [socket('am3+'), slots(2), ram('ddr3'), serie('760g'), modelo('ga-78lmt-s2p'), marca('gigabyte')]).
placa_mae('gigabyte_ga-78lmt-usb3', [socket('am3+'), slots(2), ram('ddr3'), serie('760g'), modelo('ga-78lmt-usb3'), marca('gigabyte')]).
placa_mae('gigabyte_ga-880gb-d2h', [socket('am3+'), slots(4), ram('ddr3'), serie('880g'), modelo('ga-880gb-d2h'), marca('gigabyte')]).
placa_mae('gigabyte_ga-880gb-usb3', [socket('am3+'), slots(4), ram('ddr3'), serie('880g'), modelo('ga-880gb-usb3'), marca('gigabyte')]).
placa_mae('gigabyte_ga-970-ds3p', [socket('am3+'), slots(4), ram('ddr3'), serie('970'), modelo('ga-970-ds3p'), marca('gigabyte')]).
placa_mae('gigabyte_ga-970_gaming', [socket('am3+'), slots(4), ram('ddr3'), serie('970'), modelo('ga-970_gaming'), marca('gigabyte')]).
placa_mae('gigabyte_ga-990fxa-ud7', [socket('am3+'), slots(4), ram('ddr3'), serie('990x'), modelo('ga-990fxa-ud7'), marca('gigabyte')]).
placa_mae('gigabyte_ga-990fx_gaming', [socket('am3+'), slots(4), ram('ddr3'), serie('990x'), modelo('ga-990fx_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_ga-a320m-hd2, [socket('am4'), slots(2), ram('ddr4'), serie('a320'), modelo('ga-a320m-hd2'), marca('gigabyte')]).
placa_mae(gigabyte_ga-a320m-d2p, [socket('am4'), slots(2), ram('ddr4'), serie('a320'), modelo('ga-a320m-d2p'), marca('gigabyte')]).
placa_mae(gigabyte_ga-ab350m-hd3, [socket('am4'), slots(4), ram('ddr4'), serie('b350'), modelo('ga-ab350m-hd3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-ab350m_gaming_3, [socket('am4'), slots(4), ram('ddr4'), serie('b350'), modelo('ga-ab350m_gaming_3'), marca('gigabyte')]).
placa_mae(gigabyte_ga-ax370_gaming, [socket('am4'), slots(4), ram('ddr4'), serie('x370'), modelo('ga-ax370_gaming'), marca('gigabyte')]).
placa_mae(gigabyte_ga-ax370_gaming_k7, [socket('am4'), slots(4), ram('ddr4'), serie('x370'), modelo('ga-ax370_gaming_k7'), marca('gigabyte')]).
placa_mae(gigabyte_x399-designare_ex, [socket('tr4'), slots(8), ram('ddr4'), serie('x399'), modelo('x399-designare_ex'), marca('gigabyte')]).
placa_mae(gigabyte_x399-aorus_gaming_7, [socket('tr4'), slots(8), ram('ddr4'), serie('x399'), modelo('x399-aorus_gaming_7'), marca('gigabyte')]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

processador(pentium_g4400) :-
    clock(3.3),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(2),
	familia('pentium'),
	serie('g4400'),
	marca('intel'),!.

processador(pentium_g4500) :-
    clock(3.5),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(2),
	familia('pentium'),
	serie('g4500'),
	marca('intel'),!.

processador(pentium_g4520) :-
    clock(3.6),
    socket('lga1151'),
    ram('ddr4'),
	cores(2),
	threads(2),
	familia('pentium'),
	serie('g4520'),
	marca('intel'),!.

processador(pentium_g4560) :-
    clock(3.5),
    socket('lga1151'),
    ram('ddr4'),
	cores(2),
    threads(4),
	familia('pentium'),
	serie('g4560'),
	marca('intel'),!.

processador(pentium_g4600) :-
    clock(3.6),
    socket('lga1151'),
    ram('ddr4'),
	cores(2),
	threads(4),
	familia('pentium'),
	serie('g4600'),
	marca('intel'),!.

processador(i3_4130) :-
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('4130'),
	marca('intel'),!.

processador(i3_4170) :-
    clock(3.7),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4), 
	familia('i3'),
	serie('4170'),
	marca('intel'),!.

processador(i3_4330) :-
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('4330'),
	marca('intel'),!.

processador(i3_4370) :-
    clock(3.8),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('4370'),
	marca('intel'),!.

processador(i3_6100) :-
    clock(3.7),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('6100'),
	marca('intel'),!.

processador(i3_6300) :-
    clock(3.8),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('6300'),
	marca('intel'),!.

processador(i3_7100) :-
    clock(3.9),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('7100'),
	marca('intel'),!.

processador(i3_7300) :-
    clock(4.0),
    socket('lga1151'),
    ram('ddr3'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('7300'),
	marca('intel'),!.

processador(i3_7350k) :-
    clock(4.2),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),
	familia('i3'),
	serie('7350k'),
	marca('intel'),!.

processador(i5_4440) :-
    clock(3.1),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4440'),
	marca('intel'),!.

processador(i5_4460) :-
    clock(3.2),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4460'),
	marca('intel'),!.

processador(i5_4570) :-
    clock(3.2),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4570'),
	marca('intel'),!.

processador(i5_4590) :-
    clock(3.3),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4590'),
	marca('intel'),!.

processador(i5_4670k) :-
    clock(3.4),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4670k'),
	marca('intel'),!.

processador(i5_4690) :-
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4690'),
	marca('intel'),!.

processador(i5_4690k) :-
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('4690k'),
	marca('intel'),!.

processador(i5_6400) :-
    clock(2.7),
    socket('lga1151'),
    ram('ddr4'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('6400'),
	marca('intel'),!.

processador(i5_6500) :-
    clock(3.2),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('6500'),
	marca('intel'),!.

processador(i5_6600) :-
    clock(3.3),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('6600'),
	marca('intel'),!.

processador(i5_6600k) :-
    clock(3.5),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('6600k'),
	marca('intel'),!.

processador(i5_7400) :-
    clock(3.0),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('7400'),
	marca('intel'),!.

processador(i5_7500) :-
    clock(3.4),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('7500'),
	marca('intel'),!.

processador(i5_7600) :-
    clock(3.5),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('7600'),
	marca('intel'),!.

processador(i5_7600k) :-
    clock(3.8),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(4),
	familia('i5'),
	serie('7600k'),
	marca('intel'),!.

processador(i5_7640x) :-
    clock(4.0),
    socket('lga2066'),
    ram('ddr4'),
    cores(4),
    threads(4),
	familia('i5'),
	serie('7640x'),
	marca('intel'),!.

processador(i7_4770) :-
    clock(3.4),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('4770'),
	marca('intel'),!.

processador(i7_4770k) :-
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('4770k'),
	marca('intel'),!.

processador(i7_4790) :-
    clock(3.6),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('4790'),
	marca('intel'),!.

processador(i7_4790k) :-
    clock(4.0),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('4790k'),
	marca('intel'),!.

processador(i7_5820k) :-
    clock(3.3),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('i7'),
	serie('5820k'),
	marca('intel'),!.

processador(i7_5930k) :-
    clock(3.5),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('i7'),
	serie('5930k'),
	marca('intel'),!.

processador(i7_5960k) :-
    clock(3.0),
    socket('lga2011'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('i7'),
	serie('5960k'),
	marca('intel'),!.

processador(i7_6700) :-
    clock(3.4),
    socket('lga1151'),
    ram('ddr4'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('6700'),
	marca('intel'),!.

processador(i7_6700k) :-
    clock(4.0),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(8),
	familia('i7'),
	serie('6700k'),
	marca('intel'),!.

processador(i7_6800k) :-
    clock(3.4),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('i7'),
	serie('6800k'),
	marca('intel'),!.

processador(i7_6900k) :-
    clock(3.2),
    socket('lga2011'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('i7'),
	serie('6900k'),
	marca('intel'),!.

processador(i7_6950k) :-
    clock(3.0),
    socket('lga2011'),
    ram('ddr4'),
    cores(10),
    threads(20),
	familia('i7'),
	serie('6950k'),
	marca('intel'),!.

processador(i7_7700) :-
    clock(3.6),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(8),
	familia('i7'),
	serie('7700'),
	marca('intel'),!.

processador(i7_7700k) :-
    clock(4.2),
    socket('lga1151'),
    ram('ddr4'),
	cores(4),
	threads(8),
	familia('i7'),
	serie('7700k'),
	marca('intel'),!.

processador(i7_7740k) :-
    clock(4.3),
    socket('lga2066'),
    ram('ddr4'),
    cores(4),
    threads(8),
	familia('i7'),
	serie('7740x'),
	marca('intel'),!.

processador(i7_7800x) :-
    clock(3.5),
    socket('lga2066'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('i7'),
	serie('7800x'),
	marca('intel'),!.

processador(i9_7900) :-
    clock(3.3),
    socket('lga2066'),
    ram('ddr4'),
    cores(10),
    threads(20),
	familia('i9'),
	serie('7900'),
	marca('intel'),!.

processador(i9_7940x) :-
    clock(3.1),
    socket('lga2066'),
    ram('ddr4'),
    cores(14),
    threads(28),
	familia('i9'),
	serie('7940x'),
	marca('intel'),!.

processador(i9_7980xe) :-
    clock(2.6),
    socket('lga2066'),
    ram('ddr4'),
    cores(18),
    threads(36),
	familia('i9'),
	serie('7980xe'),
	marca('intel'),!.

processador(fx_4100) :-
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4100'),
	marca('amd'),!.

processador(fx_4130) :-
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4130'),
	marca('amd'),!.

processador(fx_4150) :-
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4150'),
	marca('amd'),!.

processador(fx_4170) :-
    clock(4.2),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4170'),
	marca('amd'),!.

processador(fx_6100) :-
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),
	familia('fx'),
	serie('6100'),
	marca('amd'),!.

processador(fx_6120) :-
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),
	familia('fx'),
	serie('6120'),
	marca('amd'),!.

processador(fx_6200) :-
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),
	familia('fx'),
	serie('6200'),
	marca('amd'),!.

processador(fx_8100) :-
    clock(2.8),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8100'),
	marca('amd'),!.

processador(fx_8120) :-
    clock(3.1),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8120'),
	marca('amd'),!.

processador(fx_8150) :-
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8150'),
	marca('amd'),!.

processador(fx_8170) :-
    clock(3.9),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8), 
	familia('fx'),
	serie('8170'),
	marca('amd'),!.

processador(fx_4300) :-
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4300'),
	marca('amd'),!.

processador(fx_4320) :-
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4320'),
	marca('amd'),!.

processador(fx_4350) :-
    clock(4.2),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),
	familia('fx'),
	serie('4350'),
	marca('amd'),!.

processador(fx_6300) :-
    clock(3.5),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),
	familia('fx'),
	serie('6300'),
	marca('amd'),!.

processador(fx_6350) :-
    clock(3.9),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),
	familia('fx'),
	serie('6350'),
	marca('amd'),!.

processador(fx_8300) :-
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8300'),
	marca('amd'),!.

processador(fx_8320E) :-
    clock(3.2),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8320E'),
	marca('amd'),!.

processador(fx_8320) :-
    clock(3.5),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8320'),
	marca('amd'),!.

processador(fx_8350) :-
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8350'),
	marca('amd'),!.

processador(fx_8370E) :-
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8370E'),
	marca('amd'),!.

processador(fx_8370) :-
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('8370'),
	marca('amd'),!.

processador(fx_9370) :-
    clock(4.4),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('9370'),
	marca('amd'),!.

processador(fx_9590) :-
    clock(4.7),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),
	familia('fx'),
	serie('9590'),
	marca('amd'),!.

processador(r3_1200) :-
    clock(3.1),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(4),
	familia('r3'),
	serie('1200'),
	marca('amd'),!.

processador(r3_1300X) :-
    clock(3.5),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(4),
	familia('r3'),
	serie('1300X'),
	marca('amd'),!.

processador(r5_1400) :-
    clock(3.2),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(8),
	familia('r5'),
	serie('1400'),
	marca('amd'),!.

processador(r5_1500X) :-
    clock(3.5),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(8),
	familia('r5'),
	serie('1500X'),
	marca('amd'),!.

processador(r5_1600) :-
    clock(3.2),
    socket('am4'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('r5'),
	serie('1600'),
	marca('amd'),!.

processador(r5_1600X) :-
    clock(3.6),
    socket('am4'),
    ram('ddr4'),
    cores(6),
    threads(12),
	familia('r5'),
	serie('1600X'),
	marca('amd'),!.

processador(r7_1700) :-
    clock(3.0),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('r7'),
	serie('1700'),
	marca('amd'),!.

processador(r7_1700X) :-
    clock(3.4),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('r7'),
	serie('1700X'),
	marca('amd'),!.

processador(r7_1800X) :-
    clock(3.6),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('r7'),
	serie('1800X'),
	marca('amd'),!.

processador(threadripper_1900X) :-
    clock(3.8),
    socket('tr4'),
    ram('ddr4'),
    cores(8),
    threads(16),
	familia('threadripper'),
	serie('1900X'),
	marca('amd'),!.

processador(threadripper_1920X) :-
    clock(3.5),
    socket('tr4'),
    ram('ddr4'),
    cores(12),
    threads(24),
	familia('threadripper'),
	serie('1920X'),
	marca('amd'),!.

processador(threadripper_1950X) :-
    clock(3.4),
    socket('tr4'),
    ram('ddr4'),
    cores(16),
    threads(32),
	familia('threadripper'),
	serie('1950X'),
	marca('amd'),!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

periferico_ram(corsair_vengeance_4gb_ddr3) :-
	slot('ddr3'),
	capacidade('4gb'),
	modelo('vengeance'),
    marca('corsair'),!.


periferico_ram(corsair_vengeance_8gb_ddr3) :-
	slot('ddr3'),
	capacidade('8gb'),
	modelo('vengeance'),
	marca('corsair'),!.

periferico_ram(corsair_vengeance_lp_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('vengeance'),
    serie('low_profile'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_lp_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('vengeance'),
    serie('low_profile'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_pro_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('vengeance'),
    serie('pro'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_pro_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('vengeance'),
    serie('pro'),
    marca('corsair'),!.

periferico_ram(corsair_dominator_platinum_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('dominator'),
    serie('platinum'),
    marca('corsair'),!.

periferico_ram(corsair_dominator_platinum_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('dominator'),
    serie('platinum'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_lpx_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('vengeance'),
    serie('lpx'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_lpx_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('vengeance'),
    serie('lpx'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_lpx_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('vengeance'),
    serie('lpx'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_led_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('vengeance'),
    serie('led'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_led_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('vengeance'),
    serie('led'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_rgb_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('vengeance'),
    serie('rgb'),
    marca('corsair'),!.

periferico_ram(corsair_vengeance_rgb_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('vengeance'),
    serie('rgb'),
    marca('corsair'),!.

periferico_ram(corsair_dominator_platinum_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('dominator'),
    serie('platinum'),
    marca('corsair'),!.

periferico_ram(corsair_dominator_platinum_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('dominator'),
    serie('platinum'),
    marca('corsair'),!.

periferico_ram(kingston_hyperx_fury_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('fury'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_fury_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('fury'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_savage_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('savage'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_savage_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('savage'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_predator_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_predator_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_fury_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('fury'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_fury_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('fury'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_fury_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('hyperx'),
    serie('fury'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_savage_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('savage'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_savage_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('savage'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_savage_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_predator_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_predator_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(kingston_hyperx_predator_16gb_ddr4) :-
	slot('ddr4'),
    capacidade('16gb'),
    modelo('hyperx'),
    serie('predator'),
    marca('kingston'),!.

periferico_ram(crucial_ballistix_sport_2gb_ddr3) :-
	slot('ddr3'),
    capacidade('2gb'),
    modelo('ballistix'),
    serie('sport'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('sport'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('sport'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_xt_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('sport_xt'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_xt_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('sport_xt'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_tactical_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('tactical'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_tactical_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('tactical'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_elite_4gb_ddr3) :-
	slot('ddr3'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('elite'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_elite_8gb_ddr3) :-
	slot('ddr3'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('elite'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('sport'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('sport'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_lt_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('sport_lt'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_sport_lt_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('sport_lt'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_tactical_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('tactical'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_tactical_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('tactical'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_elite_4gb_ddr4) :-
	slot('ddr4'),
    capacidade('4gb'),
    modelo('ballistix'),
    serie('elite'),
    marca('crucial'),!.

periferico_ram(crucial_ballistix_elite_8gb_ddr4) :-
	slot('ddr4'),
    capacidade('8gb'),
    modelo('ballistix'),
    serie('elite'),
    marca('crucial'),!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

placa_mae(asus_h81m-e) :-
    socket('lga1150'),
    slots(2),
	ram('ddr3'),
    serie('h81'),
    modelo('h81m-e'),
    marca('asus'),!.

placa_mae(asus_h81-plus/csm) :-
    socket('lga1150'),
    slots(2),
	ram('ddr3'),
    serie('h81'),
    modelo('h81-plus/csm'),
    marca('asus'),!.

placa_mae(asus_b85-g) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('b85'),
    modelo('b85-g'),
    marca('asus'),!.

placa_mae(asus_z97-a) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('z97'),
    modelo('z97-a'),
    marca('asus'),!.

placa_mae(asus_z97-e) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('z97'),
    modelo('z97-e'),
    marca('asus'),!.

placa_mae(asus_x99-e) :-
    socket('lga2011'),
    slots(8),
	ram('ddr4'),
    serie('x99'),
    modelo('x99-e'),
    marca('asus'),!.

placa_mae(asus_rog_rampage) :-
    socket('lga2011'),
    slots(8),
	ram('ddr4'),
    serie('x99'),
    modelo('rog_rampage'),
    marca('asus'),!.

placa_mae(asus_h110m-a) :-
    socket('lga1151'),
    slots(2),
	ram('ddr4'),
    serie('h110'),
    modelo('h110m-a'),
    marca('asus'),!.

placa_mae(asus_prime_h110) :-
    socket('lga1151'),
    slots(2),
	ram('ddr4'),
    serie('h110'),
    modelo('prime_h110'),
    marca('asus'),!.

placa_mae(asus_b150m-a) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b150'),
    modelo('b150m-a'),
    marca('asus'),!.

placa_mae(asus_b150m-plus_d3) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b150'),
    modelo('b150m-plus_d3'),
    marca('asus'),!.

placa_mae(asus_z170-pro) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z170'),
    modelo('z170-pro'),
    marca('asus'),!.

placa_mae(asus_maximus_vii_impact) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z170'),
    modelo('maximus_vii_impact'),
    marca('asus'),!.

placa_mae(asus_prime_b250m-plus) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b250'),
    modelo('prime_b250m-plus'),
    marca('asus'),!.

placa_mae(asus_rog_strix_b250i) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b250'),
    modelo('rog_strix_b250i'),
    marca('asus'),!.

placa_mae(asus_prime_z270m-plus) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z270'),
    modelo('prime_z270m-plus'),
    marca('asus'),!.

placa_mae(asus_rog_strix_z270i) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z270'),
    modelo('rog_strix_z270i'),
    marca('asus'),!.

placa_mae(asus_prime_x299-deluxe) :-
    socket('lga2066'),
    slots(8),
	ram('ddr4'),
    serie('x299'),
    modelo('prime_x299-deluxe'),
    marca('asus'),!.

placa_mae(asus_rog_rampage_x299-xe) :-
    socket('lga2066'),
    slots(8),
	ram('ddr4'),
    serie('x299'),
    modelo('rog_rampage_x299-xe'),
    marca('asus'),!.

placa_mae(asus_m5a78l-m) :-
    socket('am3+'),
    slots(2),
	ram('ddr3'),
    serie('760g'),
    modelo('m5a78l-m'),
    marca('asus'),!.

placa_mae(asus_m5a78l-m_plus) :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('780g'),
    modelo('m5a78l-m_plus'),
    marca('asus'),!.

placa_mae(asus_m5a97) :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('970'),
    modelo('m5a97'),
    marca('asus'),!.

placa_mae(asus_m5a97_le) :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('970'),
    modelo('m5a97_le'),
    marca('asus'),!.

placa_mae(asus_prime_a320m-a) :-
    socket('am4'),
    slots(2),
	ram('ddr4'),
    serie('a320'),
    modelo('prime_a320m-a'),
    marca('asus'),!.

placa_mae(asus_prime_a320m-c) :-
    socket('am4'),
    slots(2),
	ram('ddr4'),
    serie('a320'),
    modelo('prime_a320m-c'),
    marca('asus'),!.

placa_mae(asus_prime_b350-plus) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('b350'),
    modelo('prime_b350-plus'),
    marca('asus'),!.

placa_mae(asus_rog_strix_b350-f) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('b350'),
    modelo('rog_strix_b350-f'),
    marca('asus'),!.

placa_mae(asus_prime_x370-pro) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('x370'),
    modelo('prime_x370-pro'),
    marca('asus'),!.

placa_mae(asus_rog_crosshair_vi) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('x370'),
    modelo('rog_crosshair_vi'),
    marca('asus'),!.

placa_mae(asus_prim_x399-a) :-
    socket('tr4'),
    slots(8),
	ram('ddr4'),
    serie('x399'),
    modelo('prim_x399-a'),
    marca('asus'),!.

placa_mae(asus_rog_strix_x399-e) :-
    socket('tr4'),
    slots(8),
	ram('ddr4'),
    serie('x399'),
    modelo('rog_strix_x399-e'),
    marca('asus'),!.

placa_mae(gigabyte_ga-h81m-h) :-
    socket('lga1150'),
    slots(2),
	ram('ddr3'),
    serie('h81'),
    modelo('ga-h81m-h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-h81m_gaming_3) :-
    socket('lga1150'),
    slots(2),
	ram('ddr3'),
    serie('h81'),
    modelo('ga-h81m_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b85m-d3h) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('b85'),
    modelo('ga-b85m-d3h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b85m_gaming_3) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('b85'),
    modelo('ga-b85m_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z97-d3h) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('z97'),
    modelo('ga-z97-d3h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z97_gaming_7) :-
    socket('lga1150'),
    slots(4),
	ram('ddr3'),
    serie('z97'),
    modelo('ga-z97_gaming_7'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-x99_gaming_7) :-
    socket('lga2011'),
    slots(8),
	ram('ddr3'),
    serie('x99'),
    modelo('ga-x99_gaming_7'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-x99_ultra_gaming) :-
    socket('lga2011'),
    slots(8),
	ram('ddr3'),
    serie('x99'),
    modelo('ga-x99_ultra_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-h110m-h) :-
    socket('lga1151'),
    slots(2),
	ram('ddr4'),
    serie('h110'),
    modelo('ga-h110m-h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-h110m_gaming_3) :-
    socket('lga1151'),
    slots(2),
	ram('ddr4'),
    serie('h110'),
    modelo('ga-h110m_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b150-d3h) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b150'),
    modelo('ga-b150-d3h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b150_gaming_3) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b150'),
    modelo('ga-b150_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z170_hd3) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z170'),
    modelo('ga-z170_hd3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z170x_ultra_gaming) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z170'),
    modelo('ga-z170x_ultra_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b250m-d3h) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b250'),
    modelo('ga-b250m-d3h'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-b250m_gaming_3) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('b250'),
    modelo('ga-b250m_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z270x_gaming_9) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z270'),
    modelo('ga-z270x_gaming_9'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-z270x_ultra_gaming) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z270'),
    modelo('ga-z270x_ultra_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_z370_gaming_7) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z370'),
    modelo('z370_gaming_7'),
    marca('gigabyte'),!.

placa_mae(gigabyte_z370_ultra_gaming) :-
    socket('lga1151'),
    slots(4),
	ram('ddr4'),
    serie('z370'),
    modelo('z370_ultra_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-x299_aorus_gaming_7) :-
    socket('lga2066'),
    slots(8),
	ram('ddr4'),
    serie('x299'),
    modelo('ga-x299_aorus_gaming_7'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-x299_aorus_ultra_gaming) :-
    socket('lga2066'),
    slots(8),
	ram('ddr4'),
    serie('x299'),
    modelo('ga-x299_aorus_ultra_gaming'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-78lmt-s2p') :-
    socket('am3+'),
    slots(2),
	ram('ddr3'),
    serie('760g'),
    modelo('ga-78lmt-s2p'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-78lmt-usb3') :-
    socket('am3+'),
    slots(2),
	ram('ddr3'),
    serie('760g'),
    modelo('ga-78lmt-usb3'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-880gb-d2h') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('880g'),
    modelo('ga-880gb-d2h'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-880gb-usb3') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('880g'),
    modelo('ga-880gb-usb3'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-970-ds3p') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('970'),
    modelo('ga-970-ds3p'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-970_gaming') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('970'),
    modelo('ga-970_gaming'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-990fxa-ud7') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('990x'),
    modelo('ga-990fxa-ud7'),
    marca('gigabyte'),!.

placa_mae('gigabyte_ga-990fx_gaming') :-
    socket('am3+'),
    slots(4),
	ram('ddr3'),
    serie('990x'),
    modelo('ga-990fx_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-a320m-hd2) :-
    socket('am4'),
    slots(2),
	ram('ddr4'),
    serie('a320'),
    modelo('ga-a320m-hd2'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-a320m-d2p) :-
    socket('am4'),
    slots(2),
	ram('ddr4'),
    serie('a320'),
    modelo('ga-a320m-d2p'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-ab350m-hd3) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('b350'),
    modelo('ga-ab350m-hd3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-ab350m_gaming_3) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('b350'),
    modelo('ga-ab350m_gaming_3'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-ax370_gaming) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('x370'),
    modelo('ga-ax370_gaming'),
    marca('gigabyte'),!.

placa_mae(gigabyte_ga-ax370_gaming_k7) :-
    socket('am4'),
    slots(4),
	ram('ddr4'),
    serie('x370'),
    modelo('ga-ax370_gaming_k7'),
    marca('gigabyte'),!.

placa_mae(gigabyte_x399-designare_ex) :-
    socket('tr4'),
    slots(8),
	ram('ddr4'),
    serie('x399'),
    modelo('x399-designare_ex'),
    marca('gigabyte'),!.

placa_mae(gigabyte_x399-aorus_gaming_7) :-
    socket('tr4'),
    slots(8),
	ram('ddr4'),
    serie('x399'),
    modelo('x399-aorus_gaming_7'),
    marca('gigabyte'),!.
