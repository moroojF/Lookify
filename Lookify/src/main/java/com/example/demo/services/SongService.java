package com.example.demo.services;

import java.util.*;

import org.springframework.stereotype.Service;

import com.example.demo.models.Song;
import com.example.demo.repositories.SongRepository;

@Service
public class SongService {
private final SongRepository songRepository;
    
    public SongService(SongRepository songRepository) {
        this.songRepository = songRepository;
    }

    public List<Song> allSongs() {
        return songRepository.findAll();
    }

    public Song createSong(Song s) {
        return songRepository.save(s);
    }
    
    public Song findSong(Long id) {
        Optional<Song> optionalSong = songRepository.findById(id);
        if(optionalSong.isPresent()) {
            return optionalSong.get();
        } else {
            return null;
        }
    }
    
	public void deleteSong(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
        if(optionalSong.isPresent()) {
        	songRepository.deleteById(id);
        }
	}
	
	public List<Song> Search4Song(String artist) {
        return songRepository.findByArtistContaining(artist);	
	}
}
