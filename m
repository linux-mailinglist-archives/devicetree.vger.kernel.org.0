Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E6E8B1CA8
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 13:53:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729421AbfIMLxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 07:53:21 -0400
Received: from foss.arm.com ([217.140.110.172]:42094 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727540AbfIMLxU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Sep 2019 07:53:20 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4620428;
        Fri, 13 Sep 2019 04:53:20 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3FD53F71F;
        Fri, 13 Sep 2019 04:53:17 -0700 (PDT)
From:   Andrew Murray <andrew.murray@arm.com>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>, Al.Grant@arm.com,
        Leo Yan <leo.yan@linaro.org>, devicetree@vger.kernel.org,
        coresight@lists.linaro.org
Subject: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context across CPU low power states
Date:   Fri, 13 Sep 2019 12:53:09 +0100
Message-Id: <20190913115312.12943-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some hardware will ignore bit TRCPDCR.PU which is used to signal
to hardware that power should not be removed from the trace unit.
Let's mitigate against this by conditionally saving and restoring
the trace unit state when the CPU enters low power states.

This patchset introduces a firmware property named
'arm,coresight-loses-context-with-cpu' - when this is present the
hardware state will be conditionally saved and restored.

A module parameter 'pm_save_enable' is also introduced which can
be configured to override the firmware property. This parameter
also provides a means to save/restore state when external agents
are used.

The hardware state is only ever saved and restored when a coresight
session is present.

Changes since v5:

 - Fix indentation, comment style and add implicit fallthrough comment

 - Use NOTIFY_* for all return values in pm notifier callback

 - Rename PARAM_PM_SAVE_EXTERNAL to PARAM_PM_SAVE_ALWAYS

 - Update module parameter description

 - Add comment to explain why we keep power on

 - Rebased onto coresight/next c165d8947bc4 ("eeprom: Deprecate the legacy eeprom driver")

Changes since v4:

 - Rename fwnode property to "arm,coresight-loses-context-with-cpu" as this
   doesn't imply a software policy

 - Update the device tree binding document to indicate that this property
   isn't specific to ETMs - also provide a longer description more generic
   description with an example of why it might be used

 - Set the module parameter at probe based on the value determined by firmware.
   The user can still override the firmware via the kernel command line, this
   has the effect of hiding the PARAM_PM_SAVE_FIRMWARE option from the user -
   though we still internally use it to allow us to determine if the user has
   set the parameter.

 - Remove unnecessary call to smp_processor_id

 - Move etm4_needs_save_restore helper to coresight.c and rename

 - Rebased onto coresight/next a04d8683f577 ("...ity of etm4_os_unlock comment")

 - Drop Reviewed-By from Suzuki on "coresight: etm4x: save/restore st..." patch
   as content changed too much

 - Add module option to that keeps clocks/power enabled at probe and saves
   state when external or self-hosted is in use.

Changes since v3:

 - Only save/restore when self-hosted is being used and detect this
   without relying on the coresight registers (which may not be
   available)

 - Only allocate memory for etmv4_save_state at probe time when
   configuration indicates it may be used

 - Set pm_save_enable param to 0444 such that it is static after
   boot

 - Save/restore TRCPDCR

 - Add missing comments to struct etm4_drvdata documentation

 - Rebased onto coresight/next (8f1f9857)

Changes since v2:

 - Move the PM notifier block from drvdata to file static

 - Add section names to document references

 - Add additional information to commit messages

 - Remove trcdvcvr and trcdvcmr from saved state and add a comment to
   describe why

 - Ensure TRCPDCR_PU is set after restore and add a comment to explain
   why we bother toggling TRCPDCR_PU on save/restore

 - Reword the pm_save_enable options and add comments

 - Miscellaneous style changes

 - Move device tree binding documentation to its own patch

Changes since v1:

 - Rebased onto coresight/next

 - Correcly pass bit number rather than BIT macro to coresight_timeout

 - Abort saving state if a timeout occurs

 - Fix completely broken pm_notify handling and unregister handler on error

 - Use state_needs_restore to ensure state is restored only once

 - Add module parameter description to existing boot_enable parameter
   and use module_param instead of module_param_named

 - Add firmware bindings for coresight-needs-save-restore

 - Rename 'disable_pm_save' to 'pm_save_enable' which allows for
   disabled, enabled or firmware

 - Update comment on etm4_os_lock, it incorrectly indicated that
   the code unlocks the trace registers

 - Add comments to explain use of OS lock during save/restore

 - Fix incorrect error description whilst waiting for PM stable

 - Add WARN_ON_ONCE when cpu isn't as expected during save/restore

 - Various updates to commit messages


Andrew Murray (3):
  coresight: etm4x: save/restore state across CPU low power states
  dt-bindings: arm: coresight: Add support for
    coresight-loses-context-with-cpu
  coresight: etm4x: save/restore state for external agents

 .../devicetree/bindings/arm/coresight.txt     |   9 +
 drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
 drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
 drivers/hwtracing/coresight/coresight.c       |   8 +-
 include/linux/coresight.h                     |  13 +
 5 files changed, 443 insertions(+), 2 deletions(-)

-- 
2.21.0

