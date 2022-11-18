#include <iostream>
#include <iomanip>

using namespace std;

class Board
{
public:
    int** board;
    int size;

    Board(int size)
    {
        this->size = size;

        board = new int*[size];

        for (int i = 0 ; i < size ; i++)
        {
            board[i] = new int[size];
        }

        // Initilize with zeros
        for (int i = 0; i < size; i++)
		{
			for (int j = 0; j < size; j++)
			{
				board[i][j] = 0;
			}
		}
    }

    bool isValid(int m, int n)
	{
		bool valid = true;

		// Check row
		for (int j = 0; j < size; j++)
		{
			if (board[m][j] != 0)
				return false;
				
		}
		// Check column
		for (int i = 0; i < size; i++)
		{
			if (board[i][n] != 0)
				return false;
		}
		// Check upper left diagonal
		int i = m - 1;
		int j = n - 1;
		while (i >= 0 && j >= 0)
		{
			if (board[i][j] != 0)
			{
				return false;
			}
			i--;
			j--;
		}
		// Check bottom right diagonal
		i = m + 1;
		j = n + 1;
		while (i < size && j < size)
		{
			if (board[i][j] != 0)
			{
				return false;
			}
			i++;
			j++;
		}
		// Check upper right diagonal
		i = m - 1;
		j = n + 1;
		while (i >= 0 && j < size)
		{
			if (board[i][j] != 0)
			{
				return false;
			}
			i--;
			j++;
		}
		// Check bottom left diagonal
		i = m + 1;
		j = n - 1;
		while (i < size && j >= 0)
		{
			if (board[i][j] != 0)
			{
				return false;
			}
			i++;
			j--;
		}
		return valid;
	}

    void place(int id, int i, int j)
	{
		board[i][j] = id;
	}

    void print()
	{
		for (int i = 0; i < size; i++)
		{
			for (int j = 0; j < size; j++)
			{
				cout << setw(2) << left << board[i][j] << " ";
			}
			cout << endl;
		}
	}
};

// Backtracking algorithm to solve puzzle
bool nQueen(Board& board, int id)
{
	if (id > board.size)
		return true;
	else
	{
		bool isPlaced = false;

        // Forward propagate
		for (int i = 0; i < board.size; i++)
		{
			for (int j = 0; j < board.size; j++)
			{
				if (board.isValid(i, j))
				{
					board.place(id, i, j);
					isPlaced = true;

					bool flag = nQueen(board, id + 1);
					
                    // Clean indexed positions
					if (flag)
					{
						return true;
					}
					else
					{
						board.board[i][j] = 0;
						isPlaced = false;
					}
				}

			}
		}

        // Backtrack
		if (!isPlaced)
		{
			return false;
		}

		return true;
	}
}

int main()
{
    int n;

    std::cout << "NQueen Puzzle" << std::endl;
    std::cout << "Enter number of queen : " ;
    std::cin >> n;

    Board board(n);

    std::cout << "\nEmpty placement board : " << std::endl;
	board.print();

	std::cout << "\nQueen placement board : " << std::endl;
    nQueen(board, 1);
    board.print();

    std::cin.get();
    std::cin.get();

	return 0;
}