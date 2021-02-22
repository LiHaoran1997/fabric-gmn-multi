{\rtf1\ansi\ansicpg936\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 function dkrm()\{\
        DOCKER_IMAGE_IDS=$(docker images | grep "dev\\|none\\|test-vp\\|peer[0-9]-" | awk '\{print $3\}')\
        echo\
        if [ -z "$DOCKER_IMAGE_IDS" -o "$DOCKER_IMAGE_IDS" = " " ]; then\
                echo "========== No images available for deletion ==========="\
        else\
                docker rmi -f $DOCKER_IMAGE_IDS\
        fi\
        echo\
\}\
dkrm}