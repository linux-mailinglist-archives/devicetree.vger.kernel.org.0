Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B43F4624C3D
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 21:57:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbiKJU5Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 15:57:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbiKJU5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 15:57:24 -0500
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE114B995
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 12:57:20 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
        by mail.rnplus.nl (Postfix) with ESMTP id 8EA4D37855D
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 21:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
        by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id BQMiox4YoNsY for <devicetree@vger.kernel.org>;
        Thu, 10 Nov 2022 22:02:13 +0100 (CET)
Received: from werkpc.localnet (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
        by mail.rnplus.nl (Postfix) with ESMTPSA id 4D6C93783FD;
        Thu, 10 Nov 2022 22:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
        t=1668114130; bh=VoM321fVgPB6GusYWC5lNZz15OMxNzQ8XFYa0e5mUAI=;
        h=From:To:Cc:Subject:Date;
        b=vmHRR8ua614cwpXqwe/3ccg+XJnY97vhBI17xqTlSkevH00YW6d5acXseaymBg8iN
         kG3D7aY970EVqQjIWclRmoWqvtdAaTXtsyAdJCC6mgmBZB+gFqX5NgJYkR8d8yD0AE
         ukuytkDa+sq838rkn3lfncF88Kb7mCN8phPAElyY=
From:   Renze Nicolai <renze@rnplus.nl>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Andre Przywara <andre.przywara@arm.com>,
        Conley Lee <conleylee@foxmail.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: sunxi: add Pine64 SoPine Clusterboard
Date:   Thu, 10 Nov 2022 21:57:10 +0100
Message-ID: <2335500.ElGaqSPkdT@werkpc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings for the Pine64 SoPine Clusterboard.

Signed-off-by: Renze Nicolai <renze@rnplus.nl>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 3ad1cd50e3fe..00bb4cdfa77f 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -736,6 +736,12 @@ properties:
           - const: pine64,sopine
           - const: allwinner,sun50i-a64
 
+      - description: Pine64 SoPine Clusterboard
+        items:
+          - const: pine64,sopine-clusterboard
+          - const: pine64,sopine
+          - const: allwinner,sun50i-a64
+
       - description: PineRiver Mini X-Plus
         items:
           - const: pineriver,mini-xplus
-- 
2.38.1


