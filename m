Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7D473503EC
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 17:57:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233648AbhCaP4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 11:56:31 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:26100 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233689AbhCaP4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 11:56:21 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F9WBr3Rhrzpp5w2
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 18:56:20 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id e8jNeUiiMK4d for <devicetree@vger.kernel.org>;
        Wed, 31 Mar 2021 18:56:19 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F9WBn6n0PzpnMxZ;
        Wed, 31 Mar 2021 18:56:17 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ivan Uvarov <i.uvarov@cognitivepilot.com>
Subject: [PATCH v3 3/4] dt-bindings: arm: add compatible strings for Forlinx OKA40i-C
Date:   Wed, 31 Mar 2021 18:56:15 +0300
Message-Id: <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The OKA40i-C is a carrier/development board for the Forlinx FETA40i-C SoM
based on the Allwinner R40/A40i SoC.

This patch adds the relevant dt-binding documentation in preparation for
the next patch, which adds a devicetree for the SoM and board.

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

 2 files changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 08607c7ec1..74f8decd78 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -224,6 +224,12 @@ properties:
           - const: empire-electronix,m712
           - const: allwinner,sun5i-a13
 
+      - description: Forlinx OKA40i-C Development board
+        items:
+          - const: forlinx,oka40i-c
+          - const: forlinx,feta40i-c
+          - const: allwinner,sun8i-r40
+
       - description: FriendlyARM NanoPi A64
         items:
           - const: friendlyarm,nanopi-a64
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a4..e2ea1a731e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -403,6 +403,8 @@ patternProperties:
     description: Firefly
   "^focaltech,.*":
     description: FocalTech Systems Co.,Ltd
+  "^forlinx,.*":
+    description: Baoding Forlinx Embedded Technology Co., Ltd.
   "^frida,.*":
     description: Shenzhen Frida LCD Co., Ltd.
   "^friendlyarm,.*":
-- 
2.25.1

