Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF796D0BDE
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231524AbjC3QxC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231613AbjC3Qwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:52:37 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 626BCEB5B
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:51:58 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2EB42F4;
        Thu, 30 Mar 2023 09:52:24 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D50C13F6C4;
        Thu, 30 Mar 2023 09:51:38 -0700 (PDT)
From:   James Morse <james.morse@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        James Morse <james.morse@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM interconnects
Date:   Thu, 30 Mar 2023 17:51:22 +0100
Message-Id: <20230330165128.3237939-1-james.morse@arm.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

Changes since the RFC?:
 * Added DT support, in a way that means we don't end up with per-erratum
   strings, or bloat in the calling code to check for those strings.
 * Added a commandline argument. (boo)
 * Changes to support errata affecting features on big-little systems properly.

~

When stage1 translation is disabled, the SCTRL_E1.I bit controls the
attributes used for instruction fetch, one of the options results in a
non-cacheable access. A whole host of CPUs missed the FWB override
in this case, meaning a KVM guest could fetch stale/junk data instead of
instructions.

The workaround is to disable FWB, and do the required cache maintenance
instead.

The good news is, this isn't a problem for systems using Arm's
interconnect IP. The bad news is: linux can't know this. Arm knows of
at least one platform that is affected by this erratum.


This series adds support for the 'Errata Management Firmware Interface', [0]
and queries that to determine if the CPU is affected or not. DT support is
added so that the firmware interface values can be queried directly from the
DT. This can be used as a fallback for platforms that don't yet support the
interface.

Unfortunately, no-one has firmware that supports this new interface yet,
and the least surprising thing to do is to enable the workaround by default,
meaning FWB is disabled on all these cores, even for unaffected platforms.
ACPI Platforms that are not-affected can either take a firmware-update to
support the interface, or if the kernel they run will only run on hardware
that is unaffected, disable the workaround at build time.

The trusted firmware series to implement the interface is here:
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/19835
the trusted firmware code to advertise a value for this erratum is here:
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/20076

The SDEN documents that describe this are:
Cortex-A78:
https://developer.arm.com/documentation/SDEN1401784/1800/?lang=en
Cortex-A78C:
https://developer.arm.com/documentation/SDEN1707916/1300/?lang=en
https://developer.arm.com/documentation/SDEN2004089/0700/?lang=en
(yes, there are two!)
Cortex-A710:
https://developer.arm.com/documentation/SDEN1775101/1500/?lang=en
Cortex-X1:
https://developer.arm.com/documentation/SDEN1401782/1800/?lang=en
Cortex-X2:
https://developer.arm.com/documentation/SDEN1775100/1500/?lang=en
Cortex-X3:
https://developer.arm.com/documentation/SDEN2055130/1000/?lang=en
Cortex-V1:
https://developer.arm.com/documentation/SDEN1401781/1600/?lang=en
Cortex-V2:
https://developer.arm.com/documentation/SDEN2332927/0500/?lang=en
Cortex-N2:
https://developer.arm.com/documentation/SDEN1982442/1200/?lang=en

Thanks,

James

[0] https://developer.arm.com/documentation/den0100/1-0/?lang=en
[RFC] https://lore.kernel.org/linux-arm-kernel/20230216182201.1705406-1-james.morse@arm.com/

James Morse (6):
  dt-bindings: firmware: Add arm,errata-management
  firmware: smccc: Add support for erratum discovery API
  arm64: cputype: Add new part numbers for Cortex-X3, and Neoverse-V2
  arm64: errata: Disable FWB on parts with non-ARM interconnects
  firmware: smccc: Allow errata management to be overridden by device
    tree
  arm64: errata: Add a commandline option to enable/disable #2701951

 .../admin-guide/kernel-parameters.txt         |   4 +
 Documentation/arm64/silicon-errata.rst        |  18 ++
 .../devicetree/bindings/arm/cpus.yaml         |   5 +
 .../firmware/arm,errata-management.yaml       |  72 +++++
 arch/arm64/Kconfig                            |  27 ++
 arch/arm64/include/asm/cpufeature.h           |   1 +
 arch/arm64/include/asm/cputype.h              |   4 +
 arch/arm64/kernel/cpu_errata.c                | 123 ++++++++
 arch/arm64/kernel/cpufeature.c                |  23 +-
 arch/arm64/tools/cpucaps                      |   1 +
 drivers/firmware/smccc/Kconfig                |   8 +
 drivers/firmware/smccc/Makefile               |   1 +
 drivers/firmware/smccc/em.c                   | 284 ++++++++++++++++++
 include/linux/arm-smccc.h                     |  28 ++
 include/linux/arm_smccc_em.h                  |  11 +
 15 files changed, 609 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
 create mode 100644 drivers/firmware/smccc/em.c
 create mode 100644 include/linux/arm_smccc_em.h

-- 
2.39.2

