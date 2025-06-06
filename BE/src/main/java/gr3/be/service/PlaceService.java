package gr3.be.service;

import gr3.be.entity.Place;
import java.util.List;

public interface PlaceService {
    List<Place> getAllPlaces();
    Place createPlace(Place place);
}