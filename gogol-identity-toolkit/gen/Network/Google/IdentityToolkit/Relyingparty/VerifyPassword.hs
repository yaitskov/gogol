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
-- Module      : Network.Google.IdentityToolkit.Relyingparty.VerifyPassword
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies the user entered password.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.verifyPassword@.
module Network.Google.IdentityToolkit.Relyingparty.VerifyPassword
  ( -- * Resource
    IdentityToolkitRelyingpartyVerifyPasswordResource,

    -- ** Constructing a Request
    newIdentityToolkitRelyingpartyVerifyPassword,
    IdentityToolkitRelyingpartyVerifyPassword,
  )
where

import Network.Google.IdentityToolkit.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.verifyPassword@ method which the
-- 'IdentityToolkitRelyingpartyVerifyPassword' request conforms to.
type IdentityToolkitRelyingpartyVerifyPasswordResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "verifyPassword"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              IdentitytoolkitRelyingpartyVerifyPasswordRequest
    Core.:> Core.Post '[Core.JSON] VerifyPasswordResponse

-- | Verifies the user entered password.
--
-- /See:/ 'newIdentityToolkitRelyingpartyVerifyPassword' smart constructor.
newtype IdentityToolkitRelyingpartyVerifyPassword = IdentityToolkitRelyingpartyVerifyPassword
  { -- | Multipart request metadata.
    payload :: IdentitytoolkitRelyingpartyVerifyPasswordRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyVerifyPassword' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyVerifyPassword ::
  -- |  Multipart request metadata. See 'payload'.
  IdentitytoolkitRelyingpartyVerifyPasswordRequest ->
  IdentityToolkitRelyingpartyVerifyPassword
newIdentityToolkitRelyingpartyVerifyPassword payload =
  IdentityToolkitRelyingpartyVerifyPassword {payload = payload}

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyVerifyPassword
  where
  type
    Rs IdentityToolkitRelyingpartyVerifyPassword =
      VerifyPasswordResponse
  type
    Scopes IdentityToolkitRelyingpartyVerifyPassword =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    IdentityToolkitRelyingpartyVerifyPassword {..} =
      go
        (Core.Just Core.AltJSON)
        payload
        identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyVerifyPasswordResource
            )
            Core.mempty
