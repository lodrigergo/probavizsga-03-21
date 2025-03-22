/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package realestate;

import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author lodrigergo
 */
public class RealEstate {
    
    private List<Ad> ads; 

    public RealEstate(String fileName) {
        this.ads = Ad.loadFromCsv(fileName); 
    }

    public List<Ad> getAds() {
        return ads;
    }
    
    public double calculateAverageGroundFloorArea() {
        double sum = 0;
        int count = 0;
        for (Ad ad : ads) {
            if (ad.getFloors() == 0) { 
                sum += ad.getArea();
                count++;
            }
        }
        return count > 0 ? sum / count : 0;
    }
    
    public Ad findClosestFreeAd(double lat, double lon) {
    Ad closestAd = null;
    double minDistance = Double.MAX_VALUE;

    for (Ad ad : ads) {
        System.out.println("Ad ID: " + ad.getId() + ", FreeOfCharge: " + ad.isFreeOfCharge()); // Opcionális debug kiíratás
        if (ad.isFreeOfCharge()) {
            double distance = ad.distanceTo(lat, lon);
            System.out.println("Ad ID: " + ad.getId() + ", Distance: " + distance); // Opcionális debug kiíratás
            if (distance < minDistance) {
                minDistance = distance;
                closestAd = ad;
            }
        }
    }
    
    return closestAd;
}

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        RealEstate realEstate = new RealEstate("realestates.csv");
        double meservarLat = 47.4164220114023;
        double merservarLon = 17.312131231231;
        

        Ad closestAd = realEstate.findClosestFreeAd(meservarLat, merservarLon);
        if (closestAd != null) {
            System.out.println("A legközelebbi tehermentes ingatlan a Mesevár óvodához:");
            System.out.println(closestAd);
        } else {
            System.out.println("Nincs tehermentes ingatlan a közelben.");
        }
    }
    }
        
        
        
    
    

    

