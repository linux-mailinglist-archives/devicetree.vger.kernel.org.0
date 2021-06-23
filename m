Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B17E63B1F38
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 19:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbhFWRI4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 13:08:56 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55342 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbhFWRI4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 13:08:56 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NH6VKU089523;
        Wed, 23 Jun 2021 12:06:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624467991;
        bh=JVM9aVi+ZdDGczFR1OGhE6zoF4Y30GKuJVhJY6TgzRE=;
        h=From:To:CC:Subject:Date;
        b=AGIW1B4RXP/fBkHyZeqjZgDfmrgrwTrJlZdLLnuqZL1T8bKMFZIcfbMmMekvvD6EJ
         ADSvO5IEk7GS4GZn3MzT3BVSfnjydg5Mxt2TPz9E6dy7w0oLgdd2K3xLJJ7PTTjoSx
         QY9rr1kBLQzs2aetNmbGMezoB9oC2zleW+0b0B4U=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NH6Vm7046186
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 12:06:31 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 12:06:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 12:06:31 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NH6U9T078327;
        Wed, 23 Jun 2021 12:06:30 -0500
Received: from localhost ([10.250.33.41])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 15NH6UeO015995;
        Wed, 23 Jun 2021 12:06:30 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>
CC:     Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] dt-bindings: irqchip: Update pruss-intc binding for K3 AM64x SoCs
Date:   Wed, 23 Jun 2021 12:06:30 -0500
Message-ID: <20210623170630.1430-1-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The K3 AM64x SoCs also have a ICSSG IP that is similar to existing K3
AM65x and J721E SoCs. The ICSSG interrupt controller is identical to
that of the INTC on J721E SoCs, and supports 20 host interrupts and
160 input events from various SoC interrupt sources. All the 8 output
host interrupts are routed to multiple entities though. Update the
PRUSS interrupt controller binding with this information, though the
same K3 compatible shall be used for the ICSSG INTC on AM64x SoCs.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 .../bindings/interrupt-controller/ti,pruss-intc.yaml          | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
index 051beb45d998..65523d9459d8 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
@@ -46,7 +46,7 @@ properties:
                               AM437x family of SoCs,
                               AM57xx family of SoCs
                               66AK2G family of SoCs
-      Use "ti,icssg-intc" for K3 AM65x & J721E family of SoCs
+      Use "ti,icssg-intc" for K3 AM65x, J721E and AM64x family of SoCs
 
   reg:
     maxItems: 1
@@ -95,6 +95,8 @@ properties:
             - AM65x and J721E SoCs have "host_intr5", "host_intr6" and
               "host_intr7" interrupts connected to MPU, and other ICSSG
               instances.
+            - AM64x SoCs have all the 8 host interrupts connected to various
+              other SoC entities
 
 required:
   - compatible
-- 
2.30.1

