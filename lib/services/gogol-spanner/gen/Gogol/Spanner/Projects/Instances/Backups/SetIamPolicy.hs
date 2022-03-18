{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spanner.Projects.Instances.Backups.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires @spanner.databases.setIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.setIamPolicy@ permission on resource.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.backups.setIamPolicy@.
module Gogol.Spanner.Projects.Instances.Backups.SetIamPolicy
  ( -- * Resource
    SpannerProjectsInstancesBackupsSetIamPolicyResource,

    -- ** Constructing a Request
    newSpannerProjectsInstancesBackupsSetIamPolicy,
    SpannerProjectsInstancesBackupsSetIamPolicy,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spanner.Types

-- | A resource alias for @spanner.projects.instances.backups.setIamPolicy@ method which the
-- 'SpannerProjectsInstancesBackupsSetIamPolicy' request conforms to.
type SpannerProjectsInstancesBackupsSetIamPolicyResource =
  "v1"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires @spanner.databases.setIamPolicy@ permission on resource. For backups, authorization requires @spanner.backups.setIamPolicy@ permission on resource.
--
-- /See:/ 'newSpannerProjectsInstancesBackupsSetIamPolicy' smart constructor.
data SpannerProjectsInstancesBackupsSetIamPolicy = SpannerProjectsInstancesBackupsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SetIamPolicyRequest,
    -- | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for databases resources.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpannerProjectsInstancesBackupsSetIamPolicy' with the minimum fields required to make a request.
newSpannerProjectsInstancesBackupsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  SetIamPolicyRequest ->
  -- |  REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is @projects\/\/instances\/@ for instance resources and @projects\/\/instances\/\/databases\/@ for databases resources. See 'resource'.
  Core.Text ->
  SpannerProjectsInstancesBackupsSetIamPolicy
newSpannerProjectsInstancesBackupsSetIamPolicy payload resource =
  SpannerProjectsInstancesBackupsSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SpannerProjectsInstancesBackupsSetIamPolicy
  where
  type
    Rs SpannerProjectsInstancesBackupsSetIamPolicy =
      Policy
  type
    Scopes
      SpannerProjectsInstancesBackupsSetIamPolicy =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/spanner.admin"
       ]
  requestClient
    SpannerProjectsInstancesBackupsSetIamPolicy {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        spannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SpannerProjectsInstancesBackupsSetIamPolicyResource
            )
            Core.mempty