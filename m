Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEE8E28FE49
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 08:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394238AbgJPG0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 02:26:23 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:63391 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394010AbgJPG0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 02:26:22 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 09G6Njfq073161;
        Fri, 16 Oct 2020 14:23:45 +0800 (GMT-8)
        (envelope-from billy_tsai@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.9) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 16 Oct
 2020 14:26:08 +0800
From:   Billy Tsai <billy_tsai@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <jae.hyun.yoo@linux.intel.com>, <billy_tsai@aspeedtech.com>,
        <haiyue.wang@linux.intel.com>, <james.feist@linux.intel.com>,
        <vernon.mauery@linux.intel.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
CC:     <BMC-SW@aspeedtech.com>
Subject: [PATCH 3/3] dt-bindings: Change the meaning of clock-frequency
Date:   Fri, 16 Oct 2020 14:26:02 +0800
Message-ID: <20201016062602.20014-4-billy_tsai@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201016062602.20014-1-billy_tsai@aspeedtech.com>
References: <20201016062602.20014-1-billy_tsai@aspeedtech.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.10.9]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 09G6Njfq073161
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Integration of the usage of msg-timing and addr-timing to clock-frequency.
User can just set it to adjust the peci work efficient.

Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
---
 .../devicetree/bindings/peci/peci-aspeed.yaml | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
index 0f5c2993fe9b..7c6c895784af 100644
--- a/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
+++ b/Documentation/devicetree/bindings/peci/peci-aspeed.yaml
@@ -40,31 +40,33 @@ properties:
     maxItems: 1
 
   clock-frequency:
-    # Operation frequency of PECI controller in units of Hz.
-    minimum: 187500
-    maximum: 24000000
-
-  msg-timing:
-    description: |
-      Message timing negotiation period. This value will determine the period
-      of message timing negotiation to be issued by PECI controller. The unit
-      of the programmed value is four times of PECI clock period.
-    allOf:
-      - $ref: /schemas/types.yaml#/definitions/uint32
-      - minimum: 0
-        maximum: 255
-        default: 1
-
-  addr-timing:
-    description: |
-      Address timing negotiation period. This value will determine the period
-      of address timing negotiation to be issued by PECI controller. The unit
-      of the programmed value is four times of PECI clock period.
-    allOf:
-      - $ref: /schemas/types.yaml#/definitions/uint32
-      - minimum: 0
-        maximum: 255
-        default: 1
+    # The bit frequency of PECI negotiation stage in units of Hz.
+    # Driver will calculate the best divisor setting of msg-timing and
+    # addr-timing to meet the value.
+    minimum: 2000
+    maximum: 2000000
+
+  # msg-timing:
+  #   description: |
+  #     Message timing negotiation period. This value will determine the period
+  #     of message timing negotiation to be issued by PECI controller. The unit
+  #     of the programmed value is four times of PECI clock period.
+  #   allOf:
+  #     - $ref: /schemas/types.yaml#/definitions/uint32
+  #     - minimum: 0
+  #       maximum: 255
+  #       default: 1
+
+  # addr-timing:
+  #   description: |
+  #     Address timing negotiation period. This value will determine the period
+  #     of address timing negotiation to be issued by PECI controller. The unit
+  #     of the programmed value is four times of PECI clock period.
+  #   allOf:
+  #     - $ref: /schemas/types.yaml#/definitions/uint32
+  #     - minimum: 0
+  #       maximum: 255
+  #       default: 1
 
   rd-sampling-point:
     description: |
@@ -114,9 +116,7 @@ examples:
             interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
             clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
             resets = <&syscon ASPEED_RESET_PECI>;
-            clock-frequency = <24000000>;
-            msg-timing = <1>;
-            addr-timing = <1>;
+            clock-frequency = <2000000>;
             rd-sampling-point = <8>;
             cmd-timeout-ms = <1000>;
         };
-- 
2.17.1

