Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7C7825693B
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728442AbgH2RJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:33 -0400
Received: from foss.arm.com ([217.140.110.172]:45022 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728410AbgH2RJd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:33 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7D1D101E;
        Sat, 29 Aug 2020 10:09:31 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E18ED3F71F;
        Sat, 29 Aug 2020 10:09:30 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 0/9] firmware: Add initial support for Arm FF-A
Date:   Sat, 29 Aug 2020 18:09:14 +0100
Message-Id: <20200829170923.29949-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Let me start stating this is just initial implementation to check on
the idea of providing more in-kernel and userspace support. Lot of things
are still work in progress, I am posting just to get the early feedback
before building lot of things on this idea. Consider this more as RFC
though not tagged explicity(just to avoid it being ignored :))

Arm Firmware Framework for Armv8-A specification[1] describes a software
architecture that provides mechanism to utilise the virtualization
extension to isolate software images and describes interfaces that
standardize communication between the various software images. This
includes communication between images in the Secure and Normal world.

The main idea here is to create FFA device to establish any communication
with a partition(secure or normal world VM).

If it is a partition managed by hypervisor, then we will register chardev
associated with each of those partition FFA device.

/dev/arm_ffa:

self
e3a48fa5-dc54-4a8b-898b-bdc4dfeeb7b8
49f65057-d002-4ae2-b4ee-d31c7940a13d

For in-kernel usage(mostly communication with secure partitions), only
in-kernel APIs are accessible(no userspace). There may be a need to
provide userspace access instead of in-kernel, it is not yet support
in this series as we need way to identify those and I am not sure if
that belong to DT.

--
Regards,
Sudeep

[1] https://developer.arm.com/documentation/den0077/latest

Sudeep Holla (8):
  dt-bindings: Arm: Extend FF-A binding to support in-kernel usage of
    partitions
  arm64: smccc: Add support for SMCCCv1.2 input/output registers
  firmware: smccc: export both smccc functions
  firmware: arm_ffa: Add initial FFA bus support for device enumeration
  firmware: arm_ffa: Add initial Arm FFA driver support
  firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
  firmware: arm_ffa: Setup and register all the KVM managed partitions
  firmware: arm_ffa: Setup in-kernel users of FFA partitions

Will Deacon (1):
  dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding

 .../devicetree/bindings/arm/arm,ffa.yaml      | 132 +++
 .../reserved-memory/arm,ffa-memory.yaml       |  71 ++
 arch/arm64/kernel/asm-offsets.c               |   4 +
 arch/arm64/kernel/smccc-call.S                |  22 +
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/arm_ffa/Kconfig              |  21 +
 drivers/firmware/arm_ffa/Makefile             |   5 +
 drivers/firmware/arm_ffa/bus.c                | 195 +++++
 drivers/firmware/arm_ffa/common.h             |  27 +
 drivers/firmware/arm_ffa/driver.c             | 755 ++++++++++++++++++
 drivers/firmware/arm_ffa/smccc.c              |  54 ++
 drivers/firmware/smccc/smccc.c                |   2 +
 include/linux/arm-smccc.h                     |  50 ++
 include/linux/arm_ffa.h                       |  96 +++
 include/uapi/linux/arm_ffa.h                  |  56 ++
 16 files changed, 1492 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
 create mode 100644 drivers/firmware/arm_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_ffa/Makefile
 create mode 100644 drivers/firmware/arm_ffa/bus.c
 create mode 100644 drivers/firmware/arm_ffa/common.h
 create mode 100644 drivers/firmware/arm_ffa/driver.c
 create mode 100644 drivers/firmware/arm_ffa/smccc.c
 create mode 100644 include/linux/arm_ffa.h
 create mode 100644 include/uapi/linux/arm_ffa.h

-- 
2.17.1

