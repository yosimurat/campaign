package net.yosshy.campaign.service;

import net.yosshy.campaign.entity.CampaignEntry;

public class CampaignEntryService extends AbstractService<CampaignEntry> {

    public CampaignEntry findById(java.math.BigDecimal seq) {
        return select().id(seq).getSingleResult();
    }



}