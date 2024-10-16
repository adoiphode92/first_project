echo "Starting build process..."

cd %WORKSPACE%

:: Create a virtual environment
C:\Users\adoip\AppData\Local\Programs\Python\Python312\python.exe -m venv myenv

:: Activate the virtual environment
call myenv\Scripts\activate

:: Install pytest
pip install pytest
pip install pytest-html

:: Run the tests
pytest -v test_file1.py > test_output.txt

:: Generate HTML report
pytest --html=report.html

echo "Build process completed."

:: Optional: List directory contents and output to a file
dir > E:\prooutput.txt
