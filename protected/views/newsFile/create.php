<?php
/* @var $this NewsFileController */
/* @var $model newsFile */

$this->breadcrumbs=array(
	'News Files'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List newsFile', 'url'=>array('index')),
	array('label'=>'Manage newsFile', 'url'=>array('admin')),
);
?>

<h1>Create newsFile</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>