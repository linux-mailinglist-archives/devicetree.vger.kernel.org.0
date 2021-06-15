Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A09F73A89DD
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 21:57:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbhFOT7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 15:59:37 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:52926 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbhFOT7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 15:59:37 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvTcY058847;
        Tue, 15 Jun 2021 14:57:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623787049;
        bh=dB52xRW1I+vq58CSWMl193nOHbNKIIwoOqIFgrGNbjQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=uZGrmnrWNNirFNlY8gIxREL4Li4EaMSvjUG2kPx0hFkqqOjC+PFCzNrEs4gVmXH3E
         1sAkweGuA8mEcDC1NdN4az18BeVEC/3vnGvA3z1YUWIPEJrTKqwqrCb/GXM+IdWK80
         PMnDuYJEMeOzNcyjGDw1df261nyfHBuUFK9sIrn4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15FJvTtR063703
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Jun 2021 14:57:29 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 15
 Jun 2021 14:57:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 15 Jun 2021 14:57:29 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15FJvTWL090276;
        Tue, 15 Jun 2021 14:57:29 -0500
Received: from localhost ([10.250.35.153])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 15FJvTC2015557;
        Tue, 15 Jun 2021 14:57:29 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 2/3] arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
Date:   Tue, 15 Jun 2021 14:57:17 -0500
Message-ID: <20210615195718.15898-3-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210615195718.15898-1-s-anna@ti.com>
References: <20210615195718.15898-1-s-anna@ti.com>
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
v2:
No code changes, rebased and retained the presence after the mailbox nodes

 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 16 ++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 16 ++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index dc69db2d10c3..2e75cd68f8b7 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -469,6 +469,22 @@ &mailbox0_cluster7 {
 	status = "disabled";
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
 &serdes_ln_ctrl {
 	idle-states = <AM64_SERDES0_LANE0_PCIE0>;
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 40124007259d..4abddea92cf5 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -368,6 +368,22 @@ &mailbox0_cluster7 {
 	status = "disabled";
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
 &pcie0_rc {
 	status = "disabled";
 };
-- 
2.30.1

