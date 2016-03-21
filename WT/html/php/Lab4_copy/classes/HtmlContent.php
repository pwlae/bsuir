<?php

    class HtmlContent
    {
        private $html, $content;
        private $start, $end;
        private $start_index, $end_index, $length;

        public function HtmlContent($html, $start, $end, $search)
        {
            $this->html = $html;
            $this->start = $start;
            $this->end = $end;
            $this->start_index = stripos($html, $start);
            $this->end_index = $search($html, $end, $this->start_index) + strlen($end);
            $this->length = $this->end_index - $this->start_index;
            $this->content = substr($html, $this->start_index, $this->length);
        }

        public function GetContent()
        {
            return $this->content;
        }

        public function ReplaceContent($placeholder)
        {
            return substr_replace($this->html, $placeholder, $this->start_index, $this->length);
        }
    }

?>