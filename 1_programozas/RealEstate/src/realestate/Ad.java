package realestate;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Ad {
    private int id;
    private int rooms;
    private String latLong;
    private int floors;
    private int area;
    private String description;
    private boolean freeOfCharge;
    private String imageUrl;
    private Seller seller;
    private Category category;
    private String createAt;

    public Ad(int id, int rooms, String latLong, int floors, int area, String description, boolean freeOfCharge, String imageUrl, Seller seller, Category category, String createAt) {
        this.id = id;
        this.rooms = rooms;
        this.latLong = latLong;
        this.floors = floors;
        this.area = area;
        this.description = description;
        this.freeOfCharge = freeOfCharge;
        this.imageUrl = imageUrl;
        this.seller = seller;
        this.category = category;
        this.createAt = createAt;
    }

    public int getFloors() {
        return floors;
    }

    public int getArea() {
        return area;
    }

    public int getId() {
        return id;
    }

    public boolean isFreeOfCharge() {
        return freeOfCharge;
    }

    public double distanceTo(double lat, double lon) {
        String[] coordinates = this.latLong.split(",");
        double adLat = Double.parseDouble(coordinates[0].trim());
        double adLon = Double.parseDouble(coordinates[1].trim());

        double deltaLat = Math.toRadians(lat - adLat);
        double deltaLon = Math.toRadians(lon - adLon);

        double a = Math.sin(deltaLat / 2) * Math.sin(deltaLat / 2) +
                Math.cos(Math.toRadians(adLat)) * Math.cos(Math.toRadians(lat)) *
                Math.sin(deltaLon / 2) * Math.sin(deltaLon / 2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        return 6371 * c;
    }

    public static List<Ad> loadFromCsv(String fileName) {
        List<Ad> ads = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            String line;
            reader.readLine(); // Fejléc sor átugrása
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split("\t");
                if (parts.length >= 11) {
                    int id = Integer.parseInt(parts[0]);
                    int rooms = Integer.parseInt(parts[1]);
                    String latLong = parts[2];
                    int floors = Integer.parseInt(parts[3]);
                    int area = Integer.parseInt(parts[4]);
                    String description = parts[5].isEmpty() ? null : parts[5];
                    boolean freeOfCharge = parts[6].equals("1");
                    String imageUrl = parts[7].isEmpty() ? null : parts[7];
                    String[] sellerParts = parts[8].split("-");
                    Seller seller = new Seller(Integer.parseInt(sellerParts[0]), sellerParts[1], sellerParts[2]);
                    String[] categoryParts = parts[9].split("-");
                    Category category = new Category(Integer.parseInt(categoryParts[0]), categoryParts[1]);
                    String createAt = parts[10];

                    Ad ad = new Ad(id, rooms, latLong, floors, area, description, freeOfCharge, imageUrl, seller, category, createAt);
                    ads.add(ad);
                }
            }
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
        }
        return ads;
    }
}