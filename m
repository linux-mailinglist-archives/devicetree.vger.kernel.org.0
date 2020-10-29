Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8A4129EB25
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725807AbgJ2L6q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:58:46 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38516 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725854AbgJ2L6q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:58:46 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cqrF078198;
        Wed, 28 Oct 2020 22:38:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603942732;
        bh=ZkKoJoNZK3z6ub88nHcZOSh3PoMWdLkK/8og7WVyLd8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Z6fINiqqZNjpRS2M1ZI93Pkn9khAAluVAOj7tUkMw8IPXzYO9yq5uNGNEG7DiwGKb
         tjyTZQoKEELqyhMgM9SM1Bj85iuSy5yoOufW97JM1Nthb28a40PzTPNrQRupa0VqJt
         hosKo3qlvKktJVG8j2QnIPJoMsxP6B568wADp10k=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09T3cqrr006150
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 28 Oct 2020 22:38:52 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 28
 Oct 2020 22:38:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 28 Oct 2020 22:38:52 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09T3cqDL102829;
        Wed, 28 Oct 2020 22:38:52 -0500
Received: from localhost ([10.250.39.72])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 09T3cqXk033837;
        Wed, 28 Oct 2020 22:38:52 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 7/8] arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to R5Fs
Date:   Wed, 28 Oct 2020 22:38:01 -0500
Message-ID: <20201029033802.15366-8-s-anna@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029033802.15366-1-s-anna@ti.com>
References: <20201029033802.15366-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the required 'mboxes' property to all the R5F processors for the
TI J721E common processor board. The mailboxes and some shared memory
are required for running the Remote Processor Messaging (RPMsg) stack
between the host processor and each of the R5Fs. The nodes are therefore
added in the common k3-j721e-som-p0.dtsi file so that all of these can
be co-located.

The chosen sub-mailboxes match the values used in the current firmware
images. This can be changed, if needed, as per the system integration
needs after making appropriate changes on the firmware side as well.

Note that any R5F Core1 resources are needed and used only when that
R5F cluster is configured for Split-mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi | 26 ++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
index 5dc3ba739131..c48f4ffd1435 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2019-2020 Texas Instruments Incorporated - https://www.ti.com/
  */
 
 /dts-v1/;
@@ -208,6 +208,30 @@ &mailbox0_cluster11 {
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
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
+};
+
 &c66_0 {
 	mboxes = <&mailbox0_cluster3 &mbox_c66_0>;
 	memory-region = <&c66_0_dma_memory_region>,
-- 
2.28.0

