Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82BAC2FDAD0
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 21:30:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732732AbhATU1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:27:53 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49234 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388193AbhATU0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 15:26:37 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPW4k039653;
        Wed, 20 Jan 2021 14:25:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611174332;
        bh=XQCT5KP9fyg68TKUBWqsug+cm7ZJ8pzWsmcIveGqVj8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=pHsf7Dczu7IQyWfvlHiHBWvNCW/iJBje24abv7lyE1sBU3i00YKBIMWsRadFTLWZw
         OSdVL/yvMG7ETzjHyJv5YNyEamzQRJbhJ1RihANWpFp/tjNDZzQm5REgYZIyF2McsP
         mxfwpvQ9e10q6clbBN2aTiFQZQxRBxDf+6MiUm6A=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KKPWa1012231
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 14:25:32 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 14:25:32 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 14:25:32 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KKPWiD045033;
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
Subject: [PATCH v3 1/5] dt-bindings: arm: ti: Add bindings for AM642 SoC
Date:   Wed, 20 Jan 2021 14:25:28 -0600
Message-ID: <20210120202532.9011-2-d-gerlach@ti.com>
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

The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
providing advanced system integration to enable applications such as
Motor Drives, PLC, Remote IO and IoT Gateways.

Some highlights of this SoC are:
* Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
  MCUs, and a single Cortex-M4F.
* Two Gigabit Industrial Communication Subsystems (ICSSG).
* Integrated Ethernet switch supporting up to a total of two external
  ports.
* PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
  controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
  peripherals.
* Centralized System Controller for Security, Power, and Resource
  Management (DMSC).

See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
for further details: https://www.ti.com/lit/pdf/spruim2

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v1: https://patchwork.kernel.org/project/linux-arm-kernel/patch/20201125052004.17823-2-d-gerlach@ti.com/

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c6e1c1e63e43..393f94a64f8d 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -33,6 +33,12 @@ properties:
         items:
           - const: ti,j7200
 
+      - description: K3 AM642 SoC
+        items:
+          - enum:
+              - ti,am642-evm
+          - const: ti,am642
+
 additionalProperties: true
 
 ...
-- 
2.28.0

