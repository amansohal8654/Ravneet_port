//Part 19: animate
$(document).ready(function(){
    $('.circle_156').hover(function(){
        $(".desc").animate({
            height: 'toggle'
        });
    });

//Part 16: Slideup and slidetoggle
	$(".navigation").click(function(){
		
		$(".nav_ul").slideToggle();
		
		});
		
		$(document).click(function(){
			$(".nav_ul").slideUp();
			});
			
		$(".navigation").click(function(event){
				 event.stopPropagation();
			}); 
			
				$(".nav_ul").click(function(event){
				 event.stopPropagation();
			});
	
			
//Part 18: show
//Part 19: css
//part 20:click
		$(".discription_").click(function(){
		
	
				$(".discriptionfull").show();

				
				
				$(".discription_").css("background-color","white");
				$(".discription_").css("color","#27ae60");
				
				
		
		
		});
		
		
		
		
			
		
	//part 20: mouseover 
		
		$(".about_child").mouseover(function(){
		
				$(".child").slideDown(200);
		
		});
		
			//part 20: mouseout 
		
		/*$(document).mouseout(function(){
			$(".child").slideUp(50);
			});*/
			
		$(".about_child").mouseout(function(event){
				 event.stopPropagation();
			}); 
			
		$(".child").mouseout(function(event){
				 event.stopPropagation();
			});
		
		$(".infra").mouseover(function(){
			$(".child").slideUp();
			});
		$(".contact1").mouseover(function(){
			$(".child").slideUp();
			});		
			
		$(document).click(function(){
			$(".child").slideUp();
			});
			
		$(".about_child").click(function(event){
				 event.stopPropagation();
			}); 
			
				$(".child").click(function(event){
				 event.stopPropagation();
			});
			
	
	$(".about_res").click(function(){
		
		$(".about_res_child").slideToggle();
		
		});
		
		$(document).click(function(){
			$(".about_res_child").slideUp();
			});
			
		$(".about_res").click(function(event){
				 event.stopPropagation();
			}); 
			
				$(".about_res_child").click(function(event){
				 event.stopPropagation();
			});
			
//part 21:- resizable
			$(function() {
    $( ".input0" ).resizable();
  });
	
//Part 18: fadeTo 	
//Part 20: mouseover and mouseout
	$(document).ready(function(){
		$(".circle_choose").mouseover(function(){
			$(this).fadeTo(200, 0.4);
		});
	
	$(".circle_choose").mouseout(function(){
		$(this).fadeTo(200, 1);
		});
	
	});
	
		$(".send").click(function(){
				
				$(".thankyou").slideDown(200);
				$(".con").css("display","none");
       
	});
});









