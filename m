Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD9339C1BA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 22:57:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbhFDU7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 16:59:05 -0400
Received: from foss.arm.com ([217.140.110.172]:48014 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230177AbhFDU7E (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 16:59:04 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E731412FC;
        Fri,  4 Jun 2021 13:57:17 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0BA873F719;
        Fri,  4 Jun 2021 13:57:16 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>
Subject: [PATCH v3 1/6] dt-bindings: mailbox : arm,mhu: Fix arm,scpi example used here
Date:   Fri,  4 Jun 2021 21:57:05 +0100
Message-Id: <20210604205710.1944363-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604205710.1944363-1-sudeep.holla@arm.com>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Once the arm,scpi binding is converted to YAML format, the following
errors will be seen when doing `make DT_CHECKER_FLAGS=-m dt_binding_check`

From schema: Documentation/devicetree/bindings/firmware/arm,scpi.yaml
Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:
	scpi@2f000000: $nodename:0: 'scpi' was expected
Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:
	scpi@2f000000: reg: [[0, 788529152, 0, 512]] is not of type 'object'
Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:
	scpi@2f000000: 'shmem' is a required property

Fix those error following the SCPI bindings.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 Documentation/devicetree/bindings/mailbox/arm,mhu.yaml | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
index d07eb00b97c8..496308d91a86 100644
--- a/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
+++ b/Documentation/devicetree/bindings/mailbox/arm,mhu.yaml
@@ -126,9 +126,15 @@ additionalProperties: false
             clock-names = "apb_pclk";
         };
 
-        mhu_client_scpi: scpi@2f000000 {
+        scpi {
             compatible = "arm,scpi";
-            reg = <0 0x2f000000 0 0x200>;
             mboxes = <&mhuB 1 4>; /* HP-NonSecure, 5th doorbell */
+            shmem = <&cpu_scp_hpri>; /* HP-NonSecure */
+
+            scpi_devpd: power-controller {
+                compatible = "arm,scpi-power-domains";
+                num-domains = <2>;
+                #power-domain-cells = <1>;
+            };
         };
     };
-- 
2.25.1

