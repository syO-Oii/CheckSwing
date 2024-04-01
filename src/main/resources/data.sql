INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10028, '반즈', '롯데', '1995년 10월 01일', 'P', '28');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10042, '정보근', '롯데', '1999년 08월 31일', 'C', '42');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10009, '정훈', '롯데', '1987년 07월 18일', '1B', '09');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10091, '윤동희', '롯데', '2003년 09월 18일', 'RF', '91');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10021, '박세웅', '롯데', '1995년 11월 30일', 'P', '21');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10022, '구승민', '롯데', '1990년 06월 12일', 'P', '22');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10034, '김원중', '롯데', '1993년 06월 14일', 'P', '34');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(20054, '양현종', '기아', '1988년 03월 01일', 'P', '54');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(20034, '최형우', '기아', '1983년 12월 16일', 'DH', '34');
INSERT INTO PROFILE(id, name, team, birth, position, bnum) values(10048, '이정훈', '롯데', '1994년 12월 07일', 'LF', '48');



INSERT INTO PitcherStatus(id, game, gs, gr, gf, win, lose, save, hold, innings, 
						  er, runs, rra, tbf, hits, doubleHits, TripleHits, homerun, bb, hp, 
						  ib, so, rob, bk, wp, era) 
				 values(10028, 30, 30, 0, 0, 11, 10, 0,	0, 170.1, 62, 68, 65.40, 734, 171, 34, 1, 6, 56, 15, 1,	147, 7,	0,	7,	3.28);
INSERT INTO PitcherStatus(id, game, gs, gr, gf, win, lose, save, hold, innings, 
						  er, runs, rra, tbf, hits, doubleHits, TripleHits, homerun, bb, hp, 
						  ib, so, rob, bk, wp, era) 
				 values(10021, 27, 27,	0,	0,	9,	7,	0,	0,	154.0,	59,	70,	67.25,	657,	145,	24,	0,	8,	59,	4,	1,	129,	9,	0,	10,	3.45);				 
INSERT INTO PitcherStatus(id, game, gs, gr, gf, win, lose, save, hold, innings, 
						  er, runs, rra, tbf, hits, doubleHits, TripleHits, homerun, bb, hp, 
						  ib, so, rob, bk, wp, era) 
				 values(10022, 67,	0,	67,	8,	2,	6,	3,	22,	63.2,	28,	32,	32.85,	289,	65,	8,	0,	4,	29,	5,	0,	66,	2,	0,	2,	3.96);
INSERT INTO PitcherStatus(id, game, gs, gr, gf, win, lose, save, hold, innings, 
						  er, runs, rra, tbf, hits, doubleHits, TripleHits, homerun, bb, hp, 
						  ib, so, rob, bk, wp, era) 
				 values(10034, 63,	0,	63,	47,	5,	6,	30,	0,	63.2,	21,	24,	29.50,	265,	51,	5,	3,	2, 25,	5,	3,	82,	1,	0,	3,	2.97);				 
INSERT INTO PitcherStatus(id, game, gs, gr, gf, win, lose, save, hold, innings, 
						  er, runs, rra, tbf, hits, doubleHits, TripleHits, homerun, bb, hp, 
						  ib, so, rob, bk, wp, era) 
				 values(20054, 29,	29,	0,	0,	9,	11,	0,	0,	171.0,	68,	78,	76.45,	729,	181, 33,	1,	13,	48,	1,	1,	133, 9,	0,	5,	3.58);


INSERT INTO HitterStatus(id, game, pa, ab, hits, bb)
					values(10042, 2, 2, 2, 2, 0);
INSERT INTO HitterStatus(id, game, pa, ab, hits, bb)
					values(10009, 2, 5, 3, 0, 2);
INSERT INTO HitterStatus(id, game, pa, ab, hits, bb)
					values(10091, 11, 11, 7, 2, 4);
INSERT INTO HitterStatus(id, game, pa, ab, hits, bb)
					values(20034, 3, 13, 10, 8, 3);
INSERT INTO HitterStatus(id, game, pa, ab, hits, bb)
					values(10048, 59, 171, 152, 53, 13);