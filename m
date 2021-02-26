Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C387E326449
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 15:44:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbhBZOn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 09:43:58 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:50380 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbhBZOn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 09:43:57 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgwJ0112846;
        Fri, 26 Feb 2021 08:42:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614350578;
        bh=/Wg8jRavjISgUpoRVGQFNlUP+ZanQ3mFUxH2LdCqQiI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=R6ABi2lNLK0dRmb5uv34jNoygrUYhrj/W2tntuYqVbtBlIVq8fE0MMG2Vm+hK0OVd
         5C6gRjPoTTD+2sFGjXTPIJCQoPN5WPHfOj+/Z4UTk+lqWy5r+k0qWu/V+6u70jgZfD
         WpV5LO2qbuYl3oKcdv0HE37ZM7nYCt00z9IMXy6k=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QEgwxA044108
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 26 Feb 2021 08:42:58 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 08:42:57 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 08:42:57 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QEgv9k019436;
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
Subject: [PATCH v4 1/5] dt-bindings: arm: ti: Add bindings for AM642 SoC
Date:   Fri, 26 Feb 2021 08:42:53 -0600
Message-ID: <20210226144257.5470-2-d-gerlach@ti.com>
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
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
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

