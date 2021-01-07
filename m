Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B6072ED6CC
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 19:40:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726165AbhAGSkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 13:40:16 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:47596 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbhAGSkQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 13:40:16 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 107IdYPR064723;
        Thu, 7 Jan 2021 12:39:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610044774;
        bh=eyuoLwqnbZ1AoqR4Il55QPI6bOBY6jgGmTXRSZjpz70=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=icidc0wsMqkEcKmA3d7WSmgrC4om34Qtmt95q3PLsOIx6Pa2TcguaUJ7Yy6mYU3TO
         aOcUKI4e2z5iW6qV1piiUwmFhofWiGaCrw40aRNx9wZ2mcXVXf8IBEmD3UMMCjVAyA
         R2XVc0IaGLY46Z4RJzOAUL0BzgSI4yfG217s85YM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 107IdYxi032422
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 7 Jan 2021 12:39:34 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 7 Jan
 2021 12:39:34 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 7 Jan 2021 12:39:34 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 107IdYqd096610;
        Thu, 7 Jan 2021 12:39:34 -0600
Received: from localhost ([10.250.33.36])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 107IdXOd128891;
        Thu, 7 Jan 2021 12:39:33 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 3/5] arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
Date:   Thu, 7 Jan 2021 12:39:05 -0600
Message-ID: <20210107183907.6545-4-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210107183907.6545-1-s-anna@ti.com>
References: <20210107183907.6545-1-s-anna@ti.com>
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

