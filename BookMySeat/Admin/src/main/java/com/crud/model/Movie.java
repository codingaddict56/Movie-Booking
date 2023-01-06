package com.crud.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Movie")
public class Movie 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "movieId" , length = 5)
	private int movieId;
	@Column(name = "movieName" , length = 20)
	private String movieName;
	@Column(name = "cinemaHall" , length = 20)
	private String cinemaHall;
	@Column(name = "location" , length = 20)
	private String location;
	@Column(name = "language" , length = 20)
	private String language;
	@Column(name = "price" , length = 20)
	
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCinemaHall() {
		return cinemaHall;
	}
	public void setCinemaHall(String cinemaHall) {
		this.cinemaHall = cinemaHall;
	}
	
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	

}
