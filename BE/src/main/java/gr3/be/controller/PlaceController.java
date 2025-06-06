package gr3.be.controller;

import gr3.be.entity.Place;
import gr3.be.service.PlaceService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/places")
@CrossOrigin // Enable CORS for all origins
public class PlaceController {
    private final PlaceService placeService;

    public PlaceController(PlaceService placeService) {
        this.placeService = placeService;
    }

    @GetMapping
    public List<Place> getAllPlaces() {
        return placeService.getAllPlaces();
    }


    @PostMapping
    public Place createPlace(@RequestBody Place place) {
        return placeService.createPlace(place);
    }
}