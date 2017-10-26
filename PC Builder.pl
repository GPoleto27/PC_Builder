goal :-
    processador(P),
    write('O processador é: '),write(P),nl,!.
goal:-
    write('Processador não encontrado.'),nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

known(nope,info,info).

ask(A, V):-
	known(yes, A, V),       % succeed if true
	!.                      % stop looking
ask(A, V):-
	known(_, A, V),         % fail if false
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
