package {

	import flash.display.MovieClip;
	import flash.events.MouseEvent;


	public class Game extends MovieClip {

		var isItPlayerOnesTurn: Boolean = true;
		var isThereWinner: Boolean = false;
		var isNoOneWinner: Boolean = false;

		public function Game() {


			os.gotoAndStop(1);
			xs.gotoAndStop(1);

			gotoAndStop(1);


			b1.buttonMode = true;
			b2.buttonMode = true;
			b3.buttonMode = true;
			b4.buttonMode = true;
			b5.buttonMode = true;
			b6.buttonMode = true;
			b7.buttonMode = true;
			b8.buttonMode = true;
			b9.buttonMode = true;



			b1.stop();
			b2.stop();
			b3.stop();
			b4.stop();
			b5.stop();
			b6.stop();
			b7.stop();
			b8.stop();
			b9.stop();

			b1.addEventListener(MouseEvent.CLICK, handleClick);
			b2.addEventListener(MouseEvent.CLICK, handleClick);
			b3.addEventListener(MouseEvent.CLICK, handleClick);
			b4.addEventListener(MouseEvent.CLICK, handleClick);
			b5.addEventListener(MouseEvent.CLICK, handleClick);
			b6.addEventListener(MouseEvent.CLICK, handleClick);
			b7.addEventListener(MouseEvent.CLICK, handleClick);
			b8.addEventListener(MouseEvent.CLICK, handleClick);
			b9.addEventListener(MouseEvent.CLICK, handleClick);
			
			

		}

		function handleClick(e: MouseEvent): void {


			if (e.target.currentFrame != 1) return;


			if (isItPlayerOnesTurn) {
				e.target.gotoAndStop(2);
				xs.gotoAndStop(2);
				os.gotoAndStop(2);
			} else {
				e.target.gotoAndStop(3);
				xs.gotoAndStop(1);
				os.gotoAndStop(1);
			}
			
			



			isItPlayerOnesTurn = !isItPlayerOnesTurn;
			
			// Who won?
			
			// X's win
			
			     if (b1.currentFrame == 2 && b2.currentFrame == 2 && b3.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;}
			else if (b4.currentFrame == 2 && b5.currentFrame == 2 && b6.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;} //horizontal
			else if (b7.currentFrame == 2 && b8.currentFrame == 2 && b9.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;}
			
			else if (b1.currentFrame == 2 && b4.currentFrame == 2 && b7.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;}
			else if (b2.currentFrame == 2 && b5.currentFrame == 2 && b8.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;} //vertical
			else if (b3.currentFrame == 2 && b6.currentFrame == 2 && b9.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;}
			
			else if (b1.currentFrame == 2 && b5.currentFrame == 2 && b9.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;} //diagonal
			else if (b7.currentFrame == 2 && b5.currentFrame == 2 && b3.currentFrame == 2){ gotoAndStop(2); isThereWinner = true;}
			
			
			// O's win
			
			     if (b1.currentFrame == 3 && b2.currentFrame == 3 && b3.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;}
			else if (b4.currentFrame == 3 && b5.currentFrame == 3 && b6.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;} //horizontal
			else if (b7.currentFrame == 3 && b8.currentFrame == 3 && b9.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;}
			
			else if (b1.currentFrame == 3 && b4.currentFrame == 3 && b7.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;}
			else if (b2.currentFrame == 3 && b5.currentFrame == 3 && b8.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;} //vertical
			else if (b3.currentFrame == 3 && b6.currentFrame == 3 && b9.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;}
			
			else if (b1.currentFrame == 3 && b5.currentFrame == 3 && b9.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;} //diagram
			else if (b7.currentFrame == 3 && b5.currentFrame == 3 && b3.currentFrame == 3){ gotoAndStop(3); isThereWinner = true;}
		
			// Draw
			
			     if (b1.currentFrame == 2 || b1.currentFrame == 3 && isThereWinner == false){
					 if (b2.currentFrame == 2 || b2.currentFrame == 3 && isThereWinner == false){
						 if (b3.currentFrame == 2 || b3.currentFrame == 3 && isThereWinner == false){
							 if (b4.currentFrame == 2 || b4.currentFrame == 3 && isThereWinner == false){
								 if (b5.currentFrame == 2 || b5.currentFrame == 3 && isThereWinner == false){
									 if (b6.currentFrame == 2 || b6.currentFrame == 3 && isThereWinner == false){
										 if (b7.currentFrame == 2 || b7.currentFrame == 3 && isThereWinner == false){
											 if (b8.currentFrame == 2 || b8.currentFrame == 3 && isThereWinner == false){
												 if (b9.currentFrame == 2 || b9.currentFrame == 3 && isThereWinner == false){isNoOneWinner = true;}
								}
							   }
							  }
							 }
							}
						   }
						  }
						 }
			
					 
			if(isNoOneWinner == true) gotoAndStop(4); 
			
				
			
	
			


			// toggle visibilty of UI elements
			// TODO: look for a winner...

		}
		
		





	}

}