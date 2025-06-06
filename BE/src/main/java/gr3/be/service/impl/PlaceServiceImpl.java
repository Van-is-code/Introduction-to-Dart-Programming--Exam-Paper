package gr3.be.service.impl;

import gr3.be.entity.Place;
import gr3.be.repository.PlaceRepository;
import gr3.be.service.PlaceService;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class PlaceServiceImpl implements PlaceService {
    private final PlaceRepository placeRepository;

    public PlaceServiceImpl(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    @Override
    public List<Place> getAllPlaces() {
        return placeRepository.findAll();
    }

    @Override
    public Place createPlace(Place place) {
        return placeRepository.save(place);
    }
}