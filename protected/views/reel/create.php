<?php
/* @var $this ReelController */
/* @var $model Reel */

$this->breadcrumbs=array(
	'Reels'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Reel', 'url'=>array('index')),
	array('label'=>'Manage Reel', 'url'=>array('admin')),
);
?>

<h1>Create Reel</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>