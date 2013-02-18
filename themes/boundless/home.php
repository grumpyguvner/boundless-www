<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml"><head>
        <?php Loader::element('header_required'); ?>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
        <meta content="Template by Dry Themes" name="description">
        <meta content="HTML, CSS, JavaScript, PHP" name="keywords">
        <meta content="DryThemes" name="author">
        <link href="<?=$this->getThemePath()?>favicon.png" rel="shortcut icon">

        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Armata">
        <link type="text/css" rel="stylesheet" media="screen" href="<?=$this->getThemePath()?>/css/fonts/stylesheet.css">
	<link type="text/css" rel="stylesheet" href="<?=$this->getThemePath()?>/css/reset.css">
        <link type="text/css" rel="stylesheet" href="<?=$this->getThemePath()?>/css/site.css">
	<link href="<?=$this->getThemePath()?>/css/jquery.lightbox-0.5.css" type="text/css" rel="stylesheet">
		
        <script src="<?=$this->getThemePath()?>/js/code4net.slideshow.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/pop-up-mask.js" type="text/javascript"></script>
        <script src="<?=$this->getThemePath()?>/js/on.scroll.js" type="text/javascript"></script>
        <script src="<?=$this->getThemePath()?>/js/ajax.js" type="text/javascript"></script>
        <script src="<?=$this->getThemePath()?>/js/ajax-contact.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/jquery.lightbox-0.5.pack.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/script.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/main.js" type="text/javascript"></script>
		<!--[if lt IE 10]>
			<script type="text/javascript" src="js/PIE.js"></script>
		<![endif]-->
       
             
       <!--script src="<?/*=$this->getThemePath()*/?>/css/jquery.parallax.css"></script>
       <script src="<?/*=$this->getThemePath()*/?>/js/jquery.event.frame.js"></script>
       <script src="<?/*=$this->getThemePath()*/?>/js/jquery.parallax.js"></script>
       <script>
       jQuery(document).ready(function(){
       jQuery('#parallax .parallax-layer')
       .parallax({
       mouseport: jQuery('#parallax')
                });
       });
  </script-->
       
    </head>
    <body>
		<div id="mask" style="width: 1423px; height: 7050px;"></div>
		<table class="doc-loader" style="display: none;">
            <tbody><tr>
                <td>
                    <img alt="loading..." src="<?=$this->getThemePath()?>/images/doc_loader/loading.gif">
                </td>
            </tr>
        </tbody></table> 
		<div class="navigation">
                                            
                    <img alt="navigate_img" src="<?=$this->getThemePath()?>/images/navigate.png">
			<ul>  
				<li>  
					<a class="rounded nav-active" href="#take-me-home"><span>Take Me Home</span></a>  
				</li>  
				<li>  
					<a class="rounded" href="#about"><span>About</span></a>  
				</li>  
				<li>  
					<a class="rounded" href="#services"><span>Services</span></a>    
				</li>  
				<li>  
					<a class="rounded" href="#showcase"><span>Showcase</span></a>    
				</li>
				<li>  
					<a class="rounded" href="#our-team"><span>Our Team</span></a>    
				</li>   
<!--				<li>  
					<a href="#news" class="rounded"><span>News</span></a>  
				</li> -->
				<li>  
					<a class="rounded" href="#contact-us"><span>Contact Us</span></a>  
				</li>  
			</ul>
    	</div>       
		<div id="scrollable">
			<div id="take-me-home" class="section first-section">
				<div class="container">
					<div class="header-wrapper">
						<?php
                                                $a = new Area('header-wrapper');
                                                $a->display($c);
                                                ?>
					</div>      
					<div class="galery-wrapper">
						<?php
                                                $a = new Area('galery-wrapper');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="clear"></div> 
					<div id="gallery-nav"></div>            
				</div> 
			</div>
			<div id="about" class="section about">
				<div class="container">
					<div class="arrow 01">
						<img alt="arrow_01" src="<?=$this->getThemePath()?>/images/arrow/arrow_01.png">
					</div> 
					<div class="subheader">
						<?php
                                                $a = new Area('subheader1');
                                                $a->display($c);
                                                ?>
					</div>         
					<div class="column-455 m-right-70 m-top-50">
						<?php
                                                $a = new Area('column-455 m-right-70 m-top-50');
                                                $a->display($c);
                                                ?>
                	</div>
					<div class="column-455  m-top-50">
                                            <?php
                                            $a = new Area('column-455  m-top-50');
                                            $a->display($c);
                                            ?>
                	</div>
            		<div class="clear"></div>
				</div>                
            </div>
			<div id="services" class="section services">
				<div class="container">
					<div class="arrow 02">
						<img alt="arrow_02" src="<?=$this->getThemePath()?>/images/arrow/arrow_02.png">
					</div> 
					<div class="subheader">
						<?php
                                                $a = new Area('subheader2');
                                                $a->display($c);
                                                ?>
					</div> 
					<div class="column-640 m-top-50">
						<?php
                                                $a = new Area('column-640  m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="column-300 m-left-40 m-top-50">
						<?php
                                                $a = new Area('column-300 m-left-40 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="clear"></div>
					<div class="column-455 m-right-70 m-top-70">
						<?php
                                                $a = new Area('column-455 m-right-70 m-top-70');
                                                $a->display($c);
                                                ?>
					</div>
                                       <!--div class="parallax-viewport" id="parallax"-->                                       
					<div class="column-455 m-top-70">
                                             
						<ul class="services-list">
                                                    
							<li style="min-height: 98px;">
                                                            <!--div class="parallax-layer" style="height:330px; top:0px; "-->
                                                            
								<?php
                                                                $a = new Area('column-455 m-right-70 m-top-70 list1');
                                                                $a->display($c);
                                                                ?>
                                                            
                                                            <!--/div-->
							</li>
                                                    
                                                    
							<li style="min-height: 98px;">
                                                            <!--div class="parallax-layer" style="height:220px; top: 110px; "-->
                                                            
								<?php
                                                                $a = new Area('column-455 m-right-70 m-top-70 list2');
                                                                $a->display($c);
                                                                ?>
                                                            
                                                             <!--/div-->
							</li>
                                                  
                                                    
							<li style="min-height: 98px;">
                                                            <!--div class="parallax-layer" style="height:110px; top: 220px; "-->
                                                            
								<?php
                                                                $a = new Area('column-455 m-right-70 m-top-70 list3');
                                                                $a->display($c);
                                                                ?>
                                                            
                                                            <!--/div-->
							</li>
                                                    
                                                    
							<li style="min-height: 98px;">
                                                            <!--div class="parallax-layer" style="height:0px; top: 330px; "-->
                                                            
								<?php
                                                                $a = new Area('column-455 m-right-70 m-top-70 list4');
                                                                $a->display($c);
                                                                ?>
                                                            
                                                           <!--/div-->
							</li>
                                                    
						</ul>
                                           
                                            
					</div>
                                       
                                <!--/div-->
                                
				</div>
			</div>
			<div id="showcase" class="section showcase">
                <div class="container">
					<div class="arrow 03">
						<img alt="arrow_03" src="<?=$this->getThemePath()?>/images/arrow/arrow_03.png">
					</div>
					<div class="subheader">
						<?php
                                                $a = new Area('subheader3');
                                                $a->display($c);
                                                ?>
					</div> 
					<div class="column-640 m-top-50">
						<?php
                                                $a = new Area('column-640 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="column-300 m-left-40 m-top-50">
						<?php
                                                $a = new Area('column-300_2 m-left-40 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="clear"></div>
					<div class="showcase-sub-container">
						<div class="showcase-portfolio-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 1');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 2');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame nomargin rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 3');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 4');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 5');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame nomargin rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 6');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 7');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 8');
                                                        $a->display($c);
                                                        ?>
						</div>
						<div class="pic-frame nomargin rounded">
							<?php
                                                        $a = new Area('pic-frame rounded 9');
                                                        $a->display($c);
                                                        ?>
						</div>
					</div>	
				</div>       
            </div>
			<div id="our-team" class="section our-team">
                <div class="container">
					<div class="arrow 04">
						<img alt="arrow_04" src="<?=$this->getThemePath()?>/images/arrow/arrow_04.png">
					</div>
					<div class="subheader">
						<?php
                                                $a = new Area('subheader4');
                                                $a->display($c);
                                                ?>
					</div> 
					<div class="column-640 m-top-50">
						<?php
                                                $a = new Area('column-640_4 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="column-300 m-left-40 m-top-50">
						<?php
                                                $a = new Area('column-300_4 m-left-40 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="clear"></div>
					<div class="column-300 m-top-55 m-right-40">
						<?php
                                                $a = new Area('column-300_4 m-left-55 m-top-40');
                                                $a->display($c);
                                                ?>
				   </div>
					<div class="column-300 m-top-55 m-right-40">
                                                <?php
                                                $a = new Area('column-300_4_2 m-top-55 m-right-40');
                                                $a->display($c);
                                                ?>
                	</div>
					<div class="column-300 m-top-55">
                                                <?php
                                                $a = new Area('column-300_4 m-top-55');
                                                $a->display($c);
                                                ?>
                	</div>
				</div>       
            </div>

			<div id="contact-us" class="section contact-us">
				<div class="container">
					<div class="arrow 06">
						<img alt="arrow_06" src="<?=$this->getThemePath()?>/images/arrow/arrow_06.png">
					</div>
					<div class="subheader">
						<?php
                                                $a = new Area('subheader6');
                                                $a->display($c);
                                                ?>
					</div> 
					<div class="column-340  m-top-50 m-right-115 contact-form contact-us-x">
						<?php
                                                $a = new Area('column-340_6 m-top-50 m-right-115 contact-form contact-us-x');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="column-525 m-top-50">
						<?php
                                                $a = new Area('column-525_6 m-top-50');
                                                $a->display($c);
                                                ?>
					</div>
					<div class="clear"></div>
				</div>
            </div>
			<div class="footer">
				<div class="footer_logo">
					<?php
                                        $a = new Area('footer_logo');
                                        $a->display($c);
                                        ?>
				</div>
                                        <?php
                                        $a = new Area('m-bottom-40');
                                        $a->display($c);
                                        ?>
            </div>                            
		</div> 
    <?php  Loader::element('footer_required'); ?>
</body></html>