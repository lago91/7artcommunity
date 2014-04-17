<?php
/* @var $this ProfilePhotoController */
/* @var $data profilePhoto */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('idfotoPerfil')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->idfotoPerfil), array('view', 'id'=>$data->idfotoPerfil)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fotoPerfilcol')); ?>:</b>
	<?php echo CHtml::encode($data->fotoPerfilcol); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('usuario_idusuario')); ?>:</b>
	<?php echo CHtml::encode($data->usuario_idusuario); ?>
	<br />


</div>