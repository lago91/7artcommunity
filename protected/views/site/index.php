
 <!-- contenido -->
            <div class="row col-md-12">
                <div class="col-md-6">
                    <br><br><br><br><br><br>
                    <div>
                        <video width="110%" height="110%" controls>
                            <source src="<?php echo Yii::app()->request->baseUrl; ?>/video/mov_bbb.mp4" type="video/mp4">
                            <source src="<?php echo Yii::app()->request->baseUrl; ?>/video/mov_bbb.ogg" type="video/ogg">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>
                <div class="col-md-6">
                    <br><br>
                    <div class="col-md-10 col-md-offset-1"><h3><img src="<?php echo Yii::app()->request->baseUrl; ?>/images/logo.jpg" title="7 art community" width="50%"/>7 Art Community</h3></div>
                    <div class="col-md-8 col-md-offset-2 panel-gris">
                        <div class="col-md-8 col-md-offset-2 ">
                            <br>
                            <?php $form=$this->beginWidget('CActiveForm', array(
								'id'=>'login-form',
								'enableClientValidation'=>true,
								'clientOptions'=>array(
									'validateOnSubmit'=>true,
								),
							)); ?>

								<div class="form-group" >
									<?php echo $form->textField($model,'username',array("class"=>"form-control","placeholder"=>"Usuario")); ?>
									<?php echo $form->error($model,'username'); ?>
								</div >

								<div class="form-group">
									<?php echo $form->passwordField($model,'password',array("class"=>"form-control","placeholder"=>"Contraseña")); ?>
									<?php echo $form->error($model,'password'); ?>
								</div>

								<div class="checkbox col-md-offset-1">
									<?php echo $form->checkBox($model,'rememberMe'); ?>
									<?php echo "No cerrar sesi&oacute;n" ?>
									<?php echo $form->error($model,'rememberMe'); ?>
								</div>

								<div class="col-md-offset-2">
									<?php echo CHtml::submitButton('Iniciar Sesión',array("class"=>"btn btn-primary")); ?>
								</div>

							<?php $this->endWidget(); ?>
							<br>
                            <div class=" col-md-offset-3">
                                <p><a href="#" data-toggle="modal" data-target="#registro" >Registrarse</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" col-md-10 col-md-offset-1">
                <br>
                <p>
                    <a href="#" ><img src="<?php echo Yii::app()->request->baseUrl; ?>/images/face.jpg" title="facebook" width="40px" height="40px"/></a>
                    <a href="#" ><img src="<?php echo Yii::app()->request->baseUrl; ?>/images/twitter.jpg" title="twitter" width="40px" height="40px"/></a>
                    <a href="#" ><img src="<?php echo Yii::app()->request->baseUrl; ?>/images/plus.jpg" title="google plus" width="40px" height="40px"/></a>
                </p>
            </div>
           <br><br><br>


           <!--Ventana modal de registro-->
        <div class="modal fade" id="registro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            	<div class="modal-content">
            		<div class="modal-header">
                       	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                       	<h4 class="modal-title" id="myModalLabel">Registro</h4>
                    </div>
                    <div class="modal-body">
                       
                    </div>
                    <div class="modal-footer">	
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Registrarme</button>
                    </div>
            	</div>
            </div>  
        </div> <!-- fin modal  -->
