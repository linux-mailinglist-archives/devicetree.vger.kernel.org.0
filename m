Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 524CB2FDAD4
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 21:30:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387811AbhATU3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:29:12 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:44418 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387696AbhATU1x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:27:53 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPW4a084083;
        Wed, 20 Jan 2021 14:25:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611174332;
        bh=anbAmcxVQ26Xqvyl15OSRimT263fiLng37o8D9w5B14=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ojI+aVUBa+P6/To/3nFqXu04JCYfNgRHuK7iwGpcXpjUpbjy/cQpDMOEEUVJJ4RSo
         To6Wz4xHtiw8IK2HMyvXZUkxBh2tEsCMOvIN8OHsUKM1aFQKTsk4a+CLbqP7dG861q
         xD+7x9jE1dX9dFMz3iSVPSQkv+6G6E8F4WFaiPI0=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KKPWQB125783
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 14:25:32 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 14:25:32 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 14:25:32 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPW8V078365;
        Wed, 20 Jan 2021 14:25:32 -0600
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
Subject: [PATCH v3 2/5] dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
Date:   Wed, 20 Jan 2021 14:25:29 -0600
Message-ID: <20210120202532.9011-3-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210120202532.9011-1-d-gerlach@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
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

