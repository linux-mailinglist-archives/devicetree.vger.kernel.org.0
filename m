Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE8EA63B5B9
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 00:15:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiK1XPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 18:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbiK1XPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 18:15:36 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A17631DC6
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 15:15:35 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id r76so13350576oie.13
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 15:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bWNRuALmHlwLd0dRUdqiln4ovyKEQnyJm0QeKTP9aLw=;
        b=APYByxRI8ZPATkF7/52v9TLTYoiqE1Q6QlisijbujmPQJPwdjDitAFv+sScKTCY3fP
         Aztb9gIXpjABiZjVXn+p1n8YoNUhKpgnPpiEOEDo/lK6H1vyZVIJp7M+ACcxQxgvop6P
         DXssE3RKTHuvvlQ4YUlGMbynBpU4tUSwuivrocPeK4hmMPObZlvsRPWP2lhu7m0pAYDg
         h4gXX0y/txvKAN2fe4tVmB3OwklRrFltElmqtMav9BvKaG+kfw4+7ZXX9ikqbcyzE4Ta
         F5kkdyKjNuzrTm6JGWY0cnjrQpryhNxE0b6o6td+HT+kWsbe25/6IeIu4pGamqCI4zc3
         perg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bWNRuALmHlwLd0dRUdqiln4ovyKEQnyJm0QeKTP9aLw=;
        b=kTEQzC74qsUMSzS1dvXFGLbOeahYb5O22dGlgGSFFF9ITTrwkXl5uA5KuYUkeVTrcS
         wKolPLHv+GprHC0SxGWcqoV4NYSSHvhkzHHyMWWtF13gnyQtq0SbAKqC2nr056oxE/lC
         k3mWTFUsAM7+cMCsLwUcT2jWHS77W1HHQECFXRTx0Xa1Ul3G4HA5GJyAEzKEwfQhMMx1
         RthD78vBBBhsfUOxhGRBxyxziO8C7pQh1LPHrDdaUigK37yz7VwXO3Pr+03Jqz8oE+VJ
         KtKOCpT5P8dPM0PjuKZvR2f5qqROcOGPHCCaKvFhalxra2/wCWjcn2Vr1XKLVNs7MCdu
         sLDg==
X-Gm-Message-State: ANoB5pnqarf9mSprk2outVmz9/CLLt0bQgq1QcH/HAesxgCd4y2jt11Y
        5ucmOVzaIh5rMmtk1820eWGdbP7VNxs=
X-Google-Smtp-Source: AA0mqf7ReI0qcY8TmYUaUiBnsbgDNabFtEzzOXK/7V3nr4Fasxg8TBOM5N895HzMlvSBlze7bhzGjQ==
X-Received: by 2002:a54:468f:0:b0:35b:872b:edfc with SMTP id k15-20020a54468f000000b0035b872bedfcmr11117477oic.187.1669677334248;
        Mon, 28 Nov 2022 15:15:34 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i2-20020a056871028200b00136c20b1c59sm6521865oae.43.2022.11.28.15.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 15:15:33 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
Date:   Mon, 28 Nov 2022 17:15:28 -0600
Message-Id: <20221128231528.23360-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Hynitron cst340 touchscreen driver to the Anbernic
RG353P and RG353V devices. Note the RG353VS device does not have a
touchscreen.

https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/

Changes since V1:
 - Removed 'status = "okay";', as it was never disabled.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 19 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 12 ++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 63cff402f3a8..8aa93c646bec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -95,6 +95,18 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
 };
 
 &pinctrl {
@@ -104,6 +116,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	touch {
+		touch_rst: touch-rst {
+			rockchip,pins =
+				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &rk817 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index 885234a023e1..f49ce29ba597 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -82,6 +82,18 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
 };
 
 &pinctrl {
-- 
2.25.1

