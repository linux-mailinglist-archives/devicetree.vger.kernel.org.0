Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABFCB58ECB3
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 15:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbiHJNCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 09:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232546AbiHJNCT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 09:02:19 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 548E86CD30
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:02:17 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id z6so13695549lfu.9
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=K0mvUFS7V/RwPSh8F9kCJdOLQG8VGYNUewMvM4jhxKg=;
        b=przzxeN2c7jELSdIKjzEbd8C/UMZ/RjsCCTNwSja7CrRuObcj5Zi/R6OzOBjB7WEli
         pwYCCnVj/fE8+n3UPO8u3z8goG17bvTNWSseywJ6Seukzmi1xtSpvDO4CjkSQhjg2EEK
         bNGZxT2rs4YiRFtuTxV1rcf3L7DTeXlwQnR+yoBhZ6dn/6VSqb+15U85rsKH/wKgVz9t
         L7v2EUMgX/Jcl/8mxPrF69mBrgeRkK/3lQBYgjyJV2YYreaOvWVarLbScZ7XK0ondgNm
         Lw8k395ca/x63sXiP+EHVgQ6WGiAUTSGMf+88X/jvSKI+fPkZ8Lf4vQwdjBDA3ckZ+rd
         oPug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=K0mvUFS7V/RwPSh8F9kCJdOLQG8VGYNUewMvM4jhxKg=;
        b=vmaxvdK3jvlE9OSZ5kgfRAjTdC2WSGV1yTj3csJSZQiEgpJNF/JFnz/zY347rLgShz
         xh5p//W8U/UNCZRoyWaegJ31BvtLinTo1C48adjvG/onQK0CDqzLoRj761GiOCx37Wj/
         CKI28HbzRlliy2gAENPm9HU5/AYyAOybeVsfVALo93sxVumOreGPcIQwrQGqh/HM1Lrt
         RSAz8WY8E3sdoJyBIM8A5kTeFa26RYpfbH9loav8ZYNtH7fW3ElAEBrUmR8UiohnPxTp
         hYdRcad7GNimfYodDgn/CIMuXBozuUKu8VAvMtVbL684utlSAjoPs1E13QFf+fD9ydQA
         4Hlw==
X-Gm-Message-State: ACgBeo2zeXKEZXTjVsSA3LTpprapcOKaUn0kW3QYWu2MIoN+/QmZFy35
        v4fjSzmGoMLRY25JzeMhHPZiNQ==
X-Google-Smtp-Source: AA6agR53EctAfzH4J/soVyFmQmTw2vMLCNjKxJtPTHJd8y867AhsPFgowZipY1nCphjXCROS4enBMw==
X-Received: by 2002:ac2:4ac8:0:b0:48d:13c1:a8c9 with SMTP id m8-20020ac24ac8000000b0048d13c1a8c9mr2196654lfp.269.1660136534946;
        Wed, 10 Aug 2022 06:02:14 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00489da512f5asm340694lfq.86.2022.08.10.06.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 06:02:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: am335x: drop panel endpoint unit address
Date:   Wed, 10 Aug 2022 16:02:12 +0300
Message-Id: <20220810130212.400371-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The endpoint in panel port node should not have unit address:

  am335x-evmsk.dtb: panel: port:endpoint@0: 'reg' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/am335x-evm.dts   | 2 +-
 arch/arm/boot/dts/am335x-evmsk.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/am335x-evm.dts b/arch/arm/boot/dts/am335x-evm.dts
index 25c6ac9913d2..6e34161d327b 100644
--- a/arch/arm/boot/dts/am335x-evm.dts
+++ b/arch/arm/boot/dts/am335x-evm.dts
@@ -126,7 +126,7 @@ panel {
 		backlight = <&backlight>;
 
 		port {
-			panel_0: endpoint@0 {
+			panel_0: endpoint {
 				remote-endpoint = <&lcdc_0>;
 			};
 		};
diff --git a/arch/arm/boot/dts/am335x-evmsk.dts b/arch/arm/boot/dts/am335x-evmsk.dts
index 9c458e5a95b7..5b3278c0c46a 100644
--- a/arch/arm/boot/dts/am335x-evmsk.dts
+++ b/arch/arm/boot/dts/am335x-evmsk.dts
@@ -191,7 +191,7 @@ panel {
 		backlight = <&lcd_bl>;
 
 		port {
-			panel_0: endpoint@0 {
+			panel_0: endpoint {
 				remote-endpoint = <&lcdc_0>;
 			};
 		};
-- 
2.34.1

