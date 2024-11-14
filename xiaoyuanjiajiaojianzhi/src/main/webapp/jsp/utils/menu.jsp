<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"家教管理",
                        "menuJump":"列表",
                        "tableName":"jiajiao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"家教留言管理",
                        "menuJump":"列表",
                        "tableName":"jiajiaoLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"家教收藏管理",
                        "menuJump":"列表",
                        "tableName":"jiajiaoCollection"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"家教订单管理",
                        "menuJump":"列表",
                        "tableName":"jiajiaoOrder"
                    }
                ],
                "menu":"家教管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"家教需求管理",
                        "menuJump":"列表",
                        "tableName":"xuqiu"
                    }
                ],
                "menu":"家教需求管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"新闻类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"家教类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryXuqiu"
			        }
			
			    ],
			    "menu":"基础数据管理"
			}   
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"轮播图管理",
			            "menuJump":"列表",
			            "tableName":"config"
			        }
			    ],
			    "menu":"轮播图管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"新闻管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                    ],
	                    "menu":"家教管理",
	                    "menuJump":"列表",
	                    "tableName":"jiajiao"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"家教留言管理",
	                    "menuJump":"列表",
	                    "tableName":"jiajiaoLiuyan"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"家教收藏管理",
	                    "menuJump":"列表",
	                    "tableName":"jiajiaoCollection"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"家教订单管理",
	                    "menuJump":"列表",
	                    "tableName":"jiajiaoOrder"
	                }
	            ],
	            "menu":"家教管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"家教需求管理",
	                    "menuJump":"列表",
	                    "tableName":"xuqiu"
	                }
	            ],
	            "menu":"家教需求管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"新闻管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"新闻管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
	,
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"家教订单管理",
	                    "menuJump":"列表",
	                    "tableName":"jiajiaoOrder"
	                }
					,
					{
					    "buttons":[
					        "查看",
					        "修改"
					    ],
					    "menu":"家教留言管理",
					    "menuJump":"列表",
					    "tableName":"jiajiaoLiuyan"
					}
	            ],
	            "menu":"家教订单\留言管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"家教需求管理",
	                    "menuJump":"列表",
	                    "tableName":"xuqiu"
	                }
	            ],
	            "menu":"家教需求管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"新闻管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"新闻管理"
	        }
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"家教",
	    "tableName":"jiajiao"
	}
];

var hasMessage = '';
