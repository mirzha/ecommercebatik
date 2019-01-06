<div class="row">
    <div class="span4 logo">
        <a href="<?php echo base_url(); ?>">
            <img src="<?php echo base_url() ?>public/front/img/batik.png"/>
        </a>
    </div>
    <div class="span8">
        <div class="row">
            <div class="span1">&nbsp;</div>

            <div class="span2">
                <a href="<?php echo site_url('carts'); ?>"><h4>Shopping cart (<?php echo $this->cart->total_items() ?>)</h4></a> 
                <a href="<?php echo site_url('carts'); ?>"><?php echo number_format($this->cart->total())?> Rupiah </a>
            </div>

            
        </div>
        <br/>
        <div class="row">
            <div class="link pull-right">
                <?php $this->load->view('widget/user_menu'); ?>
            </div>
        </div>
    </div>
</div>