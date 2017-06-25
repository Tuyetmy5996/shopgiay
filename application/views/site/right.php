
			                  <!-- The Support -->
	     <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Hỗ trợ trực tuyến </h2>
			    </div>
			    <div class="content-box">
			        
			         <div class='support'>
                              <?php foreach ($supports as $row):?>
                              <strong><?php echo $row->name?> </strong>				
                              <a rel="nofollow" href="ymsgr:sendIM?<?php echo $row->yahoo?>">
                    		    <img  src="http://opi.yahoo.com/online?u=<?php echo $row->yahoo?>&amp;m=g&amp;t=2">
                    	      </a>
                    	      
                    	      <p>
                    	         <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/phone.png"> <?php echo $row->phone?>
                    	      </p>
                    	      
                    		  <p>
                    			<a rel="nofollow" href="mailto:<?php echo $row->gmail?>">
                    			    <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/email.png"> Email: <?php echo substr($row->gmail, 0,12)?>...
                    		    </a>
                    		  </p>
                    		  <p>
                    			<a rel="nofollow" href="skype:<?php echo $row->skype?>">
                    			     <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/skype.png"> Skype: <?php echo $row->skype?>
                    			</a>
                    		</p>	
                    		<?php endforeach;?>
                    </div>	
			    </div>
          </div>
       <!-- End Support -->
       
         <!-- The news -->
	          <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Bài viết mới </h2>
			    </div>
			    <div class="content-box">
			       <ul class="news">
			            <?php foreach ($news_list as $row):?>
			            <li>
			                <a href="" title="<?php echo $row->title?> ">
			                <img src="<?php echo base_url('upload/news/'.$row->image_link)?>" style="width:50px" alt="<?php echo $row->title?> ">
			                <?php echo $row->title?>                        
			                </a>
	                     </li>
	                     <?php endforeach;?>
	                 </ul>
	    </div>
   </div>		<!-- End news -->
		
      

					  