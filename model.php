<?php 
    public function search($tag, $dstart, $dend, $iduser) {
        $data = array();
        $sql = "select tentag,timestart,timeend,timeendreal,status,sum(totaltime) as totaltimereal, sum(totalestimate) as totalestimate,datestart from managetags as tag, managetime as time where(time.idtag = tag.id and status =3) and (idtag like '%$tag%' and datestart BETWEEN '$dstart' and '$dend') and  time.iduser = $iduser Group by datestart order by datestart ";
        if (!$kq = $this->db->query($sql))
            die($this->db->error);
        foreach ($kq as $row)
            $data[] = $row;
        return $data;
    }
?>