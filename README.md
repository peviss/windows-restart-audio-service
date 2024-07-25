# windows-restart-audio-service


To run the PowerShell script at startup, you can create a scheduled task in Windows. Here’s how to do it:


## 1. Save the file 
with a .ps1 extension, for example, StartWindowsAudio.ps1.
## 2. Open Task Scheduler:

Press Windows + R, type taskschd.msc, and press Enter.
## 3. Create a new task:

In the Task Scheduler window, click on "Create Task" in the right-hand pane.
## 4. General settings:

In the "General" tab, give your task a name, e.g., "Start Windows Audio".
Select "Run whether user is logged on or not".
Check "Run with highest privileges".
## 5. Trigger settings:

Go to the "Triggers" tab and click "New".
In the "New Trigger" window, select "At startup" from the "Begin the task" dropdown.
Click "OK".
## 6. Action settings:

Go to the "Actions" tab and click "New".
In the "New Action" window, select "Start a program".
In the "Program/script" field, type powershell.exe.
In the "Add arguments (optional)" field, type the following:
powershell
Copiar código
-ExecutionPolicy Bypass -File "C:\path\to\StartWindowsAudio.ps1"
Make sure to replace C:\path\to\StartWindowsAudio.ps1 with the actual path to your PowerShell script.
Click "OK".
## 7. Conditions settings:

(Optional) Go to the "Conditions" tab and uncheck "Start the task only if the computer is on AC power" if you want the task to run on battery power as well.
## 8. Finish:

Click "OK" to create the task.
You may be prompted to enter your user credentials.
Your PowerShell script should now run at startup and start the Windows Audio service if it is not already running.