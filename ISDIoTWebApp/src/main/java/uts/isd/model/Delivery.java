package uts.isd.model;

public class Delivery {
    private String orderId;
    private String deliveryMethod;
    private String deliveryDate;
    private String trackingNumber;
    private String estimatedDeliveryDate;
    private String currentLocation;

    public Delivery() {
    }
    public Delivery(String orderId, String orderDate, String orderStatus) {
        this.orderId = orderId;
        this.deliveryMethod = orderStatus;
        this.deliveryDate = orderDate;
        this.trackingNumber = orderId;
        this.estimatedDeliveryDate = orderDate;
        this.currentLocation = orderDate;
    }
    public String getOrderId() {
        return orderId;
    }
    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }
    public String getDeliveryMethod() {
        return deliveryMethod;
    }
    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod;
    }
    public String getDeliveryDate() {
        return deliveryDate;
    }
    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }
    public String getTrackingNumber() {
        return trackingNumber;
    }
    public void setTrackingNumber(String trackingNumber) {
        this.trackingNumber = trackingNumber;
    }
    public String getEstimatedDeliveryDate() {
        return estimatedDeliveryDate;
    }
    public void setEstimatedDeliveryDate(String estimatedDeliveryDate) {
        this.estimatedDeliveryDate = estimatedDeliveryDate;
    }
    public String getCurrentLocation() {
        return currentLocation;
    }
    public void setCurrentLocation(String currentLocation) {
        this.currentLocation = currentLocation;
    }
}
