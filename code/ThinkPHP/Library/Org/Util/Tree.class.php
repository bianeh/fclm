<?php
namespace Org\Util;

class Tree {
	
	public static $treeList = array();

	public static function create($data, $pid)
	{
		foreach($data as $key => $value) {
			if($value["pid"] == $pid) {
				self::$treeList[] = $value;
				unset($data[$key]);
				self::create($data, $value["id"]);
			}
		}
		
		return self::$treeList;
	}
	
	public static function createIndent($data, $pid)
	{
		foreach($data as $key => $value) {
			if($value["pid"] == $pid) {
				self::$treeList[] = $value;
				unset($data[$key]);
				self::create($data, $value["id"]);
			}
		}
		
		foreach(self::$treeList as $key => $value) {
			switch($value["level"]) {
				case 0: self::$treeList[$key]["name"] = $value["name"];
							break;
				case 1: self::$treeList[$key]["name"] = " |-".$value["name"];
							break;
				case 2: self::$treeList[$key]["name"] = "  ||-".$value["name"];
							break;
				case 3: self::$treeList[$key]["name"] = "   |||-".$value["name"];
							break;
				default: self::$treeList[$key]["name"] = "    ||.-".$value["name"];
						break;
			}
		}
		
		return self::$treeList;
	}
}