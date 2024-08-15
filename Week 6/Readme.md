<details>
  <summary> PD Basics with Picorv32a design </summary>
To invoke openlane and perform the flow we have to get into this directory 
  
    cd Desktop/work/tools/openlane_working_dir/openlane
    docker
    ./flow.tcl -interactive
    package require openlane 0.9

![image](https://github.com/user-attachments/assets/09bf153c-cd1d-4ba4-bcd1-51b08a51e750)
<details>
<summary> Synthesis </summary>

    run_synthesis
![image](https://github.com/user-attachments/assets/f4bd5398-e6d8-4491-96ea-157813f2302e)
![image](https://github.com/user-attachments/assets/6f976ca0-ff94-4abc-b394-e663418886ea)

Calculate flop ratio
![image](https://github.com/user-attachments/assets/b6462e71-f2f3-47d8-bdf1-3df62c8ce631)

Number of flipflops(dfxtp) = 1613

flop ratio = 1613/14876 = 0.1084

% of dff's = 0.1084 * 100 = 10.84%

</details>

    run_floorplan
  ![image](https://github.com/user-attachments/assets/55f963ee-ec4a-4979-93dc-fdb8deb53fe0)
  ![image](https://github.com/user-attachments/assets/ca1a62e8-1b01-4bf3-ae5a-7abede1dc441)
To view below floorplan we have to use this path and command 

    ** magic -T <path to .tech file> lef read <path to .lef file> def read <name of .def file> & **
    magic -T ../../../../../../../pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.floorplan.def
    
  ![image](https://github.com/user-attachments/assets/fce13e63-dae3-49df-a89f-0a4e944d5888)
  Equal spacing between cells
  ![image](https://github.com/user-attachments/assets/35785e41-24f8-4c6a-b532-a248356048d1)
  
  The selected cell is buffer as we can see in tkcon terminal
  ![image](https://github.com/user-attachments/assets/b98a7c61-ee6e-469f-a3f5-a7cfa4a6c3bc)

    run_placement
![image](https://github.com/user-attachments/assets/74443e4b-187a-491a-b982-413d4b90d3c9)
![image](https://github.com/user-attachments/assets/4d99a71c-678e-4ba6-a185-4fd9731e4b44)


    ** magic -T <path to .tech file> lef read <path to .lef file> def read <name of .def file> & **
    magic -T ../../../../../../../pdks/sky130A/libs.tech/magic/sky130A.tech lef read ../../tmp/merged.lef def read picorv32a.placement.def
![image](https://github.com/user-attachments/assets/18dd0ddb-b5cf-441e-b1c4-f84e33b026d3)









    

    
</details>
