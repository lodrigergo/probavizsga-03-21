/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/javafx/FXML2.java to edit this template
 */
package realestategui;

import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;
import javafx.beans.property.IntegerProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.SelectionMode;

/**
 *
 * @author lodrigergo
 */
public class FXMLDocumentController implements Initializable {
    
    @FXML
    private ListView<SellerInfo> sellerListView;

    @FXML
    private Label sellerPhoneNumberLabel;

    @FXML
    private Label adCountLabel;

    @FXML
    private Button loadAdsButton;

    private ObservableList<SellerInfo> sellerInfos = FXCollections.observableArrayList();
    private StringProperty selectedSellerPhoneNumber = new SimpleStringProperty("");
    private IntegerProperty adCount = new SimpleIntegerProperty(0);

    public StringProperty selectedSellerPhoneNumberProperty() {
        return selectedSellerPhoneNumber;
    }

    public IntegerProperty adCountProperty() {
        return adCount;
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        try {
            // Adatbázis-kapcsolat létrehozása
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ingatlan", "root", "root");

            // Lekérdezés végrehajtása
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT name, phone_number FROM sellers");

            // Adatok feldolgozása és hozzáadása a listához
            while (resultSet.next()) {
                String sellerName = resultSet.getString("name");
                String sellerPhoneNumber = resultSet.getString("phone_number");
                sellerInfos.add(new SellerInfo(sellerName, sellerPhoneNumber));
            }

            // Lista elemeinek beállítása
            sellerListView.setItems(sellerInfos);

            // Lista kiválasztás eseménykezelőjének beállítása
            sellerListView.getSelectionModel().setSelectionMode(SelectionMode.SINGLE);
            sellerListView.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> {
                if (newValue != null) {
                    selectedSellerPhoneNumber.set(newValue.getPhoneNumber());
                } else {
                    selectedSellerPhoneNumber.set("");
                }
            });

            // Kapcsolatok lezárása
            resultSet.close();
            statement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @FXML
    public void loadAds() {
        SellerInfo selectedSeller = sellerListView.getSelectionModel().getSelectedItem();
        if (selectedSeller != null) {
            try {
                // Adatbázis-kapcsolat létrehozása
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ingatlanok", "root", "root");

                // Lekérdezés végrehajtása
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM ads WHERE seller_id = (SELECT id FROM sellers WHERE name = '" + selectedSeller.getName() + "')");

                // Hirdetések számának lekérése
                if (resultSet.next()) {
                    adCount.set(resultSet.getInt(1));
                } else {
                    adCount.set(0);
                }

                // Kapcsolatok lezárása
                resultSet.close();
                statement.close();
                connection.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            adCount.set(0);
        }
    }
}
