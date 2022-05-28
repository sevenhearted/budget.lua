return {

rent = 1000 ,
groceries = { multiplier = 2 , -- biweekly
	meat = 50 ,
	eggs =
		14 -- two weeks
		* ( 8 -- price
		/ ( 12 -- dozen
		/ 3 )) , -- eaten per day
	milk = 8 ,
	bread = 90,
	miscellaneous = 20 } ,
gas =
	14 -- gallons
	* 2 -- refills per month
	* 5.8 , -- price per gallon
oilChange =
	70 -- price 
	/ 6 , -- month interval
carWash =
	2 -- times per month
	* 16 , -- price
phone = 200 / 12

}
