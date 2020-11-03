Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B75F72A4D5C
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728292AbgKCRn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:43:58 -0500
Received: from foss.arm.com ([217.140.110.172]:53014 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRn6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:43:58 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F33D41474;
        Tue,  3 Nov 2020 09:43:57 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 856D53F718;
        Tue,  3 Nov 2020 09:43:56 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: [PATCH v2 0/9] firmware: Add initial support for Arm FF-A
Date:   Tue,  3 Nov 2020 17:43:41 +0000
Message-Id: <20201103174350.991593-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

v1->v2:
	- Moved userspace code to a separate unit, will move to separate
	  module. Still working on minimizing initcall dependencies and
	  exported functions to reuse some of the code.
	- Fixed couple of minor issues pointed out
	- Dropped ASYNC send message as I haven't been able to test

Sudeep Holla (8):
  dt-bindings: Arm: Extend FF-A binding to support in-kernel usage of
    partitions
  arm64: smccc: Add support for SMCCCv1.2 input/output registers
  firmware: arm_ffa: Add initial FFA bus support for device enumeration
  firmware: arm_ffa: Add initial Arm FFA driver support
  firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
  firmware: arm_ffa: Setup in-kernel users of FFA partitions
  firmware: arm_ffa: Setup and register all the KVM managed partitions
  firmware: arm_ffa: Add support for MEM_* interfaces

Will Deacon (1):
  dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding

 .../devicetree/bindings/arm/arm,ffa-hyp.yaml  | 102 +++
 .../devicetree/bindings/arm/arm,ffa.yaml      |  58 ++
 .../reserved-memory/arm,ffa-memory.yaml       |  71 ++
 arch/arm64/kernel/asm-offsets.c               |   4 +
 arch/arm64/kernel/smccc-call.S                |  22 +
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/arm_ffa/Kconfig              |  21 +
 drivers/firmware/arm_ffa/Makefile             |   6 +
 drivers/firmware/arm_ffa/bus.c                | 199 +++++
 drivers/firmware/arm_ffa/common.h             |  35 +
 drivers/firmware/arm_ffa/driver.c             | 737 ++++++++++++++++++
 drivers/firmware/arm_ffa/hyp_partitions.c     | 132 ++++
 drivers/firmware/arm_ffa/smccc.c              |  54 ++
 include/linux/arm-smccc.h                     |  50 ++
 include/linux/arm_ffa.h                       | 310 ++++++++
 include/uapi/linux/arm_ffa.h                  |  67 ++
 17 files changed, 1870 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa-hyp.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
 create mode 100644 drivers/firmware/arm_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_ffa/Makefile
 create mode 100644 drivers/firmware/arm_ffa/bus.c
 create mode 100644 drivers/firmware/arm_ffa/common.h
 create mode 100644 drivers/firmware/arm_ffa/driver.c
 create mode 100644 drivers/firmware/arm_ffa/hyp_partitions.c
 create mode 100644 drivers/firmware/arm_ffa/smccc.c
 create mode 100644 include/linux/arm_ffa.h
 create mode 100644 include/uapi/linux/arm_ffa.h

--
2.25.1

