Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF4BB544A90
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243963AbiFILke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243951AbiFILkW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:40:22 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2EF1DD4D0
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:51 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id n10so46925230ejk.5
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5S/RV9AELwOaDCH5atX+3Vv8RTm/1jcts99iBeZwt4M=;
        b=VybmEKPiOUE64UwmqZtxQg6qm2ZaPnWtbGUDCGge+zC1GdHHbotVW725SnVA697hd2
         FtuV8Rx86MN3t/2yarLDYZH5tTT4XhvyoCVXprV1T8K8Gvk9vyuHriR1OpiripOoHeJy
         tzVmjuddPAyiMSGjDQR9y5o1EJzeKNNtm/zdi8GiGfmH/zDlaQJe7FX0rF7lRqgZsWhf
         jEzvuGbwAxjyaa5n47Sanp8+BQ8r3KfDS3mj0qyfRqsSdLgd6OyE4EhFq/WpqGHT7ZMi
         fcPNx3nwTrTvG6lefsjWa2Zid9j1Q7SPajzjcOOj33/tYATtCp0tAxlgY0mxKg0/qiH3
         VspA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5S/RV9AELwOaDCH5atX+3Vv8RTm/1jcts99iBeZwt4M=;
        b=new1kTgWijwKHFs7zqJEHXKfGJ/RAgxBQ/pNCbsuzPbyuOqp5Q/7drFlShhkpPt8o/
         70A4pROnYCkEUjedv4OH2LIgDdOZ4jFrFTXKE85LZCgQBV7XxZ9/jooHWbRDC5MZUacN
         0rQ1L90a6vubjnYGsGEhgv2DqwJ4coUe9fiobN5SSyW8B29mzGY6D+ynmPEmAdRakzsA
         LVnoSlj8EdPlvIx9xgPHtdFjpAItJrSjrzNXxrIlFgZvzrhKShAaglP+ula2e1YRQDst
         kyAG/ReyCOcwSk9V68cNudhT7T13a0vlAokE2Uiay6Dz3uMSi/D+J7NOuJE4HqLH2W7V
         wsiA==
X-Gm-Message-State: AOAM532Qygn8pC7QXpyvBqIARX7skr20dwXzOkODr3sWRysd1bePYl5S
        e+yvdwjAyxw63eFW3m2z9jEDJw==
X-Google-Smtp-Source: ABdhPJyg6YBir+KkL8OFmNyegS0qrWC+mP4wqaObXruXdNrN0aPT77oBLvMMt3CU39pXV0dnJbav+g==
X-Received: by 2002:a17:907:7ea9:b0:6fe:d412:ec2c with SMTP id qb41-20020a1709077ea900b006fed412ec2cmr35560777ejc.613.1654774789448;
        Thu, 09 Jun 2022 04:39:49 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c10-20020a170906528a00b0070a80f03a44sm9460415ejm.119.2022.06.09.04.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 14/48] arm64: dts: freescale: align led node names with dtschema
Date:   Thu,  9 Jun 2022 13:39:33 +0200
Message-Id: <20220609113938.380466-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern
with 'led'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts   | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index aa38f5379558..ef6c8967533e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -52,17 +52,17 @@ button-admin {
 	leds {
 		compatible = "gpio-leds";
 
-		sfp1down {
+		led-0 {
 			label = "ten64:green:sfp1:down";
 			gpios = <&gpio3 11 GPIO_ACTIVE_HIGH>;
 		};
 
-		sfp2up {
+		led-1 {
 			label = "ten64:green:sfp2:up";
 			gpios = <&gpio3 12 GPIO_ACTIVE_HIGH>;
 		};
 
-		admin {
+		led-2 {
 			label = "ten64:admin";
 			gpios = <&sfpgpio 12 GPIO_ACTIVE_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
index 92eaf4ef4563..c97f4e06ae5f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
@@ -20,13 +20,13 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_led>;
 
-		user1 {
+		led-1 {
 			label = "TestLed601";
 			gpios = <&gpio4 18 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
 		};
 
-		user2 {
+		led-2 {
 			label = "TestLed602";
 			gpios = <&gpio4 10 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
-- 
2.34.1

