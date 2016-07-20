<?php 
    function report() {
        if (isset($_SESSION['login_id'])) {
            $iduser = $_SESSION['login_id'];
            $tag = $this->time->tag($iduser);
            $managetime = $this->time->managetime($iduser);
        }
        require_once 'View/layout-default/trangchu.phtml';
    }

    function searchreport() {
        if (isset($_SESSION['login_id'])) {
            if (isset($_POST['submit'])) {

                $tag = $_POST['tag'];
                $dstart = $_POST['start'];
                $dend = $_POST['end'];
                $iduser = $_SESSION['login_id'];
                $search = $this->time->search($tag, $dstart, $dend, $iduser);
                $_SESSION['search'] = $search;
                header('location:' . BASE_URL . "index/report");
            }
        }
        header('location:' . BASE_URL . "index/report");
    }

?>