
# Introduction


* Insight of OMR
    * Phases : preprocessing, segmentation, recognition, musical notation reconstruction
* Reminder on the internship subject
    * Internship context : DMOS
    * Joint segmentation and recognition of musical symbols
* Solution for joint segmentation and recognition
    * Technology : Neural network
    * Attention model for joint segmentation and recognition
        * Recurrent model : bad recognition rate, problem of convergence
        * Cnn network with localization layer :
            * Good recognition rate
            * No ground truth data of the position of the object
* Bootstrapping
    * Setting up the music grammar : connecting preprocessing and grammar
        * Use preprocessing for detecting stave, black note heads, connected components, vertical segments
        * Use the grammar to construct a note with a note head and a vertical segment
        * Analyze one stave at a time to reduce the time of the treatment
        * Use the grammar to search an alteration where there is a note
    * First use of a classifier on well segmented symbol
        * Every connected components are send to the classifier with size constraints
        * Architecture : deep cnn
        * Goal : recognize alteration to produce data for the second classifier
    * Produce large thumbnail around an alteration
        * Multiple size and location hypothesis
            * Use the grammar to constrain the location and size of the thumbnail
            * Use random displacement to produce more data
    * Use a second classifier to locate and recognize alteration
        * Architecture:
            * First part : cnn to produce parameter of geometrical transformation
            * Second part : take the transformed image and recognize the symbol with cnn

# State of art of Optical Music Recognition

## Preprocessing

## Segmentation

## Recognition

## Music notation reconstruction

# Joint segmentation and recognition using Attention Model

## Recurrent neural network

## Deep convolution neural network

### Localization layer

# Bootstrapping

## Preprocessing

## Musical grammar

## Dataset generation

### Recognizing well segmented symbols

### Generating large thumbnails of alteration

## Joint localization and recognition using a localization layer

### Reject with a junk class

# References
