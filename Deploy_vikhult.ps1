$pseudoRootManagementGroup = "vik"
az deployment mg create --template-uri https://raw.githubusercontent.com/micros01/azure-monitor-baseline-alerts/main/patterns/alz/alzArm.json --name "amba-GeneralDeployment" --location swedencentral --management-group-id $pseudoRootManagementGroup --parameters .\azure-monitor-baseline-alerts\patterns\alz\alzArm.param.json


# Modify the following variables to match your environment
$pseudoRootManagementGroup = "vik"
$platformManagementGroup = "vik-platform"
$identityManagementGroup = "vik-platform-identity"
$managementManagementGroup = "vik-platform-management"
$connectivityManagementGroup = "vik-platform-connectivity"
$LZManagementGroup="vik-landingzones"


# Run the following commands to initiate remediation
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Notification-Assets
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Alerting-ServiceHealth
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $platformManagementGroup -policyName Alerting-HybridVM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $platformManagementGroup -policyName Alerting-VM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $connectivityManagementGroup -policyName Alerting-Connectivity
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $identityManagementGroup -policyName Alerting-Identity
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $managementManagementGroup -policyName Alerting-Management
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-KeyManagement
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-LoadBalancing
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-NetworkChanges
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-RecoveryServices
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Storage
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-HybridVM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-VM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Web
