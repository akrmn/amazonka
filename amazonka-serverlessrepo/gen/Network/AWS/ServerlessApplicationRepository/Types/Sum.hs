{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServerlessApplicationRepository.Types.Sum
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServerlessApplicationRepository.Types.Sum where

import Network.AWS.Prelude

-- | Values that must be specified in order to deploy some applications.
--
--
data Capability
  = CapabilityAutoExpand
  | CapabilityIAM
  | CapabilityNamedIAM
  | CapabilityResourcePolicy
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Capability where
    parser = takeLowerText >>= \case
        "capability_auto_expand" -> pure CapabilityAutoExpand
        "capability_iam" -> pure CapabilityIAM
        "capability_named_iam" -> pure CapabilityNamedIAM
        "capability_resource_policy" -> pure CapabilityResourcePolicy
        e -> fromTextError $ "Failure parsing Capability from value: '" <> e
           <> "'. Accepted values: capability_auto_expand, capability_iam, capability_named_iam, capability_resource_policy"

instance ToText Capability where
    toText = \case
        CapabilityAutoExpand -> "CAPABILITY_AUTO_EXPAND"
        CapabilityIAM -> "CAPABILITY_IAM"
        CapabilityNamedIAM -> "CAPABILITY_NAMED_IAM"
        CapabilityResourcePolicy -> "CAPABILITY_RESOURCE_POLICY"

instance Hashable     Capability
instance NFData       Capability
instance ToByteString Capability
instance ToQuery      Capability
instance ToHeader     Capability

instance FromJSON Capability where
    parseJSON = parseJSONText "Capability"

data Status
  = Active
  | Expired
  | Preparing
  deriving (Eq, Ord, Read, Show, Enum, Bounded, Data, Typeable, Generic)


instance FromText Status where
    parser = takeLowerText >>= \case
        "active" -> pure Active
        "expired" -> pure Expired
        "preparing" -> pure Preparing
        e -> fromTextError $ "Failure parsing Status from value: '" <> e
           <> "'. Accepted values: active, expired, preparing"

instance ToText Status where
    toText = \case
        Active -> "ACTIVE"
        Expired -> "EXPIRED"
        Preparing -> "PREPARING"

instance Hashable     Status
instance NFData       Status
instance ToByteString Status
instance ToQuery      Status
instance ToHeader     Status

instance FromJSON Status where
    parseJSON = parseJSONText "Status"
