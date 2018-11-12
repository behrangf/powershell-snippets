# Get all mailboxes in Exchange Online
$Mailboxes = Get-Mailbox -ResultSize unlimited
# Turn off confirmation
$ConfirmPreference = 'None'

# Iterate over each mailbox
foreach($Mailbox in $Mailboxes)
{
        # Try to run the fix against the current $Mailbox
        $FixAutoMapping = Get-MailboxPermission $Mailbox.Identity | where {$_.AccessRights -eq "FullAccess" -and $_.IsInherited -eq $false}
	      Foreach ($item in $FixAutoMapping) {Remove-MailboxPermission -Identity $Mailbox.Identity -User $item.User -AccessRights:FullAccess -Confirm:$false}
	      Foreach ($item in $FixAutoMapping) {Add-MailboxPermission -Identity $Mailbox.Identity -User $item.User -AccessRights:FullAccess -AutoMapping $false -Confirm:$false}
}
