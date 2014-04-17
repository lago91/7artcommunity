<?php
/* @var $this FileController */
/* @var $model file */

$this->breadcrumbs=array(
	'Files'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List file', 'url'=>array('index')),
	array('label'=>'Manage file', 'url'=>array('admin')),
);
?>

<h1>Create file</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>