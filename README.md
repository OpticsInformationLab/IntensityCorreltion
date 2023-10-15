# IntensityCorreltion
The recovery of the wavefront from spatially fluctuating fields using the two point intensity correlation, i.e., fourth order correlation.

The repository displays the associated code for the research paper:  [Kumar Singh, R., & Sharma M, A. (2014). Recovery of complex valued objects from two-point intensity correlation measurement. Applied Physics Letters, 104(11).](https://pubs.aip.org/aip/apl/article-abstract/104/11/111108/25333/Recovery-of-complex-valued-objects-from-two-point?redirectedFrom=fulltext)

If you have any question, please contact the author: krakeshsingh.phy@iitbhu.ac.in 

Lab site : [Laboratory of Information Photonics & Optical Metrology](https://www.informationphotonics.com/)

## Abstract : 
We propose and experimentally demonstrate a technique for the recovery of the wavefront from spatially fluctuating fields using the two point intensity correlation, i.e., fourth order correlation. Assuming spatial ergodicity and Gaussian statistics for the speckle field, we connect the fourth order correlation to the modulus of the corresponding second order correlation. The idea is to retrieve the complex coherence function and consequently the wavefront using the off-axis holography. Application of this technique is demonstrated in the reconstruction of complex field of the object lying behind a weak scatterer. Experimental results of recovery of the complex field of phase objects “vortices” with three values of topological charges are presented.

## File Lists:
- fourth_order_correlation.m ( MATLAB code for implementing two point intensity correlation)

## Experimental Setup:

<img width="717" alt="Screenshot 2023-10-14 at 4 30 08 PM" src="https://github.com/adityacmandal/IntensityCorreltion/assets/95050827/63fb8787-c845-4381-8c88-e2f6960dad39">

Collimated illumination from a He-Ne laser enters a Mach-Zehnder arrangement formed by beam splitters BS1 and BS4 and mirrors M1 and M3.
Inside this interferometer there is another Mach-Zehnder formed by beam splitters BS2 and BS3 and mirrors M1 and M2, which forms a hologram on ground glass plate GG1. An off-axis tilted plane wave coming from BS1 and ground glass plate GG2 is mixed with light scattered from GG1. With the help of lens L2 a Fourier transform of the resultant field is recorded on the CCD camera.v
