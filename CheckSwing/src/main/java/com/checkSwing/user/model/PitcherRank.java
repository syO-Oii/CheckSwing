package com.checkSwing.user.model;

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
public class PitcherRank {
	@NonNull private long id;
	private int bb;		// base on ball, 볼넷
	private int bbRank;
	private double bbPercentile;
	private int so;		// strike out, 삼진
	private int soRank;
	private double soPercentile;
	private double era;	// Earned Run Average, 평균자책점 (9 * 자책점) / 투구이닝
	private int eraRank;
	private double eraPercentile;
}
