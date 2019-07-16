﻿# Bulk update Teams displaynames

# Author Maarten Camps


$teams = Get-Team

foreach ($team in $teams) {

    $displayname = $team.displayname.Replace("_"," ")

    $groupid = $team.GroupId

    Set-Team -GroupId $groupid -DisplayName $displayname}