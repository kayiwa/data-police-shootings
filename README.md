# Clone this repo first.

This repo expects you to have Docker and Docker-Compose to get it working.

You will need to edit the `setup_dirs.sh` to match the path that will store your elasticsearch data

Run the `generate_certs.sh` script and feel free to use a test.demo.example.org or an equivalent type name.

You can now run `docker-compose up`

If you encounter no errors. Stop the containers by running CTRL+C

You can then run `docker-compose up -d`

You can find the port of your kibana container by running `docker ps`

running `docker-machine ls` will give you the IP of the container.

the URI of your kibana would be http://{IPaddress}:{port}



[This data is published under an [Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) license](https://creativecommons.org/licenses/by-nc-sa/4.0/)]

# About this story
The Washington Post is [compiling a database of every fatal shooting](https://www.washingtonpost.com/graphics/national/police-shootings/) in the United States by a police officer in the line of duty in 2015.

The Post is tracking more than a dozen details about each killing — including the race of the deceased, the circumstances of the shooting, and whether the person was armed — by culling local news reports and monitoring independent databases, such as Killed by Police and Fatal Encounters. In some cases, The Post conducted additional reporting.

The Post is documenting only shootings in which a police officer, while on duty, shot and killed a civilian — circumstances that most closely parallel the 2014 killing of Michael Brown in Ferguson, Mo. The Post is not tracking deaths of people in custody, fatal shootings by off-duty officers, or deaths in which police gunfire did not kill the individual.

The FBI and the Centers for Disease Control and Prevention log fatal shootings by police, but officials acknowledge that their data is incomplete.

The [Post database](https://www.washingtonpost.com/graphics/national/police-shootings/) will be updated regularly as new fatal shootings are reported and as new facts emerge about individual cases. The Post is seeking assistance in making the database as comprehensive as possible. To provide information about fatal police shootings in 2015, send us an e-mail at policeshootingsfeedback@washpost.com. The Post is also interested in obtaining photos of the deceased and original videos of fatal encounters with police.

# Credits:

Research and Reporting: Julie Tate, Jennifer Jenkins, Kimberly Kindy, Wesley Lowery, Keith Alexander and Steven Rich

Production and Presentation: Ted Mellnik, John Muyskens, Kennedy Elliot and Laris Karklis

Photo: Linda Epstein and Wendy Galietta

Video: Whitney Leaming and Divya Verma
