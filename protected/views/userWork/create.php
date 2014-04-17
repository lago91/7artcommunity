<?php
/* @var $this UserWorkController */
/* @var $model userWork */

$this->breadcrumbs=array(
	'User Works'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List userWork', 'url'=>array('index')),
	array('label'=>'Manage userWork', 'url'=>array('admin')),
);
?>

<h1>Create userWork</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>