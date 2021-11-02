Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44B03443726
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 21:17:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231222AbhKBUU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 16:20:28 -0400
Received: from mga07.intel.com ([134.134.136.100]:13749 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230429AbhKBUUY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 16:20:24 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="294812571"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="294812571"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2021 13:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
   d="scan'208";a="500738819"
Received: from maru.jf.intel.com ([10.54.51.77])
  by orsmga008.jf.intel.com with ESMTP; 02 Nov 2021 13:17:48 -0700
From:   jae.hyun.yoo@intel.com
To:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        openipmi-developer@lists.sourceforge.net
Subject: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
Date:   Tue,  2 Nov 2021 13:37:16 -0700
Message-Id: <20211102203717.96794-6-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Add 'clocks' as a required property.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
v1 -> v2:
Changes sinve v1:
 - Added 'clocks' property into kcs-bmc bindings using
   'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
   'aspeed-lpc.yaml' yet. The bindings merging could be done using a
   separate patch later.

 .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 4ff6fabfcb30..92ec0da047f4 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -71,9 +71,14 @@ properties:
     $ref: '/schemas/types.yaml#/definitions/uint32'
     description: The host CPU IO map address
 
+  clocks:
+    maxItems: 1
+    description: Reference clock for the LPC controller
+
 required:
   - compatible
   - interrupts
+  - clocks
 
 additionalProperties: false
 
@@ -96,6 +101,7 @@ allOf:
 
 examples:
   - |
+    #include <dt-bindings/clock/aspeed-clock.h>
     #include <dt-bindings/interrupt-controller/irq.h>
     kcs3: kcs@24 {
         compatible = "aspeed,ast2600-kcs-bmc";
@@ -103,4 +109,5 @@ examples:
         aspeed,lpc-io-reg = <0xca2>;
         aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
         interrupts = <8>;
+        clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
     };
-- 
2.25.1

