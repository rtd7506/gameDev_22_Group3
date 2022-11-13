// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddMoney(_x,_y,_amt){
	MONEY += _amt+10*obj_manager.stage
	obj_stat_manager.m_moneyCollected += _amt+10*obj_manager.stage
}