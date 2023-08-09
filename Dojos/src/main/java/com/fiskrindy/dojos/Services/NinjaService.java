package com.fiskrindy.dojos.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.fiskrindy.dojos.Models.Dojo;
import com.fiskrindy.dojos.Models.Ninja;
import com.fiskrindy.dojos.Repositories.NinjaRepository;


@Service
public class NinjaService {
	private final NinjaRepository ninjaRepo;
    
    public NinjaService(NinjaRepository ninjaRepo) {
        this.ninjaRepo = ninjaRepo;
    }

    public List<Ninja> all() {
        return ninjaRepo.findAll();
    }

    public Ninja create(Ninja ninja) {
        return ninjaRepo.save(ninja);
    }

    public Ninja find(Long id) {
        Optional<Ninja> result = ninjaRepo.findById(id);
        if(result.isPresent()) {
            return result.get();
        } else {
            return null;
        }
    }
    
    public List<Ninja> byDojo(Dojo dojo) {
    	return ninjaRepo.findAllByDojo(dojo);
    }
}