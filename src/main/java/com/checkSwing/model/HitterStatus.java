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
public class HitterStatus {
	@NonNull private long id;
	private int game;
	private int pa;		// Plate Apperance, 타석
	private int ab;		// At Bat, 타수
	private int hits;	// 안타
	private int bb;		// Base on Ball, 볼넷
}
