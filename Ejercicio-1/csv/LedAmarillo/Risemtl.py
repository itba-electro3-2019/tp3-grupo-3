import numpy as np
import matplotlib.pyplot as plt
import pandas as pd



df = pd.read_csv('00_01.csv')
#Vin = np.asarray(df['1'])*0.97-0.23
Vout = np.asarray(df['2'])*1.1
t= np.asarray(df['x-axis'])
#plt.plot(t,Vin,'r',label = 'Clock' )
plt.plot(t,Vout,'g',label = 'Transición 00_01' )
plt.legend()
plt.ylabel("Tensión [V]")
plt.xlabel("Tiempo [s]")
plt.grid()
plt.show()

df = pd.read_csv('01_00.csv')
#Vin = np.asarray(df['1'])*0.97-0.23
Vout = np.asarray(df['2'])*1.1
t= np.asarray(df['x-axis'])
#plt.plot(t,Vin,'r',label = 'Clock' )
plt.plot(t,Vout,'g',label = 'Transición 01_00' )
plt.legend()
plt.ylabel("Tensión [V]")
plt.xlabel("Tiempo [s]")
plt.grid()
plt.show()

df = pd.read_csv('10_11.csv')
Vin = np.asarray(df['1'])*0.97-0.23
Vout = np.asarray(df['2'])*1.1
t= np.asarray(df['x-axis'])
plt.plot(t,Vin,'r',label = 'Clock' )
plt.plot(t,Vout,'g',label = 'Transición 10_11' )
plt.legend()
plt.ylabel("Tensión [V]")
plt.xlabel("Tiempo [s]")
plt.grid()
plt.show()

df = pd.read_csv('11_10.csv')
Vin = np.asarray(df['1'])*0.97-0.23
Vout = np.asarray(df['2'])*1.1
t= np.asarray(df['x-axis'])
plt.plot(t,Vin,'r',label = 'Clock' )
plt.plot(t,Vout,'g',label = 'Transición 11_10' )
plt.legend()
plt.ylabel("Tensión [V]")
plt.xlabel("Tiempo [s]")
plt.grid()
plt.show()