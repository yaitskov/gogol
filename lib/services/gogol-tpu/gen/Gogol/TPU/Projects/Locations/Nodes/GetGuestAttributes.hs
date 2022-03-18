{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TPU.Projects.Locations.Nodes.GetGuestAttributes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the guest attributes for the node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.getGuestAttributes@.
module Gogol.TPU.Projects.Locations.Nodes.GetGuestAttributes
    (
    -- * Resource
      TPUProjectsLocationsNodesGetGuestAttributesResource

    -- ** Constructing a Request
    , newTPUProjectsLocationsNodesGetGuestAttributes
    , TPUProjectsLocationsNodesGetGuestAttributes
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.getGuestAttributes@ method which the
-- 'TPUProjectsLocationsNodesGetGuestAttributes' request conforms to.
type TPUProjectsLocationsNodesGetGuestAttributesResource
     =
     "v2alpha1" Core.:>
       Core.CaptureMode "name" "getGuestAttributes"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] GetGuestAttributesRequest
                       Core.:>
                       Core.Post '[Core.JSON] GetGuestAttributesResponse

-- | Retrieves the guest attributes for the node.
--
-- /See:/ 'newTPUProjectsLocationsNodesGetGuestAttributes' smart constructor.
data TPUProjectsLocationsNodesGetGuestAttributes = TPUProjectsLocationsNodesGetGuestAttributes
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GetGuestAttributesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesGetGuestAttributes' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesGetGuestAttributes 
    ::  Core.Text
       -- ^  Required. The resource name. See 'name'.
    -> GetGuestAttributesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> TPUProjectsLocationsNodesGetGuestAttributes
newTPUProjectsLocationsNodesGetGuestAttributes name payload =
  TPUProjectsLocationsNodesGetGuestAttributes
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TPUProjectsLocationsNodesGetGuestAttributes
         where
        type Rs TPUProjectsLocationsNodesGetGuestAttributes =
             GetGuestAttributesResponse
        type Scopes
               TPUProjectsLocationsNodesGetGuestAttributes
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          TPUProjectsLocationsNodesGetGuestAttributes{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tPUService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TPUProjectsLocationsNodesGetGuestAttributesResource)
                      Core.mempty

