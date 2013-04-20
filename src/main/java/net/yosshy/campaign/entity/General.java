package net.yosshy.campaign.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class General {

    @Id
    public String code1;

    @Id
    public String code2;

    public String value;

    public String label;

    @Column(name="SORT_KEY")
    public String sortKey;

    public String note;

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