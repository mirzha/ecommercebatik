
<?php if ($this->session->userdata('id')): ?>
    <a href="<?php echo base_url() ?>index.php/orders/history">Riwayat Pembelian</a> | 
    <a href="<?php echo base_url() ?>index.php/users/profile">Profil</a> | 
    <a href="<?php echo base_url() ?>index.php/users/logout">Keluar</a> 
<?php else: ?>

    <a href="<?php echo base_url() ?>index.php/users/register">Daftar</a>  |
    <a href="<?php echo base_url() ?>index.php/users/login">Masuk</a> 

<?php endif; ?>

