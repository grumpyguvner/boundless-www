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
        
        <script src="<?=$this->getThemePath()?>/js/ajax.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/jquery.lightbox-0.5.pack.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/script.js" type="text/javascript"></script>
	<script src="<?=$this->getThemePath()?>/js/main.js" type="text/javascript"></script>
		<!--[if lt IE 10]>
			<script type="text/javascript" src="js/PIE.js"></script>
		<![endif]-->
       
             
       <!--script src="<?=$this->getThemePath()?>/css/jquery.parallax.css"></script>
       <script src="<?=$this->getThemePath()?>/js/jquery.event.frame.js"></script>
       <script src="<?=$this->getThemePath()?>/js/jquery.parallax.js"></script>
       <script>
       jQuery(document).ready(function(){
       jQuery('#parallax .parallax-layer')
       .parallax({
       mouseport: jQuery('#parallax')
                });
       });
  </script-->
       
    </head>
    <body style="color: grey;">
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
					<a class="rounded nav-active" href="../index.php#take-me-home"><span>Take Me Home</span></a>  
				</li>  
				<li>  
					<a class="rounded" href="../index.php#about"><span>About</span></a>  
				</li>  
				<li>  
					<a class="rounded" href="../index.php#services"><span>Services</span></a>    
				</li>  
				<li>  
					<a class="rounded" href="../index.php#showcase"><span>Showcase</span></a>    
				</li>
				<li>  
					<a class="rounded" href="../index.php#our-team"><span>Our Team</span></a>    
				</li>   
				<!--li>  
					<a href="#news" class="rounded"><span>News</span></a>  
				</li> -->
				<li>  
					<a class="rounded" href="../index.php#contact-us"><span>Contact Us</span></a>  
				</li>  
			</ul> 
    	</div>       
		<div id="scrollable">
			<div id="take-me-home" class="section-top-portafolio first-section-portafolio">
				<div class="container">
					
					<div class="clear"></div> 
					<div id="gallery-nav"></div>            
				</div> 
			</div>
			<div id="portfolio" class="section portafolio">
				<div class="container">
					<div class="arrow 01">
						<img alt="arrow_07" src="<?=$this->getThemePath()?>/images/arrow/arrow_07.png">
					</div> 
					<div class="subheader-portfolio">
						<?php
                                                $a = new Area('subheader');
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
                                    
                                    <div class="showcase-sub-container-portafolio">
                                            <?php
                                            $a = new Area('showcase-sub-container-portafolio');
                                            $a->display($c);
                                            ?>
                                        <div class="showcase-sub-container-portafolio-text">
                                        <?php
                                            $a = new Area('showcase-sub-container-portafolio-text');
                                            $a->display($c);
                                            ?>
                                    </div>
                                   </div>
                                    
            		<div class="clear"></div>
                        <div align="center">
                            <form action="../index.php#showcase" target="">
                            <input style="background: grey; color: #ffffff;" type="submit" value="Back To Showcase">
                        </form>
                        </div>
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