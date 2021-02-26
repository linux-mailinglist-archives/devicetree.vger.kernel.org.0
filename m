Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4484A32644A
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:44:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229946AbhBZOoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:44:24 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33004 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbhBZOoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 09:44:24 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgwJ7022567;
        Fri, 26 Feb 2021 08:42:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614350578;
        bh=MLPqA6YEMX83iMS/NaduSa37kQLdL8UmLmKtuMQSlYw=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=myjL8Aq7LM3k5SmLzjWZm8unX6G0+hg7aOcUBsheyEUwOv1JHGBAEPVgaUs2kmwRw
         bxrXxbHZJozP21Jjw2UOtQPJYJSgbERUiq5Sm6Wqc3FlmXz0v+Feu0e5N3UeT7nkgv
         ZvfIem9XTedb2zwHpoilH4A+Pc+hiO4GAFaDd1u4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QEgwVt011540
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 26 Feb 2021 08:42:58 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 08:42:57 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 08:42:58 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgvhH024070;
        Fri, 26 Feb 2021 08:42:57 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v4 2/5] dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
Date:   Fri, 26 Feb 2021 08:42:54 -0600
Message-ID: <20210226144257.5470-3-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210226144257.5470-1-d-gerlach@ti.com>
References: <20210226144257.5470-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pinctrl macros for AM64 SoC. These macro definitions are similar to
that of previous platforms, but adding new definitions to avoid any
naming confusions in the soc dts files.

Unlike what checkpatch insists, we do not need parentheses enclosing
the values for this macro as we do intend it to generate two separate
values as has been done for other similar platforms.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Suman Anna <s-anna@ti.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/pinctrl/k3.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/pinctrl/k3.h b/include/dt-bindings/pinctrl/k3.h
index b0eea7cc6e23..e085f102b283 100644
--- a/include/dt-bindings/pinctrl/k3.h
+++ b/include/dt-bindings/pinctrl/k3.h
@@ -3,7 +3,7 @@
  * This header provides constants for pinctrl bindings for TI's K3 SoC
  * family.
  *
- * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2018-2021 Texas Instruments Incorporated - https://www.ti.com/
  */
 #ifndef _DT_BINDINGS_PINCTRL_TI_K3_H
 #define _DT_BINDINGS_PINCTRL_TI_K3_H
@@ -35,4 +35,7 @@
 #define J721E_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
 #define J721E_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
 
+#define AM64X_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
+#define AM64X_MCU_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
+
 #endif
-- 
2.28.0

