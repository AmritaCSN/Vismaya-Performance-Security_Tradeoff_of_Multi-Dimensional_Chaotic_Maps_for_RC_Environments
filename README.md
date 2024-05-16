# Vismaya-Performance-Security_Tradeoff_of_Multi-Dimensional_Chaotic_Maps_for_Resource-Constrained_Environments
This repository has the codes used for the implementation of the project "Performance-Security Tradeoff of Multi-Dimensional Chaotic Maps for Resource-Constrained Environment
".
## Project Overview
This project aims to identify the optimal encryption scheme for resource-constrained environments by leveraging multi-dimensional chaotic maps-1D, 2D, 3D, and 4D chaotic maps to enhance encryption key generation and ensure secure data transmission. 
## Pre-requisites
1. MATLAB R2023a
2. Visual Studio Code
3. Python 3.12
## Repository Overview

This repository is divided into 2 sections:

1. **/src** folder: Contains 4 folders `/encryption_cipher`, `/multi-dimensional_chaotic_maps` `/image_dataset`, and `/security_analyses`.
2. **proposed_methodology**: Contains the pictorial representation of the proposed work.

/src folder contains the below sub-folders:
-------------------------------------

### 1. `/encryption_cipher`

- **`Chacha20_stream_cipher.py`**: Python code for the image encryption and decryption scheme using chacha20 stream cipher.
#### Running Chacha20_stream_cipher.py
To execute the Chacha20_stream_cipher.py code, run the following command in terminal:

```python Chacha20_stream_cipher.py```


### 2. `/image_dataset`
This folder contains different images of different pixel sizes. Also contains `image_details` (.txt file) with details about all the images used for implementation and analysis.

### 3. `/multiple-dimensional_chaotic_maps`
This folder contains the codes for key generation using multi dimensional chaotic maps (1D,2D,3D & 4D)
- **`gauss_map.m`**: MATLAB code for the 1D gaussian chaotic map.
- **`lscm_map.m`**: MATLAB code for the 2D-Logistic sine coupling chaotic Map.
- **`hénon_map.m`**: MATLAB code for the 3D hénon chaotic map.
- **`rossler_map.m`**: MATLAB code for the 4D rossler chaotic map.
#### Running MATLAB code
```
1. Open MATLAB.
2. Navigate to the /multiple-dimensional_chaotic_maps directory.
3. Open the code for the desired map.
4. Run the code in MATLAB.
```
### 3. `/image_dataset`
This folder contains different images of different pixel sizes. Also contains `image_details` (.txt file) with details about all the images used for implementation and analysis.

### 4. `/security_analyses`

This folder contains code for the implementation of security analysis in Matlab.

- **Security Analysis Codes in Matlab**
    - `KeySensitivity_analysis.m`
    - `Histogram_Analysis.m`
    - `Entropy_Analysis.m`
    - `Differential_Cryptanalysis.m`
    - `Contrast_Analysis.m`
    - `PSNR_Analysis.m`
    - `Correlation_Analysis.m`

To execute the each security analysis code in MATLAB, follow the steps mentioned in the sub-section **Running MATLAB code**.

- **Pseudo Code for Time & Memory analysis** 
    - `Time_Analysis.txt`
    - `Memory_Analysis.txt`

## Block Diagram of Proposed Scheme

This is block representation of the proposed scheme.

<img width="436" alt="image" src="https://github.com/vismaya74/Performance-Security_Tradeoff_of_Multi-Dimensional_Chaotic_Maps_for_RC_Environments/assets/115627302/6b8bf9a6-5a28-4282-aa83-d1e5f60092bf">


   
