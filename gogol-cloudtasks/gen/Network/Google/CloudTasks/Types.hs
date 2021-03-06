{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTasks.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTasks.Types
    (
    -- * Service Configuration
      cloudTasksService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * RateLimits
    , RateLimits
    , rateLimits
    , rlMaxConcurrentDispatches
    , rlMaxDispatchesPerSecond
    , rlMaxBurstSize

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * RetryConfig
    , RetryConfig
    , retryConfig
    , rcMaxDoublings
    , rcMaxRetryDuration
    , rcMaxAttempts
    , rcMaxBackoff
    , rcMinBackoff

    -- * RunTaskRequest
    , RunTaskRequest
    , runTaskRequest
    , rtrResponseView

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Empty
    , Empty
    , empty

    -- * CreateTaskRequest
    , CreateTaskRequest
    , createTaskRequest
    , ctrResponseView
    , ctrTask

    -- * TaskView
    , TaskView (..)

    -- * ListQueuesResponse
    , ListQueuesResponse
    , listQueuesResponse
    , lqrNextPageToken
    , lqrQueues

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * QueueState
    , QueueState (..)

    -- * AppEngineHTTPQueue
    , AppEngineHTTPQueue
    , appEngineHTTPQueue
    , aehttpqAppEngineRoutingOverride

    -- * CreateTaskRequestResponseView
    , CreateTaskRequestResponseView (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * Queue
    , Queue
    , queue
    , qRateLimits
    , qState
    , qRetryConfig
    , qAppEngineHTTPQueue
    , qName
    , qPurgeTime

    -- * AppEngineHTTPRequestHTTPMethod
    , AppEngineHTTPRequestHTTPMethod (..)

    -- * ListTasksResponse
    , ListTasksResponse
    , listTasksResponse
    , ltrNextPageToken
    , ltrTasks

    -- * AppEngineHTTPRequestHeaders
    , AppEngineHTTPRequestHeaders
    , appEngineHTTPRequestHeaders
    , aehttprhAddtional

    -- * Xgafv
    , Xgafv (..)

    -- * PauseQueueRequest
    , PauseQueueRequest
    , pauseQueueRequest

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * Attempt
    , Attempt
    , attempt
    , aResponseStatus
    , aScheduleTime
    , aDispatchTime
    , aResponseTime

    -- * PurgeQueueRequest
    , PurgeQueueRequest
    , purgeQueueRequest

    -- * Task
    , Task
    , task
    , tLastAttempt
    , tDispatchDeadline
    , tScheduleTime
    , tName
    , tFirstAttempt
    , tView
    , tResponseCount
    , tDispatchCount
    , tAppEngineHTTPRequest
    , tCreateTime

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * RunTaskRequestResponseView
    , RunTaskRequestResponseView (..)

    -- * AppEngineRouting
    , AppEngineRouting
    , appEngineRouting
    , aerService
    , aerVersion
    , aerHost
    , aerInstance

    -- * AppEngineHTTPRequest
    , AppEngineHTTPRequest
    , appEngineHTTPRequest
    , aehttprHTTPMethod
    , aehttprRelativeURI
    , aehttprBody
    , aehttprHeaders
    , aehttprAppEngineRouting

    -- * ResumeQueueRequest
    , ResumeQueueRequest
    , resumeQueueRequest

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.CloudTasks.Types.Product
import           Network.Google.CloudTasks.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta3' of the Cloud Tasks API. This contains the host and root path used as a starting point for constructing service requests.
cloudTasksService :: ServiceConfig
cloudTasksService
  = defaultService (ServiceId "cloudtasks:v2beta3")
      "cloudtasks.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
