-- Package Body: hle_user_management_pkg
-- Implementation of user management procedures/functions.

CREATE OR REPLACE PACKAGE BODY hle_user_management_pkg AS

  -- Procedure to approve a pending member registration
  PROCEDURE approve_member_registration (
      p_user_id_to_approve   IN hle_users.id%TYPE,
      p_approved_by_user_id  IN hle_users.id%TYPE
  ) AS
    v_user_role_id hle_users.role_id%TYPE;
    v_approver_role_id hle_users.role_id%TYPE;
  BEGIN
    -- Basic Validation: Check if the user to approve exists and is a 'Lid'
    SELECT role_id
    INTO v_user_role_id
    FROM hle_users
    WHERE id = p_user_id_to_approve;

    -- Assuming 3 is the role_id for 'Lid' (VERIFY!)
    IF v_user_role_id != 3 THEN
       RAISE_APPLICATION_ERROR(-20001, 'User to approve must have the role ''Lid''.');
    END IF;

    -- Basic Validation: Check if the approver exists and is an Admin or Medewerker
    SELECT role_id
    INTO v_approver_role_id
    FROM hle_users
    WHERE id = p_approved_by_user_id;

    -- Assuming 1='Super Admin', 2='Medewerker' (VERIFY!)
    IF v_approver_role_id NOT IN (1, 2) THEN
       RAISE_APPLICATION_ERROR(-20002, 'Approver must have the role ''Super Admin'' or ''Medewerker''.');
    END IF;

    -- Perform the update
    UPDATE hle_users
    SET registration_approved = 1,              -- Set flag to true (approved)
        approved_by_user_id = p_approved_by_user_id -- Record who approved it
    WHERE id = p_user_id_to_approve
      AND registration_approved = 0;            -- Only update if currently not approved

    -- Optional: Add logging or further actions here

    -- Commit the transaction implicitly by APEX or add explicit COMMIT if run outside APEX
    -- COMMIT; -- Usually not needed when called from APEX

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      -- Handle case where user_id_to_approve or approved_by_user_id doesn't exist
      RAISE_APPLICATION_ERROR(-20003, 'User to approve or approving user not found.');
    WHEN OTHERS THEN
      -- Log or re-raise other unexpected errors
      RAISE; -- Re-raise the current exception
  END approve_member_registration;

  -- Add implementation for other procedures/functions here

END hle_user_management_pkg;
/