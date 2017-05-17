package com.aksenplus.dao;

import com.aksenplus.model.AdBanner;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Power on 02/05/2017.
 */

@Component
public interface AdBannerDao {

    void addNewAdBanner(AdBanner adBanner);
    AdBanner getAdBannerByName(String Name);
    AdBanner getAdBannerById(int id);
    List<AdBanner> getAllAdBanners();
    void deleteAdBanner(int id);
    void updateAdBanner(AdBanner adBanner);
}
