Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3AA43737AD
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 11:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232036AbhEEJjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 05:39:52 -0400
Received: from foss.arm.com ([217.140.110.172]:41198 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232073AbhEEJjv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 May 2021 05:39:51 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CE6BD6E;
        Wed,  5 May 2021 02:38:55 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2A3EA3F70D;
        Wed,  5 May 2021 02:38:54 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, arve@google.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: [PATCH v6 0/6] firmware: Add initial support for Arm FF-A
Date:   Wed,  5 May 2021 10:38:37 +0100
Message-Id: <20210505093843.3308691-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

This is very basic implementation for in-kernel support for Arm FF-A
specification.

Arm Firmware Framework for Armv8-A specification[1] describes a software
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
[2] git://git.kerniel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git v5.13/ffa


v5->v6:
	- Dropped DT dependecy completely and use the discovery APIs for
	  adding FFA partitions on the bus. They is some workaround added
	  as v1.0 doesn't provide UUID as part of the discovery APIs which
	  is used to match the devices and driver on FFA bus.
	- Extended SMCCC v1.2 API to support full set of input and output
	  registers.
	- Couple of minor bug fixes found as part of testing

v4->v5:
	- Fixed couple of comments in DT bindings
	- Moved to use native version of RXTX_MAP call, fixed vm_id param
	  to RXTX_UNMAP, dropped couple of unused confusingly named macros
	  (can be added back with correct name when we need to use them)

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

Sudeep Holla (6):
  arm64: smccc: Add support for SMCCCv1.2 extended input/output registers
  firmware: arm_ffa: Add initial FFA bus support for device enumeration
  firmware: arm_ffa: Add initial Arm FFA driver support
  firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
  firmware: arm_ffa: Setup in-kernel users of FFA partitions
  firmware: arm_ffa: Add support for MEM_* interfaces

 MAINTAINERS                       |   7 +
 arch/arm64/kernel/asm-offsets.c   |   9 +
 arch/arm64/kernel/smccc-call.S    |  57 +++
 drivers/firmware/Kconfig          |   1 +
 drivers/firmware/Makefile         |   1 +
 drivers/firmware/arm_ffa/Kconfig  |  21 +
 drivers/firmware/arm_ffa/Makefile |   6 +
 drivers/firmware/arm_ffa/bus.c    | 210 +++++++++
 drivers/firmware/arm_ffa/common.h |  31 ++
 drivers/firmware/arm_ffa/driver.c | 719 ++++++++++++++++++++++++++++++
 drivers/firmware/arm_ffa/smccc.c  |  39 ++
 include/linux/arm-smccc.h         |  55 +++
 include/linux/arm_ffa.h           | 266 +++++++++++
 13 files changed, 1422 insertions(+)
 create mode 100644 drivers/firmware/arm_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_ffa/Makefile
 create mode 100644 drivers/firmware/arm_ffa/bus.c
 create mode 100644 drivers/firmware/arm_ffa/common.h
 create mode 100644 drivers/firmware/arm_ffa/driver.c
 create mode 100644 drivers/firmware/arm_ffa/smccc.c
 create mode 100644 include/linux/arm_ffa.h

-- 
2.25.1

