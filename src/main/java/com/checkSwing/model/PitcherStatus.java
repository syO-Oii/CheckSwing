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
public class PitcherStatus {
	@NonNull private long id;
	private int game;
	private int win;
	private int lose;
	private int hold;
	private int save;
	private double innings;
	private int hits;
	private int bb;	// base on ball
	private int so;	// strike out
}
