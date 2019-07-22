Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A44E96F8B5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 07:08:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbfGVFIv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 01:08:51 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:55404 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbfGVFIv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 01:08:51 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58khR030950;
        Mon, 22 Jul 2019 00:08:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563772127;
        bh=O6OT/ThaOtdEY1GwL80MDtLkFYHPq2abrr5BNLTj0yU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=EKuHeTOblh2kelUDvji+yXyX3RjmKlbnZarrYhPvEjxBd4brSbRcxUDFvF2QnG/Es
         p5dplq7iQh58qLsN1TOj7aPQ9UI1i2CKhsha93m1glUPV6d0Is/pRc4Bnezeu87Kfz
         A8F26Wd7PrsfcYWfXaLM51yYVK95oPcrXge3xAAA=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58kQm062502
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Jul 2019 00:08:46 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:46 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:46 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwN039856;
        Mon, 22 Jul 2019 00:08:44 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v4 2/5] dt-bindings: ti_sci_pm_domains: Add support for exclusive and shared access
Date:   Mon, 22 Jul 2019 10:37:54 +0530
Message-ID: <20190722050757.29893-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TISCI protocol supports for enabling the device either with exclusive
permissions for the requesting host or with sharing across the hosts.
There are certain devices which are exclusive to Linux context and
there are certain devices that are shared across different host contexts.
So add support for getting this information from DT by increasing
the power-domain cells to 2.

Acked-by: Tero Kristo <t-kristo@ti.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../devicetree/bindings/soc/ti/sci-pm-domain.txt      | 11 +++++++++--
 MAINTAINERS                                           |  1 +
 include/dt-bindings/soc/ti,sci_pm_domain.h            |  9 +++++++++
 3 files changed, 19 insertions(+), 2 deletions(-)
 create mode 100644 include/dt-bindings/soc/ti,sci_pm_domain.h

diff --git a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
index f7b00a7c0f68..f541d1f776a2 100644
--- a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
+++ b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
@@ -19,8 +19,15 @@ child of the pmmc node.
 Required Properties:
 --------------------
 - compatible: should be "ti,sci-pm-domain"
-- #power-domain-cells: Must be 1 so that an id can be provided in each
-		       device node.
+- #power-domain-cells: Can be one of the following:
+			1: Containing the device id of each node
+			2: First entry should be device id
+			   Second entry should be one of the floowing:
+			   TI_SCI_PD_EXCLUSIVE: To allow device to be
+						exclusively controlled by
+						the requesting hosts.
+			   TI_SCI_PD_SHARED: To allow device to be shared
+					     by multiple hosts.
 
 Example (K2G):
 -------------
diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e3c4b4..ceb06e7ba6d1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15853,6 +15853,7 @@ F:	drivers/firmware/ti_sci*
 F:	include/linux/soc/ti/ti_sci_protocol.h
 F:	Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
 F:	drivers/soc/ti/ti_sci_pm_domains.c
+F:	include/dt-bindings/soc/ti,sci_pm_domain.h
 F:	Documentation/devicetree/bindings/reset/ti,sci-reset.txt
 F:	Documentation/devicetree/bindings/clock/ti,sci-clk.txt
 F:	drivers/clk/keystone/sci-clk.c
diff --git a/include/dt-bindings/soc/ti,sci_pm_domain.h b/include/dt-bindings/soc/ti,sci_pm_domain.h
new file mode 100644
index 000000000000..8f2a7360b65e
--- /dev/null
+++ b/include/dt-bindings/soc/ti,sci_pm_domain.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
+#define __DT_BINDINGS_TI_SCI_PM_DOMAIN_H
+
+#define TI_SCI_PD_EXCLUSIVE	1
+#define TI_SCI_PD_SHARED	0
+
+#endif /* __DT_BINDINGS_TI_SCI_PM_DOMAIN_H */
-- 
2.21.0

