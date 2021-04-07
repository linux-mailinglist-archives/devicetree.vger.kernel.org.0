Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2B4356AE7
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 13:15:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351775AbhDGLPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 07:15:55 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:5219 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351779AbhDGLPx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 07:15:53 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdn5tb7zmkqgH
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 14:15:41 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id AqhgwYC1WsNc for <devicetree@vger.kernel.org>;
        Wed,  7 Apr 2021 14:15:41 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdm1fFczmSqbr;
        Wed,  7 Apr 2021 14:15:40 +0300 (MSK)
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
Subject: [PATCH v4 4/5] dt-bindings: arm: add compatible for Forlinx OKA40i-C and FETA40i-C
Date:   Wed,  7 Apr 2021 14:14:27 +0300
Message-Id: <20210407111428.3755684-5-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The FETA40i-C is a SoM by Forlinx based on the Allwinner R40/A40i SoC.
The OKA40i-C is a carrier/development board by the same company based on
this SoM.

This patch adds compatible strings for these two devices in preparation for
the next patch containing a devicetree for them.

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

 1 file changed, 6 insertions(+)

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
-- 
2.25.1

