Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B15239446A
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 16:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234752AbhE1OtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 10:49:07 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55940 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235511AbhE1OtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 10:49:06 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14SElTcl048217;
        Fri, 28 May 2021 09:47:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622213249;
        bh=SX4YxWBIqJnEkkU0BHy5TNcgonX3yvn69Cl6tCgUt/k=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=bic4+uLZHdwoSqW8tcakvkkIg6dOdhEVfbVHbKHvhr5GoW4vM21JFOFNw7nrFZ4bd
         KrUj+giXA/fQ+1r6CSqtTln2PTGHfz1sNynzdC254bSeuszvQrvn83cM2lfSrcMXt4
         T9Vj//V55iJ63ZCIHUX2nMNDr/3kalEMVSvWoEtg=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14SElTr2091942
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 May 2021 09:47:29 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 09:47:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 09:47:29 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14SElSt9080084;
        Fri, 28 May 2021 09:47:28 -0500
Received: from localhost ([10.250.35.153])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 14SElSHX005153;
        Fri, 28 May 2021 09:47:28 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/4] arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
Date:   Fri, 28 May 2021 09:47:16 -0500
Message-ID: <20210528144718.25132-3-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210528144718.25132-1-s-anna@ti.com>
References: <20210528144718.25132-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the required 'mboxes' property to all the R5F processors for the
TI AM642 EVM and SK boards. The mailboxes and some shared memory are
required for running the Remote Processor Messaging (RPMsg) stack
between the host processor and each of the R5Fs.

The chosen sub-mailboxes match the values used in the current firmware
images. This can be changed, if needed, as per the system integration
needs after making appropriate changes on the firmware side as well.

Note that any R5F Core1 resources are needed and used only when that
R5F cluster is configured for Split-mode.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 16 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 16 ++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index dad0efa961ed..c542a648231f 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -130,6 +130,22 @@ cpsw3g_phy3: ethernet-phy@3 {
 	};
 };
 
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core0>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core1>;
+};
+
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core0>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core1>;
+};
+
 &main_pmx0 {
 	main_mmc1_pins_default: main-mmc1-pins-default {
 		pinctrl-single,pins = <
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 8424cd071955..1540a4c39b86 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -332,3 +332,19 @@ mbox_m4_0: mbox-m4-0 {
 &mailbox0_cluster7 {
 	status = "disabled";
 };
+
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core0>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core1>;
+};
+
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core0>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core1>;
+};
-- 
2.30.1

