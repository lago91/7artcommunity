<?php
/* @var $this NewsFileController */
/* @var $model newsFile */

$this->breadcrumbs=array(
	'News Files'=>array('index'),
	$model->idnoticiaArchivo=>array('view','id'=>$model->idnoticiaArchivo),
	'Update',
);

$this->menu=array(
	array('label'=>'List newsFile', 'url'=>array('index')),
	array('label'=>'Create newsFile', 'url'=>array('create')),
	array('label'=>'View newsFile', 'url'=>array('view', 'id'=>$model->idnoticiaArchivo)),
	array('label'=>'Manage newsFile', 'url'=>array('admin')),
);
?>

<h1>Update newsFile <?php echo $model->idnoticiaArchivo; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>