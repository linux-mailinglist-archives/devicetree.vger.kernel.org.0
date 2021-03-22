Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6B4343E97
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:57:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230429AbhCVK5C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:57:02 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:35704 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230332AbhCVK4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:56:36 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F3rz45QNGzmj4MB
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 13:56:32 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id boWgVWG-o7zx for <devicetree@vger.kernel.org>;
        Mon, 22 Mar 2021 13:56:32 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4F3rz26B3ZzmfJt7;
        Mon, 22 Mar 2021 13:56:30 +0300 (MSK)
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
Subject: [PATCH v2 3/4] dt-bindings: arm: add compatible strings for Forlinx OKA40i-C
Date:   Mon, 22 Mar 2021 13:55:37 +0300
Message-Id: <20210322105538.3475183-4-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
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

 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 08607c7ec1..096405aedc 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -224,6 +224,11 @@ properties:
           - const: empire-electronix,m712
           - const: allwinner,sun5i-a13
 
+      - description: Forlinx OKA40i-C Development board
+        items:
+          - const: forlinx,oka40i-c
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

