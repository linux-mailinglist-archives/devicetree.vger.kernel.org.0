Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E04AC31A206
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 16:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbhBLPrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 10:47:18 -0500
Received: from foss.arm.com ([217.140.110.172]:38956 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232027AbhBLPrK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Feb 2021 10:47:10 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5672C1063;
        Fri, 12 Feb 2021 07:46:24 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DF3473F73B;
        Fri, 12 Feb 2021 07:46:22 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: [PATCH v4 0/7] firmware: Add initial support for Arm FF-A
Date:   Fri, 12 Feb 2021 15:46:07 +0000
Message-Id: <20210212154614.38604-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

This is very basic implementation for in-kernel support for Arm FF-A
specification.

iArm Firmware Framework for Armv8-A specification[1] describes a software
architecture that provides mechanism to utilise the virtualization
extension to isolate software images and describes interfaces that
standardize communication between the various software images. This
includes communication between images in the Secure and Normal world.

The main idea here is to create FFA device to establish any communication
with a secure partition. This is currently tested with OPTEE(with changes
to OPTEE driver adding FFA as transport)

The series can be fetched from [2]

--
Regards,
Sudeep

[1] https://developer.arm.com/documentation/den0077/latest
[2] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git v5.11/ffa

v3->v4:
	- Added support to allow partitions to set 32bit only mode
	- Addressed all the comments from Jens Wiklander

v2->v3:
	- Dropped hypervisor partitions and userspace support as it is
	  no longer in the list of requirements
	- Moved away from ioctl style interface for in-kernel users as
	  there is no need to keep in sync with userspace anymore
	- Some kerneldoc fixes as pointed out in earlier reviews

v1->v2:
	- Moved userspace code to a separate unit, will move to separate
	  module. Still working on minimizing initcall dependencies and
	  exported functions to reuse some of the code.
	- Fixed couple of minor issues pointed out
	- Dropped ASYNC send message as I haven't been able to test


Sudeep Holla (7):
  dt-bindings: Arm: Add Firmware Framework for Armv8-A (FF-A) binding
  arm64: smccc: Add support for SMCCCv1.2 input/output registers
  firmware: arm_ffa: Add initial FFA bus support for device enumeration
  firmware: arm_ffa: Add initial Arm FFA driver support
  firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
  firmware: arm_ffa: Setup in-kernel users of FFA partitions
  firmware: arm_ffa: Add support for MEM_* interfaces

 .../devicetree/bindings/arm/arm,ffa.yaml      |  58 ++
 arch/arm64/kernel/asm-offsets.c               |   4 +
 arch/arm64/kernel/smccc-call.S                |  22 +
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/arm_ffa/Kconfig              |  21 +
 drivers/firmware/arm_ffa/Makefile             |   6 +
 drivers/firmware/arm_ffa/bus.c                | 181 +++++
 drivers/firmware/arm_ffa/common.h             |  32 +
 drivers/firmware/arm_ffa/driver.c             | 669 ++++++++++++++++++
 drivers/firmware/arm_ffa/smccc.c              |  54 ++
 include/linux/arm-smccc.h                     |  50 ++
 include/linux/arm_ffa.h                       | 277 ++++++++
 13 files changed, 1376 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
 create mode 100644 drivers/firmware/arm_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_ffa/Makefile
 create mode 100644 drivers/firmware/arm_ffa/bus.c
 create mode 100644 drivers/firmware/arm_ffa/common.h
 create mode 100644 drivers/firmware/arm_ffa/driver.c
 create mode 100644 drivers/firmware/arm_ffa/smccc.c
 create mode 100644 include/linux/arm_ffa.h

-- 
2.25.1

