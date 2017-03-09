REM @echo off
SET BUILD_COUNTER=%1
echo ##teamcity[buildNumber '3.2.2-%1']

REM Do zero-padding
SET PADDED=%BUILD_COUNTER%
IF 1%PADDED% LSS 100 SET PADDED=0%PADDED%
IF 1%PADDED% LSS 1000 SET PADDED=0%PADDED%
IF 1%PADDED% LSS 10000 SET PADDED=0%PADDED%
IF 1%PADDED% LSS 100000 SET PADDED=0%PADDED%

echo ##teamcity[setParameter name='NugetPrereleaseTag' Value='%PADDED%']
