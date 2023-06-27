Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FBB473F679
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 10:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230356AbjF0IIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 04:08:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjF0IIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 04:08:46 -0400
X-Greylist: delayed 72 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 27 Jun 2023 01:08:43 PDT
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F7501FCA
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 01:08:43 -0700 (PDT)
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 2023062708072866a62f77f05caf5d04
        for <devicetree@vger.kernel.org>;
        Tue, 27 Jun 2023 10:07:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=felix.moessbauer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=lhHygCuH5pZN5/X93OS/Oo5FJ9iukKAx9xcVfBzbV34=;
 b=UiJggPzYIrLpAEHsgKmyKwOmO4Tm2GrMNFvXsHV3PK2w2jDMpS9iFowPpyvfQljGBdOeSn
 t7UB1jqk9qRHRnr2WN23m/609bWTWmVIrHppiBp8BQzhaY6WQpoy68SaTnPIplrsnK3jW6Ph
 5pQ6DMqOGpqd4Fll33Ts9hD5b4bEs=;
From:   Felix Moessbauer <felix.moessbauer@siemens.com>
To:     Emil Renner Berthing <kernel@esmil.dk>
Cc:     Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Felix Moessbauer <felix.moessbauer@siemens.com>
Subject: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for starfive devices
Date:   Tue, 27 Jun 2023 16:06:20 +0800
Message-Id: <20230627080620.329873-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-72506:519-21489:flowmailer
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the '-@' DTC option for the starfive devices. This option
populates the '__symbols__' node that contains all the necessary symbols
for supporting device-tree overlays (for instance from the firmware or
the bootloader) on these devices.

The starfive devices allow various modules to be connected and this
enables users to create out-of-tree device-tree overlays for these modules.

Please note that this change does increase the size of the resulting DTB
by ~20%. For example, with v6.4 increase in size is as follows:

jh7100-beaglev-starlight.dtb 6192 -> 7339
jh7100-starfive-visionfive-v1.dtb 6281 -> 7428
jh7110-starfive-visionfive-2-v1.2a.dtb 11101 -> 13447
jh7110-starfive-visionfive-2-v1.3b.dtb 11101 -> 13447

Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
---
 arch/riscv/boot/dts/starfive/Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
index 170956846d49..0141504c0f5c 100644
--- a/arch/riscv/boot/dts/starfive/Makefile
+++ b/arch/riscv/boot/dts/starfive/Makefile
@@ -1,4 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
+# Enables support for device-tree overlays
+DTC_FLAGS_jh7100-beaglev-starlight := -@
+DTC_FLAGS_jh7100-starfive-visionfive-v1 := -@
+DTC_FLAGS_jh7110-starfive-visionfive-2-v1.2a := -@
+DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
+
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
 dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
 
-- 
2.39.2

