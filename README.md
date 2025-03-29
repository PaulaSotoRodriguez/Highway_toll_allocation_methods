# Highway toll allocation methods

This repository provides the code for several toll allocation methods for the highway toll allocation problem presented in [2].
It also includes the datasets used in the practical applications in [1] and [2]. 

# Contents

Each data file contained in this repository is explained below.

- [SES_method.R](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/R/SES_method.R): Segments Equal Sharing (SES) method introduced in [2].
- [ExES_method.R](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/R/ExES_method.R): Exits Equal Sharing (ExES) method introduced in [2].
- [EnES_method.R](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/R/EnES_method.R): Entrances Equal Sharing (EnES) method introduced in [2]. 
- [SPS_method.R](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/R/SPS_method.R): Segments Proportional Sharing (SPS) method introduced in [1].
- [SCS_method.R](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/R/SCS_method.R): Segments Compensated Sharing (SCS) method introduced in [1].

- [rates_AP68_2007.csv](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/Datasets/rates_AP68_2007): official rates in euros for light vehicles applied in the Spanish AP68 highway during 2007.
- [number_vehicles_AP68_2007.csv](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/Datasets/number_vehicles_AP68_2007): number of vehicles using each segment of AP68 highway in the year 2007.
- [toll_matrix_AP68_highway.csv](https://github.com/PaulaSotoRodriguez/Highway_toll_allocation_methods/blob/d3ea318c84df234dfcda2e917fd4dc4642b1f29b/Datasets/toll_matrix_AP68): toll matrix for the segments of the AP68 highway, calculated as $t_{ij} = Rate_{ij} \times Numberofvehicles_{ij}$.


## References

[1] Soto-Rodríguez P, Casas-Méndez B and Saavedra-Nieves A (2025) Highway toll allocation problem revisited: new methods and characterizations. *Manuscript under preparation*. 

[2] Wu H, van den Brink R and Estévez-Fernández A (2024) Highway toll allocation. Transportation Research Part B: Methodological 180:102889. https://doi.org/10.1016/j.trb.2024.102889.
