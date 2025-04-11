-- Package Specification: hle_user_management_pkg
-- Purpose: Manages user-related operations like registration approval.

CREATE OR REPLACE PACKAGE hle_user_management_pkg AS

  -- Procedure to approve a pending member registration
  -- p_user_id_to_approve: The ID of the HLE_USERS record to approve (must be a 'Lid')
  -- p_approved_by_user_id: The ID of the HLE_USERS record (Admin/Medewerker) performing the approval
  PROCEDURE approve_member_registration (
      p_user_id_to_approve   IN hle_users.id%TYPE,
      p_approved_by_user_id  IN hle_users.id%TYPE
  );

  -- Add other procedures/functions for user management here later if needed
  -- e.g., deactivate_user, change_user_role, etc.

END hle_user_management_pkg;
/