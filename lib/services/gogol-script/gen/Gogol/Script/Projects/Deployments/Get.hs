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
-- Module      : Gogol.Script.Projects.Deployments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.get@.
module Gogol.Script.Projects.Deployments.Get
  ( -- * Resource
    ScriptProjectsDeploymentsGetResource,

    -- ** Constructing a Request
    newScriptProjectsDeploymentsGet,
    ScriptProjectsDeploymentsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Script.Types

-- | A resource alias for @script.projects.deployments.get@ method which the
-- 'ScriptProjectsDeploymentsGet' request conforms to.
type ScriptProjectsDeploymentsGetResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "scriptId" Core.Text
    Core.:> "deployments"
    Core.:> Core.Capture "deploymentId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Deployment

-- | Gets a deployment of an Apps Script project.
--
-- /See:/ 'newScriptProjectsDeploymentsGet' smart constructor.
data ScriptProjectsDeploymentsGet = ScriptProjectsDeploymentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The deployment ID.
    deploymentId :: Core.Text,
    -- | The script project\'s Drive ID.
    scriptId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScriptProjectsDeploymentsGet' with the minimum fields required to make a request.
newScriptProjectsDeploymentsGet ::
  -- |  The deployment ID. See 'deploymentId'.
  Core.Text ->
  -- |  The script project\'s Drive ID. See 'scriptId'.
  Core.Text ->
  ScriptProjectsDeploymentsGet
newScriptProjectsDeploymentsGet deploymentId scriptId =
  ScriptProjectsDeploymentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      deploymentId = deploymentId,
      scriptId = scriptId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ScriptProjectsDeploymentsGet
  where
  type Rs ScriptProjectsDeploymentsGet = Deployment
  type
    Scopes ScriptProjectsDeploymentsGet =
      '[Script'Deployments, Script'Deployments'Readonly]
  requestClient ScriptProjectsDeploymentsGet {..} =
    go
      scriptId
      deploymentId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      scriptService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ScriptProjectsDeploymentsGetResource
          )
          Core.mempty
