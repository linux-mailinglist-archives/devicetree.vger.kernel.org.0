Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B858656867
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 09:28:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbiL0I2F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 03:28:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbiL0I2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 03:28:04 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B68D2666
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:28:03 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8Rmti017638;
        Tue, 27 Dec 2022 02:27:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1672129668;
        bh=oMJ4FPeMkZnO6YuQT5Qyr7UmQmMUx1pUdxiAyBoQDfQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=rRrb+mfafPGIxrDgux44h1sRO+J/KluWspMM+xkOGt+16E6nia87GfNVcdIZvJ5U3
         wZcaFvB9svy9vgwK+/rQn1YNZqrpiRDbN+/hplaytS+7HSPanb2QgiFl/aWnlU8+Sj
         thhcSUjp4V1A307m7M7vvqedSnRBNdFXELwt2cmA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BR8RlM5049793
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Dec 2022 02:27:47 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 27
 Dec 2022 02:27:47 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 27 Dec 2022 02:27:47 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8RkUA037782;
        Tue, 27 Dec 2022 02:27:47 -0600
From:   Jai Luthra <j-luthra@ti.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v5 2/2] dt-bindings: sound: tlv320aic3x: Add optional clock and port properties
Date:   Tue, 27 Dec 2022 13:57:17 +0530
Message-ID: <20221227082717.29561-3-j-luthra@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221227082717.29561-1-j-luthra@ti.com>
References: <20221227082717.29561-1-j-luthra@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe optional properties for clocks and ports that were missing in
the original txt binding, to fix warnings like:

aic33@18: 'assigned-clock-parents', 'assigned-clock-rates',
	'assigned-clocks' do not match any of the regexes:
	'pinctrl-[0-9]+'
	arch/arm/boot/dts/omap2420-n810.dtb

tlv320aic3106@1b: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/am335x-sl50.dtb

codec@18: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/imx6dl-gw5903.dtb
	arch/arm/boot/dts/imx6q-gw5903.dtb

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
index f0375bbf4c40..2f9fc76bba55 100644
--- a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
@@ -110,6 +110,12 @@ properties:
   '#sound-dai-cells':
     const: 0
 
+  clocks: true
+
+  port:
+    description: For DAI connection when the codec is used via graph card
+    type: object
+
 required:
   - compatible
   - reg
-- 
2.17.1

