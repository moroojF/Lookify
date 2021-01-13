package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.models.Song;

public interface SongRepository extends CrudRepository<Song, Long> {
	List<Song> findAll();
    List<Song> findByArtistContaining(String search);
}
