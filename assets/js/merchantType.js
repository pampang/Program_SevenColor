// edit by PAM
var typeList = [
	{
		name: "吃", subTypeList: [
			"餐厅", "蛋糕店", "烧烤", "自助餐" 
		]
	},
	{
		name: "住", subTypeList: [
			"酒店", "招待所", "公寓"
		]
	},
	{
		name: "行", subTypeList: [
			"大巴", "专车"
		]
	},
	{
		name: "游", subTypeList: [
			"动物园", "名胜古迹"
		]
	},
	{
		name: "购", subTypeList: [
			"商场", "书店", "服装店", "花店"
		]
	},
	{
		name: "娱", subTypeList: [
			"网吧", "酒吧", "游乐场"
		]
	}
]

var typeInit = function(_type, _subType){
	var type = document.getElementById(_type);
	var subType = document.getElementById(_subType);

	function addOption(target, str, obj){   /*什么是obj*/
		var option = document.createElement("OPTION");
		option.value = str;
		option.innerHTML = str;
		option.obj = obj;
		target.appendChild(option);
	}

	function typeSelect(){
		subType.options.length = 0;  //清空subType中的options。其他方法不行。
		for(var i = 0; i < typeList.length; i++){
			if(typeList[i].name == type.value){
				for(var j = 0; j < typeList[i].subTypeList.length; j++){
					addOption(subType, typeList[i].subTypeList[j], typeList[i].subTypeList);	
				}
				return;
			}
		}
	}

	for( var i = 0; i < typeList.length; i++){
		addOption(type, typeList[i].name, typeList[i]);
	}
	typeSelect();
	type.onchange = typeSelect;
}