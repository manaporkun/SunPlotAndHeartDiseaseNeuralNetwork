# SunPlotNeuralNetwork

<b>Part A</b>

<b>Work description</b>

Artificial neural network with an elementary structure will be used during the work. The structure is a neuron 
with linear activation function (purelin(n)=purelin(Wp+b)=Wp+b ). Neuron task is to forecast the k-th value of 
time series a(k) using n previous values a(k-1), a(k-2), ..., a(k-n). Model that is implemented using a premise
that a dependency between a forecasted value and previous values can be described using a linear function is 
called autoregressive linear model of the n-th order

<b>Part C</b>

<b>Work description</b>

1. Choose target attribute in dataset. 
2. If necessary, perform rearrangements on target attribute values (e.g. wide range of numerical 
attribute values change by smaller number of (categorical) intervals (e.g. range of forecasted values 
1..2000 can be changed by 1..5 intervals)).
3. Build a model for prediction or classification of your dataset.
4. Apply 10-fold cross validation method to know averaged prediction performance of the developed 
classifier. Declare it in the report
5. Apply any of the measures (examples are given next) in order to increase the averaged 
performance by 5 per cents and repeat step 4:
a. Rearrange dataset
b. Change learning rate
c. Change activation function
d. Change ANN structure
