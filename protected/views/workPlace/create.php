<?php
/* @var $this WorkPlaceController */
/* @var $model workPlace */

$this->breadcrumbs=array(
	'Work Places'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List workPlace', 'url'=>array('index')),
	array('label'=>'Manage workPlace', 'url'=>array('admin')),
);
?>

<h1>Create workPlace</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>