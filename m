Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72B3639E6CC
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 20:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbhFGSo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 14:44:57 -0400
Received: from foss.arm.com ([217.140.110.172]:40236 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230378AbhFGSo4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 14:44:56 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE1D212FC;
        Mon,  7 Jun 2021 11:43:04 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 37D633F73D;
        Mon,  7 Jun 2021 11:43:04 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] dt-bindings: interrupt-controller: Fix compatible used in ti,pruss-intc
Date:   Mon,  7 Jun 2021 19:42:57 +0100
Message-Id: <20210607184257.2010276-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per soc/ti/ti,pruss.yaml schema, only ti,am4376-pruss0 and
ti,am4376-pruss1 are valid compatibles. Replace ti,am4376-pruss with
ti,am4376-pruss1 based on example in soc/ti/ti,pruss.yaml

This fixes the below warning with 'make DT_CHECKER_FLAGS=-m dt_binding_check':

    interrupt-controller/ti,pruss-intc.example.dt.yaml:0:0: /example-1/pruss@0:
    failed to match any schema with compatible: ['ti,am4376-pruss']

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Suman Anna <s-anna@ti.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
index 9731dd4421a1..051beb45d998 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/ti,pruss-intc.yaml
@@ -134,7 +134,7 @@ additionalProperties: false
     /* AM4376 PRU-ICSS */
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     pruss@0 {
-        compatible = "ti,am4376-pruss";
+        compatible = "ti,am4376-pruss1";
         reg = <0x0 0x40000>;
         #address-cells = <1>;
         #size-cells = <1>;
-- 
2.25.1

