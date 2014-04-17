<?php
/* @var $this FileController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Files',
);

$this->menu=array(
	array('label'=>'Create file', 'url'=>array('create')),
	array('label'=>'Manage file', 'url'=>array('admin')),
);
?>

<h1>Files</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
