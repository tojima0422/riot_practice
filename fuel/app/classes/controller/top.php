<?php

class Controller_Top extends Controller
{

	public function action_index()
	{
		$title = 'Riot Practice';
		$routes = [
			'Home',
			'PracticeA',
			'PracticeB',
			'PracticeC',
		];
		$routes = json_encode($routes);
		$view  = View::forge('top/index', array(
			'title'  => $title,
			'routes' => $routes,
		));
		return $view;
	}

}
