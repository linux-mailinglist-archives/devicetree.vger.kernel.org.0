Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6012E639307
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 02:14:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbiKZBOl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 20:14:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiKZBOk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 20:14:40 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFCA92CDF0
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 17:14:39 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1433ef3b61fso6902701fac.10
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 17:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AOsNWoagzgRZODcbmXOYo+O0l9ki/Luu3MhVCoRxO4I=;
        b=gz4YAyXMWnkDMoS8FoSujGQTdDxbYNBTRT7Ck/9I64JMuecdiuBroS9+Vac98ZpnDI
         rQLX01ZyFwT7dKOVKIYdT0D7nh2NOPPe9j9fMwPiqc/GCe8ndkFRA/5cdxvx08qGc6j7
         suY3SVzryAs0NBrh5fYJPQ+mjt9ucN06Zpi/BMtDhqHHL7s6aVptWySYxV/rWNK3gGP4
         5BHjx2LR43cFRQpa/kFEdkNsEKWrbOwnRVIuebiSAHmIYkkb8K0tx7Q8tzYTH4cmESs/
         ZcgSTMLy/sa+9HX8P6m2CW5vwtNTWtDrnjeLFpCI074z/k2OJNU4Lps+vJW/nyFI6gIk
         OIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AOsNWoagzgRZODcbmXOYo+O0l9ki/Luu3MhVCoRxO4I=;
        b=OP2XAqs8aWCP9118e/J8BhtrFw3kTXGj63a1/LEfm7/B1qzHOfxTOeWE56yJWGsut3
         5Hxvomy+ikYvdMpke1nxntkAIZTJiBqiDeEVnbxlYYVYClqoJlkrCzUcjHIxaGEdHDAh
         oeM1AWlM7Yco1HDQYTyPIyrIW94sqSvLmxt26gQD4ooUvaPZWijaYOh38M5yn67mm3nk
         rEu4z+35mhhhLDygDAMnJBmNNs12AZ+LSztSn/9zEPH0le6J6WrnQngL7Lu0XoItG870
         0pzUxhD01M/SQvKjRftkybEJoAdPKIUwuIFRXXKwLKa1XMUx4u0W8FeN3UVTciTHBnW6
         y1aQ==
X-Gm-Message-State: ANoB5plQjiBN2Pksvgv0gwr/kjNMiCCStqVIfmxaQv6a+8nEZ8k2UWCS
        FHyMI0aOhBqagDt/v6mfVG97Vw5C6HI=
X-Google-Smtp-Source: AA0mqf5UNLW6ajg22soHrRtX6fbml+/xf79Ypr1Yvrbl/wTGQgPbIsguE1qdaszdxWWzj6KwJYTweg==
X-Received: by 2002:a05:6870:9f8c:b0:13c:5763:9406 with SMTP id xm12-20020a0568709f8c00b0013c57639406mr14829608oab.200.1669425278820;
        Fri, 25 Nov 2022 17:14:38 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s191-20020acaa9c8000000b003546fada8f6sm2066177oie.12.2022.11.25.17.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 17:14:38 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
Date:   Fri, 25 Nov 2022 19:14:31 -0600
Message-Id: <20221126011432.22891-1-macroalpha82@gmail.com>
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

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 20 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 13 ++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 63cff402f3a8..06222dead921 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -95,6 +95,19 @@ &i2c2 {
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
+		status = "okay";
+	};
 };
 
 &pinctrl {
@@ -104,6 +117,13 @@ spk_amp_enable_h: spk-amp-enable-h {
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
index 885234a023e1..dc3fc67f5853 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -82,6 +82,19 @@ &i2c2 {
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
+		status = "okay";
+	};
 };
 
 &pinctrl {
-- 
2.25.1

