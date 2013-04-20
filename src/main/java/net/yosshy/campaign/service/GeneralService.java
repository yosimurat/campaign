package net.yosshy.campaign.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import net.yosshy.campaign.entity.General;

public class GeneralService extends AbstractService<General> {

	public static final String PREFECTURE_LIST = "00001";
	public static final String GOODS_LIST = "00002";
	public static final String AGE_LIST = "00003";
	public static final String SEX_LIST = "00004";


    public General findById(String code1,String code2) {
        return select().id(code1, code2).getSingleResult();
    }

	public Map<String, String> getOptions(String code1) {
		List<General> list = select().where("CODE1 = ?", code1).orderBy("CODE2").getResultList();

		Map<String, String> options = new LinkedHashMap<String, String>();
		for(General entity : list){
			options.put(entity.value, entity.label);
		}
		return options;
	}
}