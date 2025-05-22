<a name="readme-top"></a>
<!--
*** DNASCAN: DNA N-gram analysis framework
*** John Stephen Malamon, Ph.D.
-->

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project
 

The DNA Sequence Contamination Analyzer (DNASCAN) is a novel N-gram frequency analysis framework for the supervised classification of DNA sequences and is available as an R software package or library. Documentation and vignettes with detailed code demonstrations are available at https://github.com/jmal0403/DNASCAN/wiki. All experiments performed herein can be reproduced. In summary, DNASCAN provides an extensible methodology and efficient analysis toolkit to accurately detect contaminants, estimate impurity rates, and locate precise breakpoints.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With

R version 3.4.2


<!-- GETTING STARTED -->
## Getting Started

install.packages("devtools")

library("devtools")

install.packages("remotes")

library("remotes")

install.packages("githubinstall")

library("githubinstall")


remotes::install_git("https://github.com/jmal0403/DNASCAN", dependencies=TRUE, force=TRUE)

library(DNASCAN)

### Prerequisites

testthat, knitr, rmarkdown, biomartr, BiocManager, seqinr, fastmap, caret, stringr, dplyr, e1071, pROC, randomForest

### Installation

library(jmal0403/DNASCAN)

<!-- USAGE EXAMPLES -->

## Usage

Please see wiki. 

See the [open issues](https://github.com/jmal0403/DNASCAN/issues) for a code demonstation.


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.


<!-- CONTACT -->
## Contact

Author - John Stephen Malamon, Ph.D.

Project Link: [https://github.com/jmal0403/DNASCAN](https://github.com/jmal0403/DNASCAN)

<p align="right">(<a href="#readme-top">back to top</a>)</p>




