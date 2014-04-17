<?php
/* @var $this FileController */
/* @var $model file */

$this->breadcrumbs=array(
	'Files'=>array('index'),
	$model->idarchivo=>array('view','id'=>$model->idarchivo),
	'Update',
);

$this->menu=array(
	array('label'=>'List file', 'url'=>array('index')),
	array('label'=>'Create file', 'url'=>array('create')),
	array('label'=>'View file', 'url'=>array('view', 'id'=>$model->idarchivo)),
	array('label'=>'Manage file', 'url'=>array('admin')),
);
?>

<h1>Update file <?php echo $model->idarchivo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>