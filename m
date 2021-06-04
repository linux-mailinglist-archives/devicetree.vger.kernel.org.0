Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2D9439C1BF
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbhFDU7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:11 -0400
Received: from foss.arm.com ([217.140.110.172]:48070 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230177AbhFDU7L (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:11 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7612F1478;
        Fri,  4 Jun 2021 13:57:24 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8F7283F719;
        Fri,  4 Jun 2021 13:57:23 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH v3 6/6] dt-bindings: mailbox : arm,mhuv2: Use example with matching schema
Date:   Fri,  4 Jun 2021 21:57:10 +0100
Message-Id: <20210604205710.1944363-7-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604205710.1944363-1-sudeep.holla@arm.com>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the example provided in arm,mhuv2 schema complains as below:

    Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml :0:0:
    /example-0/soc/scb@2e000000: failed to match any schema with compatible:
    ['fujitsu,mb86s70-scb-1.0']

Fix it by using an example with a matching schema that makes use of 4
mailboxes that is well suited to demonstrate Rx and Tx channels with both
doorbell and data transfer protocols.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../bindings/mailbox/arm,mhuv2.yaml           | 25 +++++++++----------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml b/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
index 6608545ea66f..a4f1fe63659a 100644
--- a/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
+++ b/Documentation/devicetree/bindings/mailbox/arm,mhuv2.yaml
@@ -192,18 +192,17 @@ additionalProperties: false
             arm,mhuv2-protocols = <1 1>, <1 7>, <0 2>;
         };
 
-        mhu_client: scb@2e000000 {
-            compatible = "fujitsu,mb86s70-scb-1.0";
-            reg = <0 0x2e000000 0 0x4000>;
-
-            mboxes =
-                     //data-transfer protocol with 5 windows, mhu-tx
-                     <&mhu_tx 2 0>,
-                     //data-transfer protocol with 7 windows, mhu-tx
-                     <&mhu_tx 3 0>,
-                     //doorbell protocol channel 4, doorbell 27, mhu-tx
-                     <&mhu_tx 4 27>,
-                     //data-transfer protocol with 1 window, mhu-rx
-                     <&mhu_rx 0 0>;
+        mhu_client: dsp@596e8000 {
+            compatible = "fsl,imx8qxp-dsp";
+            reg = <0 0x596e8000 0 0x88000>;
+            clocks = <&adma_lpcg 0>, <&adma_lpcg 1>, <&adma_lpcg 2>;
+            clock-names = "ipg", "ocram", "core";
+            power-domains = <&pd 0>, <&pd 1>, <&pd 2>, <&pd 3>;
+            mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
+            mboxes = <&mhu_tx 2 0>, //data-transfer protocol with 5 windows, mhu-tx
+                     <&mhu_tx 3 0>, //data-transfer protocol with 7 windows, mhu-tx
+                     <&mhu_rx 2 27>, //doorbell protocol channel 2, doorbell 27, mhu-rx
+                     <&mhu_rx 0 0>;  //data-transfer protocol with 1 window, mhu-rx
+            memory-region = <&dsp_reserved>;
         };
     };
-- 
2.25.1

