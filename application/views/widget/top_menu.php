<div class="row">
    <div class="span12">
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container" style="width: auto;">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li><a href="<?php echo base_url(); ?>">Beranda</a></li>
                            <li><a href="<?php echo base_url() ?>index.php/pages/read/about">Tentang</a></li>
                            <li><a href="<?php echo base_url() ?>index.php/products">Produk</a></li>
                            <li><a href="<?php echo base_url() ?>index.php/pages/read/how-to-shop">Cara Berbelanja</a></li>
                            <li><a href="<?php echo base_url() ?>index.php/pages/read/contact">Kontak</a></li>

                        </ul>
                        <ul class="nav  pull-right">
                            <li class="divider-vertical"></li>
                            <form class="navbar-search" method="get" action="<?php echo site_url('products'); ?>">
                                <input class="search-query  span2" placeholder="search" name="q" type="text"/>
                                <button class="btn btn-primary btn-small" type="submit">Cari</button>
                            </form>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>