<?php
class CategoryUrlRule extends CBaseUrlRule
{
	public function createUrl($manager,$route,$params,$ampersand)
	{
		if ($route==='controller/action')
		{
			return $params['categoryname'];
		}
		elseif ($route==='controller/action')
		{
			return $params['categoryname'].'/'.$params['subcategoryname'];
		}
		else
		{
			return false;  // this rule does not apply
		}
	}

	public function parseUrl($manager,$request,$pathInfo,$rawPathInfo)
	{
		if (preg_match('%^(\w+)(/(\w+))?$%', $pathInfo, $matches))
		{
			$category=$matches[1];
			if(!empty($matches[2])
				$subcategory=$matches[2];

			// Check in db
			Yii:app()->db-> //...

			if()
			{ // There is a match from db check above
				if(isset($subcategory))
				{
					$_GET['subcategory']=$subcategory;
					return 'controller/sottocategoria';
				}
				else
				{
					$_GET['category']=$category;
					return 'controller/categoria';
				}
			}
		}
	}
}