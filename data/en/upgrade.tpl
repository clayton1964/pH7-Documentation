<h2>Update/Upgrade Software</h2>

<h3>Backup!</h3>
<p>Before every update/upgrade, don't forget to backup your whole website and your database.</p>

<h3>Extract the upgrade archive</h3>
<p>
    Extract the latest version of the <a href="https://sourceforge.net/projects/ph7socialdating/files/latest/download" target="_blank" rel="nofollow noopener" title="Download It!">software zip archive</a> using a file archiver software such <a href="http://sourceforge.net/projects/sevenzip/">7-Zip</a>.<br />
    <span class="warning">
        Delete "<strong>_protected/framework/Security/Version.class.php</strong>" and  "<strong>_install/</strong>" from the archive before overwriting all files to your server</span> ("Version.class.php" doesn't have to be overwritten!).
</p>

<h3>Upload files to your server</h3>
<p>Using an FTP client such <a href="http://filezilla-project.org" title="FileZilla Client">FileZilla</a>.<br />
You must transfer ALL files and folders (even empty folders and files). Don't delete any files. just over write them.</p>

<h3>File Permissions</h3>
<p>If your OS server is a Unix-like, you must check if the file permissions (CHMOD) are correctly configured.<br />
In numerical values ​​that must be <em>755</em> for all folders and <em>644</em> for all files.<br />
Warning, the following folders must have <em>777</em> permissions:</p>
<pre>~/YOUR-PUBLIC-FOLDER/data/system/modules/*</pre>
<pre>~/YOUR-PUBLIC-FOLDER/_repository/module/*</pre>
<pre>~/YOUR-PUBLIC-FOLDER/_repository/upgrade/*</pre>
<pre>~/YOUR-PROTECTED-FOLDER/app/configs/*</pre>
<pre>~/YOUR-PROTECTED-FOLDER/data/cache/*</pre>
<pre>~/YOUR-PROTECTED-FOLDER/data/backup/*</pre>
<pre>~/YOUR-PROTECTED-FOLDER/data/tmp/*</pre>
<pre>~/YOUR-PROTECTED-FOLDER/data/log/*</pre>
<p><span class="warning">Warning, these permissions don't allow editing and creating files in the File Management admin module.</span><br />
If you want to allow it, you need to set in numerical values <em>777</em> for all folders and <em>666</em> for all files.</p>

<h3>Run the upgrade wizard</h3>
<p>You must login as administrator and go to the following URL and follow the instructions carefully: <em>http://YOUR-DOMAIN.COM/<strong>asset/file/Upgrade</strong></em></p>

<p class="warning">If more than one upgrade is available on the "Upgrade" page, please run from the oldest version to the newest one (all of them have to be executed).</p>

<figure>
    <a href="{site_url}static/img/upgrade-page-ph7cms.png" target="_blank">
        <img src="{site_url}static/img/upgrade-page-ph7cms.png"
            alt="Upgrade page; Order of upgrade patch to be executed"
            title="Upgrade page; Order of upgrade patch to be executed"
        />
    </a>
    <figcaption>
        <em>Upgrade page; Order of upgrade patch to be executed</em>
    </figcaption>
</figure>


<h3>Put back your modifications (optional)</h3>
<p>Put back any modifications you did from your latest backup since they could have been erase from the update.</p>
