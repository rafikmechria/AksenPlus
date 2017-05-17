package com.aksenplus.model;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * Created by Power on 07/05/2017.
 */
public class FileUploadForm {

    private List<MultipartFile> files;

    public List<MultipartFile> getFiles() {
        return files;
    }

    public void setFiles(List<MultipartFile> files) {
        this.files = files;
    }
}
