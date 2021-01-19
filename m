Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E6392FBCC9
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 17:46:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728366AbhASQqH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 11:46:07 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55014 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389176AbhASQlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 11:41:08 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdSpn100338;
        Tue, 19 Jan 2021 10:39:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611074368;
        bh=3rXS1uD1AGfqytfOCi41tiYQDkbK9ow6UKOvzO7MFlc=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=hfQwR+aebkWBgGHnTxQneZCyA7iNtaXkaWr1ch+kBIY9dkKJpwY+Csd/uo7nn+1L3
         YPN6R2GybFaNO8Zdu8HuHIis3y3I4EnAxcpa7Xu5HNlEn0V5NdclIOvLeK9+tFzoXg
         CL8ahqqBtI8F13kVlAsqqX9I1hsFuhZw2ghxN8n4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10JGdS5W071648
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jan 2021 10:39:28 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 Jan 2021 10:39:27 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 Jan 2021 10:39:27 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdRhs046730;
        Tue, 19 Jan 2021 10:39:27 -0600
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
Subject: [PATCH v2 2/5] dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
Date:   Tue, 19 Jan 2021 10:39:24 -0600
Message-ID: <20210119163927.774-3-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210119163927.774-1-d-gerlach@ti.com>
References: <20210119163927.774-1-d-gerlach@ti.com>
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
---
v1 -> v2:
* New patch to add needed macros for pinctrl in board dts.

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

