Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8611E2615BE
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 18:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731897AbgIHQzm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 12:55:42 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33712 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731192AbgIHQXU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 12:23:20 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088GN9eV097446;
        Tue, 8 Sep 2020 11:23:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599582189;
        bh=x/rKSXUELA6Du+H0VkyjLL4V+Np1/m74/bvdXedTLE0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=QfrEtzgPi1SKjY6iHFxD1adRuNSKZgZxsqedpFNLEtQNIpDlm4NbKp7CTHXr963DD
         3bkM4HBkGwVkg13eW2+BNKkflVZJHQ45C2zIDbzRs6wRhGMJ3DNIRyUoY57eTTpUPS
         2HhgkqoHLSAOUrBQAvsROwyxbWCNrhxJWZtnMUhw=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088GN9hS123724
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 11:23:09 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 11:23:09 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 11:23:09 -0500
Received: from lokesh-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088GMqAq044781;
        Tue, 8 Sep 2020 11:23:05 -0500
From:   Lokesh Vutla <lokeshvutla@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v3 3/5] dt-bindings: arm: ti: Add bindings for J7200 SoC
Date:   Tue, 8 Sep 2020 21:52:50 +0530
Message-ID: <20200908162252.17672-4-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200908162252.17672-1-lokeshvutla@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
It is targeted for automotive gateway, vehicle compute systems,
Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
The SoC aims to meet the complex processing needs of modern embedded
products.

Some highlights of this SoC are:
* Dual Cortex-A72s in a single cluster, two clusters of lockstep
  capable dual Cortex-R5F MCUs and a Centralized Device Management and
  Security Controller (DMSC).
* Configurable L3 Cache and IO-coherent architecture with high data
  throughput capable distributed DMA architecture under NAVSS.
* Integrated Ethernet switch supporting up to a total of 4 external ports
  in addition to legacy Ethernet switch of up to 2 ports.
* Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
  20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C and
  I2C, eCAP/eQEP, eHRPWM among other peripherals.
* One hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
  management.

See J7200 Technical Reference Manual (SPRUIU1, June 2020)
for further details: https://www.ti.com/lit/pdf/spruiu1

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c5e3e4aeda8e..829751209543 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -28,4 +28,8 @@ properties:
       - description: K3 J721E SoC
         items:
           - const: ti,j721e
+
+      - description: K3 J7200 SoC
+        items:
+          - const: ti,j7200
 ...
-- 
2.28.0

