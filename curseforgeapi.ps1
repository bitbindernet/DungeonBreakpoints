$uploadEndpoint="/api/projects/{projectId}/upload-file";

function New-FileUploadMetaData
{
    param(
        [string]$changelog,
        [paramter()][ValidateSet("text", "html", "markdown")]$changelogType = "text",
        [string]$displayName,
        [int]$parentFileID,
        [int]$gameVersions,
        [parameter()][ValidateSet("alpha", "beta", "release")]$releaseType,
        $relations
    );
}

function New-ProjectRelationsObject
{
    param(
        [System.Collections.Hashtable]$projects
    );
    if(-not $pojects)
    {
        write-Warning "submit a powershell hastable array with slug and type:"
        write-warning "`r`n@(`r`n`t@{`r`n`t`t'slug'='mantle' // Slug of related plugin.;`r`n`t`t'type'=@('embeddedLibrary', 'incompatible', 'optionalDependency', 'requiredDependency', 'tool') // Choose one`r`n`t}`r`n)"
    }
    return $projects | ConvertTo-json -Depth 3
}

$FileUploadMetaData = @"
{
    changelog: "A string describing changes.", // Can be HTML or markdown if changelogType is set.
    changelogType: ["text", "html", "markdown"], // Optional: defaults to text
    displayName: "Foo", // Optional: A friendly display name used on the site if provided.
    parentFileID: 42, // Optional: The parent file of this file.
    gameVersions: [157, 158], // A list of supported game versions, see the Game Versions API for details. Not supported if parentFileID is provided.
    releaseType: "alpha", // One of "alpha", "beta", "release".
    relations: {
        projects: [{
            slug: "mantle", // Slug of related plugin.
            type: ["embeddedLibrary", "incompatible", "optionalDependency", "requiredDependency", "tool"] // Choose one
        }]
    } // Optional: An array of project relations by slug and type of dependency for inclusion in your project.
}
"@