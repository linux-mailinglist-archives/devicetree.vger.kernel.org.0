Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 375262F1E36
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 19:47:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbhAKSrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 13:47:08 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46288 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389378AbhAKSrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 13:47:08 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkP3F000832;
        Mon, 11 Jan 2021 12:46:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610390785;
        bh=BZ1yjTsIrw0WRlYob4laxstpVuQg9bUR1AVXFa0gwBs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=YLbONLyeA8UUi8Cd36Yv6nLB9Z3JKiD2LR3EDe2gyMxkxsFVcXDcJg75No6LBqBWj
         TX09y5EbIercFrqthER743fiLxYbLYHTwbHef6Mb0EKdHva8Cqihmrf1bg0/sLhgC+
         /GrTaoJwzefM/69SgLx1phJH+pYSxJLvojnffqvg=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10BIkPgr046602
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 11 Jan 2021 12:46:25 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 Jan 2021 12:46:24 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 Jan 2021 12:46:24 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkOT1092470;
        Mon, 11 Jan 2021 12:46:24 -0600
Received: from localhost ([10.250.67.236])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 10BIkO42004125;
        Mon, 11 Jan 2021 12:46:24 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 2/3] arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
Date:   Mon, 11 Jan 2021 12:45:53 -0600
Message-ID: <20210111184554.6748-3-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111184554.6748-1-s-anna@ti.com>
References: <20210111184554.6748-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the required 'mboxes' property to all the R5F processors for the
TI J7200 common processor board. The mailboxes and some shared memory
are required for running the Remote Processor Messaging (RPMsg) stack
between the host processor and each of the R5Fs. The nodes are therefore
added in the common k3-j7200-som-p0.dtsi file so that all of these can
be co-located.

The chosen sub-mailboxes match the values used in the current firmware
images. This can be changed, if needed, as per the system integration
needs after making appropriate changes on the firmware side as well.

Note that any R5F Core1 resources are needed and used only when that
R5F cluster is configured for Split-mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
v2: No changes

 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
index 7b5e9aa0324e..3a82982902c8 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 /dts-v1/;
@@ -141,6 +141,22 @@ &mailbox0_cluster11 {
 	status = "disabled";
 };
 
+&mcu_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
+};
+
+&mcu_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
+};
+
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
+};
+
 &main_i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_i2c0_pins_default>;
-- 
2.29.2

