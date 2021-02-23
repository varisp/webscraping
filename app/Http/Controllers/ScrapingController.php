<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleClient;


class ScrapingController extends Controller
{
    public function csharpe()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/c%23');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1> C# statistics</h1>";
           echo "Total Questions Asked in [c#]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/c%23?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/c%23?tab=Votes');
        $crawler->filter('#question-summary-7074 h3')->each(function ($node) {
           echo 'Heighst voted question in c# <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-7074 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function php()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/php');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>PHP statistics</h1>";
           echo "Total Questions Asked in [PHP]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/php?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/php?tab=Votes');
        $crawler->filter('#question-summary-3737139 h3')->each(function ($node) {
           echo 'Heighst voted question in PHP <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-3737139 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function java()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/java');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>java statistics</h1>";
           echo "Total Questions Asked in [java]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/java?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/java?tab=Votes');
        $crawler->filter('#question-summary-11227809 h3')->each(function ($node) {
           echo 'Heighst voted question in java <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-11227809 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function javascript()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/javascript');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>javascript statistics</h1>";
           echo "Total Questions Asked in [javascript]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/javascript?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/javascript?tab=Votes');
        $crawler->filter('#question-summary-5767325 h3')->each(function ($node) {
           echo 'Heighst voted question in javascript <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-5767325 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function jquery()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/jquery');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>jquery statistics</h1>";
           echo "Total Questions Asked in [jquery]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/jquery?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/jquery?tab=Votes');
        $crawler->filter('#question-summary-178325 h3')->each(function ($node) {
           echo 'Heighst voted question in jquery <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-178325 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function angular()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/angular');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>angular statistics</h1>";
           echo "Total Questions Asked in [angular]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/angular?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/angular?tab=Votes');
        $crawler->filter('#question-summary-38892771 h3')->each(function ($node) {
           echo 'Heighst voted question in angular <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-38892771 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function nodejs()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/node.js');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>node.js statistics</h1>";
           echo "Total Questions Asked in [node.js]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/node.js?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/node.js?tab=Votes');
        $crawler->filter('#question-summary-22343224 h3')->each(function ($node) {
           echo 'Heighst voted question in node.js <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-22343224 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
    public function css()
    {
        $goutteClient = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 60,
            'verify' => false
        ));
        $goutteClient->setClient($guzzleClient);
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/css');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
           $data = $node->text();
           $data = chop($data, " questions");
           echo "<h1>css statistics</h1>";
           echo "Total Questions Asked in [node.js]: <br>";
           echo $data." questions <br>";
        });
        $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/css?tab=Unanswered');
        $crawler->filter('.fs-body3')->each(function ($node) {
           
            $data = $node->text();
            $data = chop($data, " questions with no upvoted or accepted answers ");
            
            echo "Questions with no upvoted or accepted answers: <br>";
            echo $data." are questions with no upvoted or accepted answers <br>";
         });
         $crawler = $goutteClient->request('GET', 'https://stackoverflow.com/questions/tagged/css?tab=Votes');
        $crawler->filter('#question-summary-826782 h3')->each(function ($node) {
           echo 'Heighst voted question in css <br>';
            $data = $node->text();        
            echo $data.'<br>';            
         });
         $crawler->filter('#question-summary-826782 .high-scored-post')->each(function ($node) {
           
             echo "total votes for this question: <br>";
             echo $node->text();     
          });
    }
}
