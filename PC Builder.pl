goal :-
    processador(P),
    write('O processador é: '),write(P),nl,!.
goal:-
    write('Processador não encontrado.'),nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

known(nope,info,info).

ask(A, V):-
	known(yes, A, V),        % succeed if true
	!.                       % stop looking
ask(A, V):-
	known(_, A, V),          % fail if false
	!,
	fail.
ask(A, V):-
	write(A:V),              % ask user
	write('?: '),
	read(Y),                 % get the answer
	asserta(known(Y, A, V)), % remember it
	Y == yes.                % succeed or fail

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

marca(M):-
    ask(marca,M).

familia(F):-
    ask(familia,F).

serie(S):-
    ask(serie,S).

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

processador(pentium_g4400) :-
    marca('intel'),
    familia('pentium'),
    serie('g4400'),
    clock(3.3),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(2),
    threads(2),!.

processador(pentium_g4500) :-
    marca('intel'),
    familia('pentium'),
    serie('g4500'),
    clock(3.5),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(2),
    threads(2),!.

processador(pentium_g4520) :-
    marca('intel'),
    familia('pentium'),
    serie('g4520'),
    clock(3.6),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(2),
    threads(2),!.

processador(pentium_g4560) :-
    marca('intel'),
    familia('pentium'),
    serie('g4560'),
    clock(3.5),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(pentium_g4600) :-
    marca('intel'),
    familia('pentium'),
    serie('g4600'),
    clock(3.6),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(i3_4130) :-
    marca('intel'),
    familia('i3'),
    serie('4130'),
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),!.

processador(i3_4170) :-
    marca('intel'),
    familia('i3'),
    serie('4170'),
    clock(3.7),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),!.

processador(i3_4330) :-
    marca('intel'),
    familia('i3'),
    serie('4330'),
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),!.

processador(i3_4370) :-
    marca('intel'),
    familia('i3'),
    serie('4370'),
    clock(3.8),
    socket('lga1150'),
    ram('ddr3'),
    cores(2),
    threads(4),!.

processador(i3_6100) :-
    marca('intel'),
    familia('i3'),
    serie('6100'),
    clock(3.7),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(i3_6300) :-
    marca('intel'),
    familia('i3'),
    serie('6300'),
    clock(3.8),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(i3_7100) :-
    marca('intel'),
    familia('i3'),
    serie('7100'),
    clock(3.9),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(i3_7300) :-
    marca('intel'),
    familia('i3'),
    serie('7300'),
    clock(4.0),
    socket('lga1151'),
    ram('ddr3'),
    cores(2),
    threads(4),!.

processador(i3_7350k) :-
    marca('intel'),
    familia('i3'),
    serie('7350k'),
    clock(4.2),
    socket('lga1151'),
    ram('ddr4'),
    cores(2),
    threads(4),!.

processador(i5_4440) :-
    marca('intel'),
    familia('i5'),
    serie('4440'),
    clock(3.1),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4460) :-
    marca('intel'),
    familia('i5'),
    serie('4460'),
    clock(3.2),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4570) :-
    marca('intel'),
    familia('i5'),
    serie('4570'),
    clock(3.2),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4590) :-
    marca('intel'),
    familia('i5'),
    serie('4590'),
    clock(3.3),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4670k) :-
    marca('intel'),
    familia('i5'),
    serie('4670k'),
    clock(3.4),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4690) :-
    marca('intel'),
    familia('i5'),
    serie('4690'),
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_4690k) :-
    marca('intel'),
    familia('i5'),
    serie('4690k'),
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(i5_6400) :-
    marca('intel'),
    familia('i5'),
    serie('6400'),
    clock(2.7),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_6500) :-
    marca('intel'),
    familia('i5'),
    serie('6500'),
    clock(3.2),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_6600) :-
    marca('intel'),
    familia('i5'),
    serie('6600'),
    clock(3.3),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_6600k) :-
    marca('intel'),
    familia('i5'),
    serie('6600k'),
    clock(3.5),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_7400) :-
    marca('intel'),
    familia('i5'),
    serie('7400'),
    clock(3.0),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_7500) :-
    marca('intel'),
    familia('i5'),
    serie('7500'),
    clock(3.4),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_7600) :-
    marca('intel'),
    familia('i5'),
    serie('7600'),
    clock(3.5),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_7600k) :-
    marca('intel'),
    familia('i5'),
    serie('7600k'),
    clock(3.8),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i5_7640x) :-
    marca('intel'),
    familia('i5'),
    serie('7640x'),
    clock(4.0),
    socket('lga2066'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(i7_4770) :-
    marca('intel'),
    familia('i7'),
    serie('4770'),
    clock(3.4),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),!.

processador(i7_4770k) :-
    marca('intel'),
    familia('i7'),
    serie('4770k'),
    clock(3.5),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),!.

processador(i7_4790) :-
    marca('intel'),
    familia('i7'),
    serie('4790'),
    clock(3.6),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),!.

processador(i7_4790k) :-
    marca('intel'),
    familia('i7'),
    serie('4790k'),
    clock(4.0),
    socket('lga1150'),
    ram('ddr3'),
    cores(4),
    threads(8),!.

processador(i7_5820k) :-
    marca('intel'),
    familia('i7'),
    serie('5820k'),
    clock(3.3),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(i7_5930k) :-
    marca('intel'),
    familia('i7'),
    serie('5930k'),
    clock(3.5),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(i7_5960k) :-
    marca('intel'),
    familia('i7'),
    serie('5960k'),
    clock(3.0),
    socket('lga2011'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(i7_6700) :-
    marca('intel'),
    familia('i7'),
    serie('6700'),
    clock(3.4),
    socket('lga1151'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(i7_6700k) :-
    marca('intel'),
    familia('i7'),
    serie('6700k'),
    clock(4.0),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(i7_6800k) :-
    marca('intel'),
    familia('i7'),
    serie('6800k'),
    clock(3.4),
    socket('lga2011'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(i7_6900k) :-
    marca('intel'),
    familia('i7'),
    serie('6900k'),
    clock(3.2),
    socket('lga2011'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(i7_6950k) :-
    marca('intel'),
    familia('i7'),
    serie('6950k'),
    clock(3.0),
    socket('lga2011'),
    ram('ddr4'),
    cores(10),
    threads(20),!.

processador(i7_7700) :-
    marca('intel'),
    familia('i7'),
    serie('7700'),
    clock(3.6),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(i7_7700k) :-
    marca('intel'),
    familia('i7'),
    serie('7700k'),
    clock(4.2),
    socket('lga1151'),
    ram('lddr3'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(i7_7740k) :-
    marca('intel'),
    familia('i7'),
    serie('7740x'),
    clock(4.3),
    socket('lga2066'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(i7_7800x) :-
    marca('intel'),
    familia('i7'),
    serie('7800x'),
    clock(3.5),
    socket('lga2066'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(i9_7900) :-
    marca('intel'),
    familia('i9'),
    serie('7900'),
    clock(3.3),
    socket('lga2066'),
    ram('ddr4'),
    cores(10),
    threads(20),!.

processador(i9_7940x) :-
    marca('intel'),
    familia('i9'),
    serie('7940x'),
    clock(3.1),
    socket('lga2066'),
    ram('ddr4'),
    cores(14),
    threads(28),!.

processador(i9_7980xe) :-
    marca('intel'),
    familia('i9'),
    serie('7980xe'),
    clock(2.6),
    socket('lga2066'),
    ram('ddr4'),
    cores(18),
    threads(36),!.

processador(fx_4100) :-
    marca('amd'),
    familia('fx'),
    serie('4100'),
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_4130) :-
    marca('amd'),
    familia('fx'),
    serie('4130'),
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_4150) :-
    marca('amd'),
    familia('fx'),
    serie('4150'),
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_4170) :-
    marca('amd'),
    familia('fx'),
    serie('4170'),
    clock(4.2),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_6100) :-
    marca('amd'),
    familia('fx'),
    serie('6100'),
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),!.

processador(fx_6120) :-
    marca('amd'),
    familia('fx'),
    serie('6120'),
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),!.

processador(fx_6200) :-
    marca('amd'),
    familia('fx'),
    serie('6200'),
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),!.

processador(fx_8100) :-
    marca('amd'),
    familia('fx'),
    serie('8100'),
    clock(2.8),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8120) :-
    marca('amd'),
    familia('fx'),
    serie('8120'),
    clock(3.1),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8150) :-
    marca('amd'),
    familia('fx'),
    serie('8150'),
    clock(3.6),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8170) :-
    marca('amd'),
    familia('fx'),
    serie('8170'),
    clock(3.9),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_4300) :-
    marca('amd'),
    familia('fx'),
    serie('4300'),
    clock(3.8),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_4320) :-
    marca('amd'),
    familia('fx'),
    serie('4320'),
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_4350) :-
    marca('amd'),
    familia('fx'),
    serie('4350'),
    clock(4.2),
    socket('am3+'),
    ram('ddr3'),
    cores(4),
    threads(4),!.

processador(fx_6300) :-
    marca('amd'),
    familia('fx'),
    serie('6300'),
    clock(3.5),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),!.

processador(fx_6350) :-
    marca('amd'),
    familia('fx'),
    serie('6350'),
    clock(3.9),
    socket('am3+'),
    ram('ddr3'),
    cores(6),
    threads(6),!.

processador(fx_8300) :-
    marca('amd'),
    familia('fx'),
    serie('8300'),
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8320E) :-
    marca('amd'),
    familia('fx'),
    serie('8320E'),
    clock(3.2),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8320) :-
    marca('amd'),
    familia('fx'),
    serie('8320'),
    clock(3.5),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8350) :-
    marca('amd'),
    familia('fx'),
    serie('8350'),
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8370E) :-
    marca('amd'),
    familia('fx'),
    serie('8370E'),
    clock(3.3),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_8370) :-
    marca('amd'),
    familia('fx'),
    serie('8370'),
    clock(4.0),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_9370) :-
    marca('amd'),
    familia('fx'),
    serie('9370'),
    clock(4.4),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(fx_9590) :-
    marca('amd'),
    familia('fx'),
    serie('9590'),
    clock(4.7),
    socket('am3+'),
    ram('ddr3'),
    cores(8),
    threads(8),!.

processador(r3_1200) :-
    marca('amd'),
    familia('r3'),
    serie('1200'),
    clock(3.1),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(r3_1300X) :-
    marca('amd'),
    familia('r3'),
    serie('1300X'),
    clock(3.5),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(4),!.

processador(r5_1400) :-
    marca('amd'),
    familia('r5'),
    serie('1400'),
    clock(3.2),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(r5_1500X) :-
    marca('amd'),
    familia('r5'),
    serie('1500X'),
    clock(3.5),
    socket('am4'),
    ram('ddr4'),
    cores(4),
    threads(8),!.

processador(r5_1600) :-
    marca('amd'),
    familia('r5'),
    serie('1600'),
    clock(3.2),
    socket('am4'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(r5_1600X) :-
    marca('amd'),
    familia('r5'),
    serie('1600X'),
    clock(3.6),
    socket('am4'),
    ram('ddr4'),
    cores(6),
    threads(12),!.

processador(r7_1700) :-
    marca('amd'),
    familia('r7'),
    serie('1700'),
    clock(3.0),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(r7_1700X) :-
    marca('amd'),
    familia('r7'),
    serie('1700X'),
    clock(3.4),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(r7_1800X) :-
    marca('amd'),
    familia('r7'),
    serie('1800X'),
    clock(3.6),
    socket('am4'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(threadripper_1900X) :-
    marca('amd'),
    familia('threadripper'),
    serie('1900X'),
    clock(3.8),
    socket('tr4'),
    ram('ddr4'),
    cores(8),
    threads(16),!.

processador(threadripper_1920X) :-
    marca('amd'),
    familia('threadripper'),
    serie('1920X'),
    clock(3.5),
    socket('tr4'),
    ram('ddr4'),
    cores(12),
    threads(24),!.

processador(threadripper_1950X) :-
    marca('amd'),
    familia('threadripper'),
    serie('1950X'),
    clock(3.4),
    socket('tr4'),
    ram('ddr4'),
    cores(16),
    threads(32),!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ram(corsair_vengeance_4gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_8gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_lp_4gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('low_profile'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_lp_8gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('low_profile'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_pro_4gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('pro'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_pro_8gb_ddr3) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('pro'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(corsair_dominator_platinum_4gb_ddr3) :-
    marca('corsair'),
    modelo('dominator'),
    serie('platinum'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(corsair_dominator_platinum_8gb_ddr3) :-
    marca('corsair'),
    modelo('dominator'),
    serie('platinum'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(corsair_vengeance_lpx_4gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('lpx'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_lpx_8gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('lpx'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_lpx_16gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('lpx'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_led_8gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('led'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_led_16gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('led'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_rgb_8gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('rgb'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(corsair_vengeance_rgb_16gb_ddr4) :-
    marca('corsair'),
    modelo('vengeance'),
    serie('rgb'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(corsair_dominator_platinum_8gb_ddr4) :-
    marca('corsair'),
    modelo('dominator'),
    serie('platinum'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(corsair_dominator_platinum_16gb_ddr4) :-
    marca('corsair'),
    modelo('dominator'),
    serie('platinum'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_fury_4gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('fury'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_fury_8gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('fury'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_savage_4gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('savage'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_savage_8gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('savage'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_predator_4gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_predator_8gb_ddr3) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(kingston_hyperx_fury_4gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('fury'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_fury_8gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('fury'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_fury_16gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('fury'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_savage_4gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('savage'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_savage_8gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('savage'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_savage_16gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_predator_4gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_predator_8gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(kingston_hyperx_predator_16gb_ddr4) :-
    marca('kingston'),
    modelo('hyperx'),
    serie('predator'),
    capacidade('16gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_sport_2gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport'),
    capacidade('2gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_sport_4gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_sport_8gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_sport_xt_4gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport_xt'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_sport_xt_8gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport_xt'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_tactical_4gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('tactical'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_tactical_8gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('tactical'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_elite_4gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('elite'),
    capacidade('4gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_elite_8gb_ddr3) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('elite'),
    capacidade('8gb'),
    slot('ddr3'),!.

ram(crucial_ballistix_sport_4gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_sport_8gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_sport_lt_4gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport_lt'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_sport_lt_4gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('sport_lt'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_tactical_4gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('tactical'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_tactical_8gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('tactical'),
    capacidade('8gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_elite_4gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('elite'),
    capacidade('4gb'),
    slot('ddr4'),!.

ram(crucial_ballistix_elite_8gb_ddr4) :-
    marca('crucial'),
    modelo('ballistix'),
    serie('elite'),
    capacidade('8gb'),
    slot('ddr4'),!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

placa_mae(asus_h81m-e) :-
    marca('asus'),
    modelo('h81m-e'),
    serie('h81'),
    socket('lga1150'),
    slots(2),
    ram('ddr3'),!.

placa_mae(asus_h81-plus/csm) :-
    marca('asus'),
    modelo('h81-plus/csm'),
    serie('h81'),
    socket('lga1150'),
    slots(2),
    ram('ddr3'),!.

placa_mae(asus_b85-g) :-
    marca('asus'),
    modelo('b85-g'),
    serie('b85'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_z97-a) :-
    marca('asus'),
    modelo('z97-a'),
    serie('z97'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_z97-e) :-
    marca('asus'),
    modelo('z97-e'),
    serie('z97'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_x99-e) :-
    marca('asus'),
    modelo('x99-e'),
    serie('x99'),
    socket('lga2011'),
    slots(8),
    ram('ddr4'),!.

placa_mae(asus_rog_rampage) :-
    marca('asus'),
    modelo('rog_rampage'),
    serie('x99'),
    socket('lga2011'),
    slots(8),
    ram('ddr4'),!.

placa_mae(asus_h110m-a) :-
    marca('asus'),
    modelo('h110m-a'),
    serie('h110'),
    socket('lga1151'),
    slots(2),
    ram('ddr4'),!.

placa_mae(asus_prime_h110) :-
    marca('asus'),
    modelo('prime_h110'),
    serie('h110'),
    socket('lga1151'),
    slots(2),
    ram('ddr4'),!.

placa_mae(asus_b150m-a) :-
    marca('asus'),
    modelo('b150m-a'),
    serie('b150'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_b150m-plus_d3) :-
    marca('asus'),
    modelo('b150m-plus_d3'),
    serie('b150'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_z170-pro) :-
    marca('asus'),
    modelo('z170-pro'),
    serie('z170'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_maximus_vii_impact) :-
    marca('asus'),
    modelo('maximus_vii_impact'),
    serie('z170'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_prime_b250m-plus) :-
    marca('asus'),
    modelo('prime_b250m-plus'),
    serie('b250'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_rog_strix_b250i) :-
    marca('asus'),
    modelo('rog_strix_b250i'),
    serie('b250'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_prime_z270m-plus) :-
    marca('asus'),
    modelo('prime_z270m-plus'),
    serie('z270'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_rog_strix_z270i) :-
    marca('asus'),
    modelo('rog_strix_z270i'),
    serie('z270'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_prime_x299-deluxe) :-
    marca('asus'),
    modelo('prime_x299-deluxe'),
    serie('x299'),
    socket('lga2066'),
    slots(8),
    ram('ddr4'),!.

placa_mae(asus_rog_rampage_x299-xe) :-
    marca('asus'),
    modelo('rog_rampage_x299-xe'),
    serie('x299'),
    socket('lga2066'),
    slots(8),
    ram('ddr4'),!.

placa_mae(asus_m5a78l-m) :-
    marca('asus'),
    modelo('m5a78l-m'),
    serie('760g'),
    socket('am3+'),
    slots(2),
    ram('ddr3'),!.

placa_mae(asus_m5a78l-m_plus) :-
    marca('asus'),
    modelo('m5a78l-m_plus'),
    serie('780g'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_m5a97) :-
    marca('asus'),
    modelo('m5a97'),
    serie('970'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_m5a97_le) :-
    marca('asus'),
    modelo('m5a97_le'),
    serie('970'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae(asus_prime_a320m-a) :-
    marca('asus'),
    modelo('prime_a320m-a'),
    serie('a320'),
    socket('am4'),
    slots(2),
    ram('ddr4'),!.

placa_mae(asus_prime_a320m-c) :-
    marca('asus'),
    modelo('prime_a320m-c'),
    serie('a320'),
    socket('am4'),
    slots(2),
    ram('ddr4'),!.

placa_mae(asus_prime_b350-plus) :-
    marca('asus'),
    modelo('prime_b350-plus'),
    serie('b350'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_rog_strix_b350-f) :-
    marca('asus'),
    modelo('rog_strix_b350-f'),
    serie('b350'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_prime_x370-pro) :-
    marca('asus'),
    modelo('prime_x370-pro'),
    serie('x370'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_rog_crosshair_vi) :-
    marca('asus'),
    modelo('rog_crosshair_vi'),
    serie('x370'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(asus_prim_x399-a) :-
    marca('asus'),
    modelo('prim_x399-a'),
    serie('x399'),
    socket('tr4'),
    slots(8),
    ram('ddr4'),!.

placa_mae(asus_rog_strix_x399-e) :-
    marca('asus'),
    modelo('rog_strix_x399-e'),
    serie('x399'),
    socket('tr4'),
    slots(8),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-h81m-h) :-
    marca('gigabyte'),
    modelo('ga-h81m-h'),
    serie('h81'),
    socket('lga1150'),
    slots(2),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-h81m_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-h81m_gaming_3'),
    serie('h81'),
    socket('lga1150'),
    slots(2),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-b85m-d3h) :-
    marca('gigabyte'),
    modelo('ga-b85m-d3h'),
    serie('b85'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-b85m_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-b85m_gaming_3'),
    serie('b85'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-z97-d3h) :-
    marca('gigabyte'),
    modelo('ga-z97-d3h'),
    serie('z97'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-z97_gaming_7) :-
    marca('gigabyte'),
    modelo('ga-z97_gaming_7'),
    serie('z97'),
    socket('lga1150'),
    slots(4),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-x99_gaming_7) :-
    marca('gigabyte'),
    modelo('ga-x99_gaming_7'),
    serie('x99'),
    socket('lga2011'),
    slots(8),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-x99_ultra_gaming) :-
    marca('gigabyte'),
    modelo('ga-x99_ultra_gaming'),
    serie('x99'),
    socket('lga2011'),
    slots(8),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-h110m-h) :-
    marca('gigabyte'),
    modelo('ga-h110m-h'),
    serie('h110'),
    socket('lga1151'),
    slots(2),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-h110m_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-h110m_gaming_3'),
    serie('h110'),
    socket('lga1151'),
    slots(2),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-b150-d3h) :-
    marca('gigabyte'),
    modelo('ga-b150-d3h'),
    serie('b150'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-b150_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-b150_gaming_3'),
    serie('b150'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-z170_hd3) :-
    marca('gigabyte'),
    modelo('ga-z170_hd3'),
    serie('z170'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-z170x_ultra_gaming) :-
    marca('gigabyte'),
    modelo('ga-z170x_ultra_gaming'),
    serie('z170'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-b250m-d3h) :-
    marca('gigabyte'),
    modelo('ga-b250m-d3h'),
    serie('b250'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-b250m_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-b250m_gaming_3'),
    serie('b250'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-z270x_gaming_9) :-
    marca('gigabyte'),
    modelo('ga-z270x_gaming_9'),
    serie('z270'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-z270x_ultra_gaming) :-
    marca('gigabyte'),
    modelo('ga-z270x_ultra_gaming'),
    serie('z270'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_z370_gaming_7) :-
    marca('gigabyte'),
    modelo('z370_gaming_7'),
    serie('z370'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_z370_ultra_gaming) :-
    marca('gigabyte'),
    modelo('z370_ultra_gaming'),
    serie('z370'),
    socket('lga1151'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-x299_aorus_gaming_7) :-
    marca('gigabyte'),
    modelo('ga-x299_aorus_gaming_7'),
    serie('x299'),
    socket('lga2066'),
    slots(8),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-x299_aorus_ultra_gaming) :-
    marca('gigabyte'),
    modelo('ga-x299_aorus_ultra_gaming'),
    serie('x299'),
    socket('lga2066'),
    slots(8),
    ram('ddr4'),!.

placa_mae('gigabyte_ga-78lmt-s2p') :-
    marca('gigabyte'),
    modelo('ga-78lmt-s2p'),
    serie('760g'),
    socket('am3+'),
    slots(2),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-78lmt-usb3') :-
    marca('gigabyte'),
    modelo('ga-78lmt-usb3'),
    serie('760g'),
    socket('am3+'),
    slots(2),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-880gb-d2h') :-
    marca('gigabyte'),
    modelo('ga-880gb-d2h'),
    serie('880g'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-880gb-usb3') :-
    marca('gigabyte'),
    modelo('ga-880gb-usb3'),
    serie('880g'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-970-ds3p') :-
    marca('gigabyte'),
    modelo('ga-970-ds3p'),
    serie('970'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-970_gaming') :-
    marca('gigabyte'),
    modelo('ga-970_gaming'),
    serie('970'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-990fxa-ud7') :-
    marca('gigabyte'),
    modelo('ga-990fxa-ud7'),
    serie('990x'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae('gigabyte_ga-990fx_gaming') :-
    marca('gigabyte'),
    modelo('ga-990fx_gaming'),
    serie('990x'),
    socket('am3+'),
    slots(4),
    ram('ddr3'),!.

placa_mae(gigabyte_ga-a320m-hd2) :-
    marca('gigabyte'),
    modelo('ga-a320m-hd2'),
    serie('a320'),
    socket('am4'),
    slots(2),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-a320m-d2p) :-
    marca('gigabyte'),
    modelo('ga-a320m-d2p'),
    serie('a320'),
    socket('am4'),
    slots(2),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-ab350m-hd3) :-
    marca('gigabyte'),
    modelo('ga-ab350m-hd3'),
    serie('b350'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-ab350m_gaming_3) :-
    marca('gigabyte'),
    modelo('ga-ab350m_gaming_3'),
    serie('b350'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-ax370_gaming) :-
    marca('gigabyte'),
    modelo('ga-ax370_gaming'),
    serie('x370'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_ga-ax370_gaming_k7) :-
    marca('gigabyte'),
    modelo('ga-ax370_gaming_k7'),
    serie('x370'),
    socket('am4'),
    slots(4),
    ram('ddr4'),!.

placa_mae(gigabyte_x399-designare_ex) :-
    marca('gigabyte'),
    modelo('x399-designare_ex'),
    serie('x399'),
    socket('tr4'),
    slots(8),
    ram('ddr4'),!.

placa_mae(gigabyte_x399-aorus_gaming_7) :-
    marca('gigabyte'),
    modelo('x399-aorus_gaming_7'),
    serie('x399'),
    socket('tr4'),
    slots(8),
    ram('ddr4'),!.
