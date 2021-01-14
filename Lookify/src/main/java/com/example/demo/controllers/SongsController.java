package com.example.demo.controllers;

import java.util.*;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.example.demo.models.Song;
import com.example.demo.services.SongService;

@Controller
public class SongsController {
    private final SongService songService;
    
    public SongsController(SongService songService) {
        this.songService = songService;
    }
    
    @RequestMapping("/")
    public String home() {
        return "/looks/home.jsp";
    }
    
    @RequestMapping("/dashboard")
    public String index(Model model) {
        List<Song> songs = songService.allSongs();
        model.addAttribute("songs", songs);
        return "/looks/index.jsp";
    }
    
    @RequestMapping("/songs/new")
    public String newSong(@ModelAttribute("song") Song song) {
        return "/looks/new.jsp";
    }
    
    @RequestMapping("/songs/show/{id}")
    public String show(@ModelAttribute("id") Long id, Model model) {
    	Song song = songService.findSong(id);
        model.addAttribute("song", song);

        return "/looks/show.jsp";
    }
    
    @RequestMapping(value="/songs", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "/looks/new.jsp";
        } else {
        	songService.createSong(song);
            return "redirect:/dashboard";
        }
    }
    
    @RequestMapping(value="/songs/{id}", method=RequestMethod.DELETE)
    public String destroy(@PathVariable("id") Long id) {
    	songService.deleteSong(id);
        return "redirect:/dashboard";
    }
    
    @RequestMapping("/search/topTen")
    public String top10(Model model) {
    	model.addAttribute("top10songs", songService.top10Rating());
    	return "/looks/Top10.jsp";
    }

    @RequestMapping("/search")
    public String searchResults(@RequestParam("q") String q, Model model) {
    	model.addAttribute("searchR", songService.search4Song(q));
    	return "/looks/search.jsp";
    }
}
