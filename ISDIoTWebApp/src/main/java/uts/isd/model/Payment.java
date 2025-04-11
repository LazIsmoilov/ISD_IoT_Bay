package uts.isd.model;

public class Payment {
    private String paymentId;
    private String paymentMethod;
    private String paymentAmount;
    private String paymentDate;
    private String paymentStatus;

    public Payment() {
    }

    public Payment(String paymentId, String paymentMethod, String paymentAmount, String paymentDate, String paymentStatus) {
        this.paymentId = paymentId;
        this.paymentMethod = paymentMethod;
        this.paymentAmount = paymentAmount;
        this.paymentDate = paymentDate;
        this.paymentStatus = paymentStatus;
    }
    public String getPaymentID() {
        return paymentId;
    }
    public void setPaymentID(String paymentID) {
        this.paymentId = paymentID;
    }
    public String getPaymentMethod() {
        return paymentMethod;
    }
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }
    public String getPaymentAmount() {
        return paymentAmount;
    }
    public void setPaymentAmount(String paymentAmount) {
        this.paymentAmount = paymentAmount;
    }
    public String getPaymentDate() {
        return paymentDate;
    }
    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }
    public String getPaymentStatus() {
        return paymentStatus;
    }
    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
}
