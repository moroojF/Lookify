package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.models.Song;

public interface SongRepository extends CrudRepository<Song, Long> {
	List<Song> findAll();
    List<Song> findByArtistContaining(String q);
    
    @Query(value="select * from songs ORDER BY rating desc LIMIT 10", nativeQuery=true)
	List<Song> top10();
    }
