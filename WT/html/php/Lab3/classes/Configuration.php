<?php

    class Configuration
    {
        public $main_color = "#EDF8FF";
        public $copyright_color = "#0400B0";

        public function Configuration($filename)
        {
            $configuration = explode("\r\n", file_get_contents($filename));
            for ($i = 0; $i < count($configuration); $i++) {
                $property = explode(" = ", $configuration[$i]);
                if ($property[0] === "main_color")
                    $this->main_color = $property[1];
                if ($property[0] === "copyright_color")
                    $this->copyright_color = $property[1];
            }
        }
    }

?>