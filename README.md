# R_helper README

The R scripts in this repository are for assisting with setting up the proper environment of tools for running Maypop Labs R projects. For most use cases, `setup_environment.R` is the only script you need, and you will only need to run it once. During the execution of `setup_environment.R` the process may pause multiple time to ask if you want to update other packages. In general, you will want to update them all anytime you are asked. You may also repeatedly receive a system popup window asking you to approve a process. It may initially appear minimized, or behind other windows, so look for it if progress of `setup_environment.R` mysteriously stalls.


## Troubleshooting

If your system does not already have **RTools** installed, you might need to install **RTools** before you run `setup_environment.R`.  

1. First, find the **RTools** version that is appropriate for your version of R. You can download **RTools** [here](https://cran.r-project.org/bin/windows/Rtools/).

2. Once the **RTools** installer has downloaded, you will need to temporarily disable **Windows Defender**. I know this sounds like I'm asking you to install malware, but just trust me. Once the process has finished, you will turn **Windows Defender** back on. To disable **Windows Defender**:

	- Open **Windows Security** > **Virus & threat protection** > **Manage settings** > Temporarily turn off **Real-time protection.**

3. Right-click on the downloaded **RTools** installer file and click **Run as administrator**

4. Use all the **RTools** Default settings.

5. Once installation has finished, turn on **Windows Defender Real-time protection.**
