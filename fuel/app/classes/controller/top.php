<?php

class Controller_Top extends Controller
{

  public function action_index()
  {
    $title = 'Riot Practice';
    $routes = array(
      '#' => 'Home', 
      '#practice_a' => 'PracticeA', 
      '#practice_b' => 'PracticeB',
      '#practice_c' => 'PracticeC',
    );
    $view  = View::forge('top/index', array(
      'title'  => $title,
      'routes' => $routes,
    ));
    return $view;
  }

}
