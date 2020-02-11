Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA76158E6E
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2020 13:26:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728560AbgBKM0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Feb 2020 07:26:33 -0500
Received: from mx2.suse.de ([195.135.220.15]:50138 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728351AbgBKM0c (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Feb 2020 07:26:32 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 3D88AAFCA;
        Tue, 11 Feb 2020 12:26:30 +0000 (UTC)
From:   Nikolay Borisov <nborisov@suse.com>
To:     mripard@kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nikolay Borisov <nborisov@suse.com>
Subject: [PATCH v2 0/3] Add support for hwspinlock on A64 SoC
Date:   Tue, 11 Feb 2020 14:26:21 +0200
Message-Id: <20200211122624.16484-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Here's v2 of hwspinlock support in A64 SoC. Main changes:

* Rewrote dt bindings in yaml
* Re-arranged hwspinlock node in dts to follow ascending address order
* Sorted includes alphabetically
* Minor style changes
* Use GENMASK/FIELD_GET to query number of locks from mmio register
* Separate hwspinlock_device from sun50i_hwspinlock. This enables to utilize
devm_add_action_or_reset, which results in cleaner error handling in the probe
function.
* Switched to device managed resources where applicable.


This was tested on a pine64 board. I loadeded/unloaded the driver checking the
state of clock/reset/sysstatus registers as well as trying lock/unlock operations
(using the devmem busybox utility).

Nikolay Borisov (3):
  hwspinlock: sunxi: Implement support for Allwinner's A64 SoC
  arm64: dts: allwinner: a64: Add hwspinlock node
  dt-bindings: hwlock: Document A64 hwspinlock bindings

 .../allwinner,sun50i-a64-hwspinlock.yaml      |  47 +++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
 drivers/hwspinlock/Kconfig                    |   9 +
 drivers/hwspinlock/Makefile                   |   1 +
 drivers/hwspinlock/sun50i_hwspinlock.c        | 163 ++++++++++++++++++
 5 files changed, 229 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
 create mode 100644 drivers/hwspinlock/sun50i_hwspinlock.c

--
2.17.1

