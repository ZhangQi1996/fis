package com.fis.domain;

public class IpInfo {
    private Integer id;

    private Long miniip;

    private Long maxip;

    private String continent;

    private String areacode;

    private String adcode;

    private String country;

    private String province;

    private String city;

    private String district;

    private String bdLon;

    private String bdLat;

    private String wgsLon;

    private String wgsLat;

    private String radius;

    private String scence;

    private String accuracy;

    private String owner;

    public IpAddressInfo getIpAddressInfo() {
    	IpAddressInfo ipAddressInfo = new IpAddressInfo();
    	ipAddressInfo.setJ(this.wgsLon);
    	ipAddressInfo.setW(this.wgsLat);
    	ipAddressInfo.setP(this.province);
    	ipAddressInfo.setC(this.city);
    	ipAddressInfo.setD(this.district);
    	return ipAddressInfo;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getMiniip() {
        return miniip;
    }

    public void setMiniip(Long miniip) {
        this.miniip = miniip;
    }

    public Long getMaxip() {
        return maxip;
    }

    public void setMaxip(Long maxip) {
        this.maxip = maxip;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent == null ? null : continent.trim();
    }

    public String getAreacode() {
        return areacode;
    }

    public void setAreacode(String areacode) {
        this.areacode = areacode == null ? null : areacode.trim();
    }

    public String getAdcode() {
        return adcode;
    }

    public void setAdcode(String adcode) {
        this.adcode = adcode == null ? null : adcode.trim();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country == null ? null : country.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district == null ? null : district.trim();
    }

    public String getBdLon() {
        return bdLon;
    }

    public void setBdLon(String bdLon) {
        this.bdLon = bdLon == null ? null : bdLon.trim();
    }

    public String getBdLat() {
        return bdLat;
    }

    public void setBdLat(String bdLat) {
        this.bdLat = bdLat == null ? null : bdLat.trim();
    }

    public String getWgsLon() {
        return wgsLon;
    }

    public void setWgsLon(String wgsLon) {
        this.wgsLon = wgsLon == null ? null : wgsLon.trim();
    }

    public String getWgsLat() {
        return wgsLat;
    }

    public void setWgsLat(String wgsLat) {
        this.wgsLat = wgsLat == null ? null : wgsLat.trim();
    }

    public String getRadius() {
        return radius;
    }

    public void setRadius(String radius) {
        this.radius = radius == null ? null : radius.trim();
    }

    public String getScence() {
        return scence;
    }

    public void setScence(String scence) {
        this.scence = scence == null ? null : scence.trim();
    }

    public String getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(String accuracy) {
        this.accuracy = accuracy == null ? null : accuracy.trim();
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner == null ? null : owner.trim();
    }
}