﻿
#include <iostream>
using namespace std;

void main()
{
	int minn = 21;
	int counterchet = 0;
	int posled = 0;
	int num = 0;
	int rows,cols,N;
	cout << "N=";
	cin >>N;
	rows = cols = N;
	

	int** arr = new int* [rows];
	int** arr2 = new int* [rows];
	int** arrC = new int* [rows];
	int** arrB = new int* [rows];
	for (int i = 0; i < rows; i++)
	{
		arr[i] = new int[cols];
	}
	for (int i = 0; i < rows; i++)
	{
		arr2[i] = new int[cols];
	}
	for (int i = 0; i < rows; i++)
	{
		arrC[i] = new int[cols];
	}
	for (int i = 0; i < rows; i++)
	{
		arrB[i] = new int[cols];
	}
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			arr2[i][j] =0;
		}
	}
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			arrB[i][j] = 0;
		}
	}
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			arr[i][j] = rand() % 20;
		}
	}
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			arrC[i][j] = rand() % 20;
		}
	}

	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			cout << arr[i][j] << "\t";
		}
		cout << endl; 
	}

	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			if (arr[i][j] < minn)
			{
				minn = arr[i][j];
			}
			if (arr[i][j]%2 == 0)
			{
				counterchet++;
			}
			if (num < arr[i][j] && arr[i][j]>=0)
			{
				posled = posled + arr[i][j];
				num = arr[i][j];
			}
		}
	}
	cout << "Naim elem = " << minn << endl;
	cout << "chet chisl = " << counterchet << endl;
	cout << "posled =" << posled<<endl;

	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; ++j) {
			for (int r = 1; r < N; ++r) {
				arr2[i][j] += arr[i][r] * arr[r][j];
			}
		}
	}
	cout <<"A*A"<<endl;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			cout << arr2[i][j] << "\t";
		}
		cout << endl;
	}

	for (int i = 0; i < rows; i++)
	{
		delete[] arr[i];
	}
	delete[] arr;
	cout << "C=" << endl;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			cout << arrC[i][j] << "\t";
		}
		cout << endl;
	}
	int t;
	for (int i = 0; i < N; ++i)
	{
		for (int j = i; j < N; ++j)
		{
			t = arrC[i][j];
			arrC[i][j] = arrC[j][i];
			arrC[j][i] = t;
		}
	}
	cout << "CT=" << endl;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			cout << arrC[i][j] << "\t";
		}
		cout << endl;
	}

	for (int i = 0; i < N; ++i)
	{
		for (int j = 0; j < N; ++j)
		{
			arrB[i][j] = arr2[i][j] - arrC[i][j];
		}
	}
	cout << "B=A*A-C=" << endl;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			cout << arrB[i][j] << "\t";
		}
		cout << endl;
	}
	for (int i = 0; i < rows; i++)
	{
		delete[] arrC[i];
	}
	delete[] arrC;
	for (int i = 0; i < rows; i++)
	{
		delete[] arrB[i];
	}
	delete[] arrB;
}