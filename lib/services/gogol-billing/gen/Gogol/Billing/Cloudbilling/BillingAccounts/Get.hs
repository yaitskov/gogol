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
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a billing account. The current authenticated user must be a <https://cloud.google.com/billing/docs/how-to/billing-access viewer of the billing account>.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.get@.
module Gogol.Billing.Cloudbilling.BillingAccounts.Get
  ( -- * Resource
    CloudbillingBillingAccountsGetResource,

    -- ** Constructing a Request
    newCloudbillingBillingAccountsGet,
    CloudbillingBillingAccountsGet,
  )
where

import Gogol.Billing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbilling.billingAccounts.get@ method which the
-- 'CloudbillingBillingAccountsGet' request conforms to.
type CloudbillingBillingAccountsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BillingAccount

-- | Gets information about a billing account. The current authenticated user must be a <https://cloud.google.com/billing/docs/how-to/billing-access viewer of the billing account>.
--
-- /See:/ 'newCloudbillingBillingAccountsGet' smart constructor.
data CloudbillingBillingAccountsGet = CloudbillingBillingAccountsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the billing account to retrieve. For example, @billingAccounts\/012345-567890-ABCDEF@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsGet' with the minimum fields required to make a request.
newCloudbillingBillingAccountsGet ::
  -- |  Required. The resource name of the billing account to retrieve. For example, @billingAccounts\/012345-567890-ABCDEF@. See 'name'.
  Core.Text ->
  CloudbillingBillingAccountsGet
newCloudbillingBillingAccountsGet name =
  CloudbillingBillingAccountsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbillingBillingAccountsGet
  where
  type
    Rs CloudbillingBillingAccountsGet =
      BillingAccount
  type
    Scopes CloudbillingBillingAccountsGet =
      '[ "https://www.googleapis.com/auth/cloud-billing",
         "https://www.googleapis.com/auth/cloud-billing.readonly",
         "https://www.googleapis.com/auth/cloud-platform"
       ]
  requestClient CloudbillingBillingAccountsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      billingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbillingBillingAccountsGetResource
          )
          Core.mempty
