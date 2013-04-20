package net.yosshy.campaign.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;
import javax.persistence.Table;

import java.math.BigDecimal;
import java.util.Date;


@Entity
@Table(name="CAMPAIGN_ENTRY")
public class CampaignEntry {

    @Id
    @GeneratedValue
    public BigDecimal seq;

    @Column(name="GOODS_CODE")
    public String goodsCode;

    @Column(name="LAST_NAME")
    public String lastName;

    @Column(name="FIRST_NAME")
    public String firstName;

    @Column(name="LAST_NAME_KANA")
    public String lastNameKana;

    @Column(name="FIRST_NAME_KANA")
    public String firstNameKana;

    @Column(name="ZIP_CODE")
    public String zipCode;

    @Column(name="PREFECTURE_CODE")
    public String prefectureCode;

    public String address1;

    public String address2;

    @Column(name="AGE_TYPE")
    public String ageType;

    @Column(name="SEX_TYPE")
    public String sexType;

    public String tel1;

    public String tel2;

    public String tel3;

    public String email;

    @Column(name="EMAIL_CONTACT_FLAG")
    public String emailContactFlag;

    @Temporal(TemporalType.DATE)
    @Column(name="CREATE_DATE")
    public Date createDate;

    @Column(name="CREATE_USER")
    public String createUser;

    @Temporal(TemporalType.DATE)
    @Column(name="MODIFY_DATE")
    public Date modifyDate;

    @Column(name="MODIFY_USER")
    public String modifyUser;

}