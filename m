Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA2B16598B6
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 14:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiL3N1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 08:27:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbiL3N1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 08:27:02 -0500
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A313B71
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 05:27:00 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BUDQl7p049625;
        Fri, 30 Dec 2022 07:26:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1672406807;
        bh=dbCx/VXUiWAoUqcghBEwXB4ZiVVFhxpChn2d7CnKOXU=;
        h=From:To:CC:Subject:Date;
        b=ZIW+RKVz4OU9MFov9wSeeSoFO4Vyjv+6tywWrO+5IoE5KwZxvN5FTq7qfr4kRvlG+
         dYBQ/v6pbJr0L0V/6HRcLVLkSeR8tFcg6Qe/1fcEjZU9/GBm3r1WIizA5RY0gccWHv
         1SO8ofVJSaHSU0zaAQoKWxAEzi/No8hpV813c55Q=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BUDQlrF010566
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 30 Dec 2022 07:26:47 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 30
 Dec 2022 07:26:47 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 30 Dec 2022 07:26:47 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BUDQkpp003672;
        Fri, 30 Dec 2022 07:26:46 -0600
From:   Jai Luthra <j-luthra@ti.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v2] dt-bindings: sound: tlv320aic3x: Add optional clock and port properties
Date:   Fri, 30 Dec 2022 18:56:44 +0530
Message-ID: <20221230132644.6398-1-j-luthra@ti.com>
X-Mailer: git-send-email 2.17.1
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

tlv320aic3106@1b: 'port' does not match any of the regexes:
	'pinctrl-[0-9]+'
	arch/arm/boot/dts/am335x-sl50.dtb

codec@18: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/imx6dl-gw5903.dtb
	arch/arm/boot/dts/imx6q-gw5903.dtb

Some uses of "port" still lead to warnings because they pass clocks in
the endpoint, but that is discouraged:
https://lore.kernel.org/all/20210205152644.GA3083322@robh.at.kernel.org/

Signed-off-by: Jai Luthra <j-luthra@ti.com>
---

Splitting this patch from v5 of the old series, as the base bindings in 
[1/2] were picked in broonie's tree

v2:
- Add maxItems to clocks
- Use audio-graph-port bindings

v1:
https://lore.kernel.org/all/20221227082717.29561-3-j-luthra@ti.com/

 .../devicetree/bindings/sound/ti,tlv320aic3x.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
index f0375bbf4c40..e8ca9f3369f8 100644
--- a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
@@ -110,6 +110,13 @@ properties:
   '#sound-dai-cells':
     const: 0
 
+  clocks:
+    maxItems: 1
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
-- 
2.17.1

