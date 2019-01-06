<div id="header" class="clearfix">
    <div class="info">

        <h6>Hallo Admin, Selamat Datang di menu Dashboard Batik Korner</h6>
    </div>
    <div class="menu">
            <ul>
				<li><a href="<?php echo site_url('/');?>" target="_blank">View Site</a></li>
                <li><a href="<?php echo site_url('admin/users/profile');?>">Profil (<?php echo $this->session->userdata('full_name')?>)</a></li>
                <li><a href="<?php echo site_url('users/logout') ?>">Keluar</a></li>
            </ul>
        </div> 
</div>         <!--end #header-->

<div id="breadcrumbs" class="clearfix">
    <?php echo set_breadcrumb() ?>
</div>        <!--end #breadcrumbs-->
