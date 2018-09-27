FxScreenShake(5,5,30);

oGameController.alarm[0] = 60;
instance_deactivate_object(oInputController)	
instance_deactivate_object(oInputControllerSwipe)	
instance_destroy(oPlayer);
//instance_destroy();