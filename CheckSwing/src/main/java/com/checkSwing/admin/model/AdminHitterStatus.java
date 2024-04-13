package com.checkSwing.admin.model;

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
public class AdminHitterStatus {
	@NonNull private long id;
	private int game;
	private int pa;		// Plate Apperance, 타석
	private int epa;
	private int ab;		// At Bat, 타수
	private int runs;
	private int hits;	// 안타
	private int doubleHits;   
	private int tripleHits;   
	private int homerun;      
	private int tb;           
	private int rbi;          
	private int sb;           
	private int cs;           
    private int bb;		// Base on Ball, 볼넷
	private int hp;           
	private int ib;           
	private int so;           
	private int gdp;          
	private int sh;           
	private int sf;           
	private double avg;          
	private double obp;          
	private double slg;          
	private double ops;          
}
