<?php
/* @var $this WorkStationController */
/* @var $model workStation */

$this->breadcrumbs=array(
	'Work Stations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List workStation', 'url'=>array('index')),
	array('label'=>'Manage workStation', 'url'=>array('admin')),
);
?>

<h1>Create workStation</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>