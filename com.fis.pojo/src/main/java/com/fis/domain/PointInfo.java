package com.fis.domain;

public class PointInfo {

	private String point_id;

    private Double temp;

    private Double ad0;

    private Double ad1;

    private Double sensor_temp;

    private Double sensor_humid;

    private Double yl;

    private Double zigbee_temp;

    private Double zigbee_humid;

    private String wind_direct;

    private String wind_power;

    public String getPoint_id() {
        return point_id;
    }

    public void setPoint_id(String point_id) {
        this.point_id = point_id == null ? null : point_id.trim();
    }

    public Double getTemp() {
        return temp;
    }

    public void setTemp(Double temp) {
        this.temp = temp;
    }

    public Double getAd0() {
        return ad0;
    }

    public void setAd0(Double ad0) {
        this.ad0 = ad0;
    }

    public Double getAd1() {
        return ad1;
    }

    public void setAd1(Double ad1) {
        this.ad1 = ad1;
    }

    public Double getSensor_temp() {
        return sensor_temp;
    }

    public void setSensor_temp(Double sensor_temp) {
        this.sensor_temp = sensor_temp;
    }

    public Double getSensor_humid() {
        return sensor_humid;
    }

    public void setSensor_humid(Double sensor_humid) {
        this.sensor_humid = sensor_humid;
    }

    public Double getYl() {
        return yl;
    }

    public void setYl(Double yl) {
        this.yl = yl;
    }

    public Double getZigbee_temp() {
        return zigbee_temp;
    }

    public void setZigbee_temp(Double zigbee_temp) {
        this.zigbee_temp = zigbee_temp;
    }

    public Double getZigbee_humid() {
        return zigbee_humid;
    }

    public void setZigbee_humid(Double zigbee_humid) {
        this.zigbee_humid = zigbee_humid;
    }

    public String getWind_direct() {
        return wind_direct;
    }

    public void setWind_direct(String wind_direct) {
        this.wind_direct = wind_direct == null ? null : wind_direct.trim();
    }

    public String getWind_power() {
        return wind_power;
    }

    public void setWind_power(String wind_power) {
        this.wind_power = wind_power == null ? null : wind_power.trim();
    }
}