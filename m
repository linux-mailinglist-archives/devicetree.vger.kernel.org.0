Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 840942C386E
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 06:21:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726284AbgKYFUW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 00:20:22 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53956 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725845AbgKYFUV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 00:20:21 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K8DZ017865;
        Tue, 24 Nov 2020 23:20:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606281608;
        bh=yJnajnoIewRiq2mRRT15PWO6lnYYTlmj/QDOBS2T3c8=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=x3uheoD+E4nZFJdoXNs0zmeRR+a7UkNlCYk/RnffFZ1HJsAtbjDeHxJuzzl/H9P+x
         AMV2++GfjH6Skgv0W9iNuMYi5zMnBuaGOdpuAjoFLha6lXwn5pLNM1QgzPLQkZ/HBY
         /ThspkcVE/IprEIYrrBci8K0FUDMwidDq65rCMVo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AP5K8U6043726
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 24 Nov 2020 23:20:08 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 24
 Nov 2020 23:20:07 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 24 Nov 2020 23:20:07 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AP5K7aR125193;
        Tue, 24 Nov 2020 23:20:07 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH 1/3] dt-bindings: arm: ti: Add bindings for AM642 SoC
Date:   Tue, 24 Nov 2020 23:20:02 -0600
Message-ID: <20201125052004.17823-2-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201125052004.17823-1-d-gerlach@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
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
---
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

