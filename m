Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16DA960CFC3
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 16:59:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbiJYO7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 10:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232782AbiJYO7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 10:59:22 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EFF8C1ACA8B
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 07:59:21 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03DCD1042;
        Tue, 25 Oct 2022 07:59:28 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 388873F71A;
        Tue, 25 Oct 2022 07:59:20 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, soc@kernel.org,
        Icenowy Zheng <uwu@icenowy.me>,
        =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: add compatible strings for Lctech Pi
Date:   Tue, 25 Oct 2022 15:59:08 +0100
Message-Id: <20221025145909.2837939-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025145909.2837939-1-andre.przywara@arm.com>
References: <20221025145909.2837939-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Lctech Pi F1C200s is a small development board using the Allwinner
F1C200s SoC.

Add the compatible string list to the bindings documentation.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index c6e0ad7f461dd..cbdfc1c247a2b 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -366,6 +366,12 @@ properties:
           - const: lamobo,lamobo-r1
           - const: allwinner,sun7i-a20
 
+      - description: Lctech Pi F1C200s
+        items:
+          - const: lctech,pi-f1c200s
+          - const: allwinner,suniv-f1c200s
+          - const: allwinner,suniv-f1c100s
+
       - description: Libre Computer Board ALL-H3-CC H2+
         items:
           - const: libretech,all-h3-cc-h2-plus
-- 
2.25.1

