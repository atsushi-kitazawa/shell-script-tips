import pandas as pd
import matplotlib.pyplot as plt

input_csv = pd.read_csv('./test/iostat.csv')
first_column_data = input_csv[input_csv.keys()[0]]
second_column_data = input_csv[input_csv.keys()[1]]
third_column_data = input_csv[input_csv.keys()[2]]

plt.xlabel(input_csv.keys()[0])
plt.ylabel(input_csv.keys()[1])
plt.ylabel(input_csv.keys()[2])

plt.plot(first_column_data, second_column_data, linestyle='solid', marker='o')
plt.plot(first_column_data, third_column_data, linestyle='solid', marker='o')

plt.legend([input_csv.keys()[1], input_csv.keys()[2]])

plt.savefig('test/iostat.jpg')