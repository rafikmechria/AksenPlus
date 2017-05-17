package com.aksenplus.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;
import java.io.Serializable;

/**
 * Created by Power on 02/05/2017.
 */

@Entity
public class AdBanner implements Serializable {



    @Id
    @GeneratedValue
    private int BannerId;

    private String AdBannerName;
    private String AdUrl;

/*
    @Transient
     MultipartFile AdbannerImage;


    public MultipartFile getAdbannerImage() {
        return AdbannerImage;
    }

    public void setAdbannerImage(MultipartFile adbannerImage) {
        AdbannerImage = adbannerImage;
    }
*/
    public int getBannerId() {
        return BannerId;
    }

    public void setBannerId(int bannerId) {
        BannerId = bannerId;
    }

    public String getAdBannerName() {
        return AdBannerName;
    }

    public void setAdBannerName(String adBannerName) {
        AdBannerName = adBannerName;
    }

    public String getAdUrl() {
        return AdUrl;
    }

    public void setAdUrl(String adUrl) {
        AdUrl = adUrl;
    }


}
