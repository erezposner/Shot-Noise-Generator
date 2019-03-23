
# A Practical True Shot Noise Generator
This repository generates true shot noise while taking into consideration image sensor Full-well and resolution. 
It is described in Medium article 
https://medium.com/@erezposner/how-to-create-awesome-noise-that-is-actually-real-cf178c9f0ae0?sk=8d74c4bce579b06b498a655a528d4dfd
![FDFE](noisy_image.png)

## Getting Started
These instructions will explain how to use the Practical True Shot Noise Generator project.

### Prerequisites
* MATLAB >=2015a


## Project Structure

* ```photoelectrons2graylevel.m``` - function to convert number of photoelectrons into pixel gray level value
* ```graylevel2photoelectrons.m``` - function to convert pixel gray level value into number of photoelectrons  
* ```custome_poissrnd.m``` - a Possion process random number generator based on  Donald Knuth - https://en.wikipedia.org/wiki/Poisson_distribution#Generating_Poisson-distributed_random_variables

    
## Running the sample code


Now you should ```main.m``` to make sure that the project works correctly.

The test takes a clean image as input and produce half clean half noisy image.

## Contributing

Contributions are always welcome! Please read the [contribution guidelines](contributing.md) first.
## Authors

* Erez P.  (erezposner@gmail.com)

