package com.checkSwing.model;

import org.springframework.context.annotation.Primary;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class Player_PitcherStatus {
	@NonNull private long id;
	private int game;	// 경기수
	private int gs;		// Game Started, 선발
	private int gr;		// Game Relief, 구원
	private int gf;		// Game Finished, 경기의 마지막 투수
	private int win;
	private int lose;
	private int hold;
	private int save;
	private double innings;
	private int er;		// Earned Runs, 자책점
	private int runs;	// Runs, 실점
	private double rra;	// responsibility Runs Allowed, 책임실점
	private int tbf;	// Total Batters Faces, 상대한 타자 수
	private int hits;
	private int doubleHits;
	private int tripleHits;
	private int homerun;
	private int bb;		// base on ball, 볼넷
	private int hp;		// Hit By Pitch, 사구
	private int ib;		// Intentional Based on Ball, 고의 사구
	private int so;		// strike out, 삼진
	private int rob;	// Reached On Error, 실책 출루 허용 횟수
	private int bk;		// Balk, 보크
	private int wp;		// Wild Pitch, 폭투
	private double era;	// Earned Run Average, 평균자책점 (9 * 자책점) / 투구이닝
}
