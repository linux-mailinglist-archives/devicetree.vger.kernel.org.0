Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEE8C39C1BE
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231462AbhFDU7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:11 -0400
Received: from foss.arm.com ([217.140.110.172]:48060 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231406AbhFDU7K (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:10 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C9D312FC;
        Fri,  4 Jun 2021 13:57:23 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 729263F719;
        Fri,  4 Jun 2021 13:57:22 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH v3 5/6] dt-bindings: mailbox : arm,mhu: Use examples with matching schema
Date:   Fri,  4 Jun 2021 21:57:09 +0100
Message-Id: <20210604205710.1944363-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604205710.1944363-1-sudeep.holla@arm.com>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the example provided in arm,mhu schema complains as below:

    Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml :0:0:
    /example-0/soc/scb@2e000000: failed to match any schema with compatible:
    ['fujitsu,mb86s70-scb-1.0']

Fix the same using examples based on Juno platform. The old SCPI firmware
used MHU with standard 32-bit data transfer protocol while the new SCMI
firmware uses MHU and expects to be used in doorbell mode. Update example
with SCPI and SCMI firmware nodes to demonstrate both 32-bit data transfer
and doorbell mode of MHU operations

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/mailbox/arm,mhu.yaml  | 48 +++++++++++++++----
 1 file changed, 38 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
index 496308d91a86..bd49c201477d 100644
--- a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
+++ b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
@@ -101,11 +101,19 @@ additionalProperties: false
             clocks = <&clock 0 2 1>;
             clock-names = "apb_pclk";
         };
+    };
 
-        mhu_client_scb: scb@2e000000 {
-            compatible = "fujitsu,mb86s70-scb-1.0";
-            reg = <0 0x2e000000 0 0x4000>;
+    firmware {
+        scpi {
+            compatible = "arm,scpi";
             mboxes = <&mhuA 1>; /* HP-NonSecure */
+            shmem = <&cpu_scp_hpri>; /* HP-NonSecure */
+
+            scpi_devpd: power-controller {
+                compatible = "arm,scpi-power-domains";
+                num-domains = <2>;
+                #power-domain-cells = <1>;
+            };
         };
     };
 
@@ -125,16 +133,36 @@ additionalProperties: false
             clocks = <&clock 0 2 1>;
             clock-names = "apb_pclk";
         };
+    };
 
-        scpi {
-            compatible = "arm,scpi";
-            mboxes = <&mhuB 1 4>; /* HP-NonSecure, 5th doorbell */
-            shmem = <&cpu_scp_hpri>; /* HP-NonSecure */
+    firmware {
+        scmi {
+            compatible = "arm,scmi";
+            mboxes = <&mhuB 0 0>, /* LP-NonSecure, 1st doorbell */
+                     <&mhuB 0 1>; /* LP-NonSecure, 2nd doorbell */
+            mbox-names = "tx", "rx";
+            shmem = <&cpu_scp_lpri0>,
+                    <&cpu_scp_lpri1>;
 
-            scpi_devpd: power-controller {
-                compatible = "arm,scpi-power-domains";
-                num-domains = <2>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            scmi_devpd: protocol@11 {
+                reg = <0x11>;
                 #power-domain-cells = <1>;
             };
+
+            scmi_dvfs: protocol@13 {
+                reg = <0x13>;
+                #clock-cells = <1>;
+
+                mboxes = <&mhuB 1 2>, /* HP-NonSecure, 3rd doorbell */
+                         <&mhuB 1 3>; /* HP-NonSecure, 4th doorbell */
+                mbox-names = "tx", "rx";
+                shmem = <&cpu_scp_hpri0>,
+                        <&cpu_scp_hpri1>;
+            };
         };
     };
+
+...
-- 
2.25.1

