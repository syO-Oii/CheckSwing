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



INSERT INTO PitcherStatus(id, game, win, lose, hold, save, innings, hits, bb, so) 
					values(10028, 1, 0, 0, 0, 0, 6.0, 6, 3, 6);
INSERT INTO PitcherStatus(id, game, win, lose, hold, save, innings, hits, bb, so) 
					values(10021, 1, 0, 0, 0, 0, 5.0, 6, 2, 4);
INSERT INTO PitcherStatus(id, game, win, lose, hold, save, innings, hits, bb, so) 
					values(10022, 2, 0, 1, 0, 0, 0.2, 6, 1, 0);				
INSERT INTO PitcherStatus(id, game, win, lose, hold, save, innings, hits, bb, so) 
					values(10034, 1, 0, 1, 0, 0, 0.0, 1, 0, 0);
INSERT INTO PitcherStatus(id, game, win, lose, hold, save, innings, hits, bb, so) 
					values(20054, 1, 0, 0, 0, 0, 5.1, 6, 4, 4);


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