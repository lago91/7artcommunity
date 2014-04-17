<?php
/* @var $this ProfilePhotoController */
/* @var $model profilePhoto */

$this->breadcrumbs=array(
	'Profile Photos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List profilePhoto', 'url'=>array('index')),
	array('label'=>'Manage profilePhoto', 'url'=>array('admin')),
);
?>

<h1>Create profilePhoto</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>