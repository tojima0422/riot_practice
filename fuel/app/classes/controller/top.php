<?php

class Controller_Top extends Controller
{

	public function action_index()
	{
		$title = 'Riot Practice';
		$view  = View::forge('top/index', array(
			'title' => $title,
		));
		return $view;
	}

}
