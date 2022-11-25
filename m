Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1826638C89
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:42:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbiKYOmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:42:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbiKYOmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:42:03 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B47E53E0B6
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:43 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id bp15so7159437lfb.13
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/5v6IfA/ubg2nJLOKQQG234MZiHjjc5dgAnhVX0L/s=;
        b=v73NYCBjG/HomZkRNgmtOXhKv9cDQF46tMMBfqYc9ma2DNFgUChhr1kRR4/N5cNR78
         lv/CTaeOxTdpJopTBlfwwU1FQKFo5Dr+k6DSfMB/vP0q2JVfU327ncYXBGyzuSSe0ioA
         xCh3szZ4Ju2wPRvEw3heXC2hkaEwhkGjfPWhcDiOYN+WyM44YzdVli4uW9OJnUdJYbE1
         J1e0fqamTsPgRgUXqeg++Q/NAx8x4+nipbaopQXn5McLgoDkJk5udBz0lfVzDay7z4dp
         LZsfO7Gu4co2UDIyarq+s8o1/UEBYd0iOXpx5vUvDEp7IF7Z3mScOD40ZFG66FGU2Xtr
         PJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z/5v6IfA/ubg2nJLOKQQG234MZiHjjc5dgAnhVX0L/s=;
        b=atHtWwCx4W5a6LkaCwrdALOkAllSP6B9A61CszHem4DV9dhA24XdVb+stbtZDcyYpX
         HR/8yMPfUdT7EqOeV0fC3ToXmdEy7juvrfLXs8MEHOq5D+HKHUOKJUVxXnSOdjXwvfwq
         QfEFADvJRW2exO6yAZXKDy9NpHRYJVslzHAbl57XWQZwZ5M9hnrtpcYA6kMtf6dcAZfd
         96Hb9s5YUFKinDiki0dLdLiV1c9RxOTN+CGtp3q0SBcTIjAdnfE0CvvYiNqYnHkFfoTz
         KDhfJSGj58M3PPSAXFxjljHjtBB4i+CM1uQYtCEjWmTrtdIsSELaki5ZCx/Gys9zutiC
         G92g==
X-Gm-Message-State: ANoB5pktoAt/wGKV1OFIbZRqZmSTcLgPEMI31j+bJflgSZzwbnWCaNso
        mC7N1X+ZjhiDNOh7JW9dP76tBw==
X-Google-Smtp-Source: AA0mqf7XBjlNHsnGinQ/ZJ5ekm8hErX7jb3UzC0AoUVOflTI2G0Ga0tLnzkPrVnr4q3TRO4R7Dlq4A==
X-Received: by 2002:a19:791c:0:b0:4b4:dd9:1880 with SMTP id u28-20020a19791c000000b004b40dd91880mr7436620lfc.289.1669387303294;
        Fri, 25 Nov 2022 06:41:43 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i20-20020a2ea234000000b0027738fd1eb6sm384995ljm.110.2022.11.25.06.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amlogic: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:41 +0100
Message-Id: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern:

  amlogic/meson-sm1-bananapi-m5.dtb: leds: 'blue' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
index cadba194b149..028220ed45ad 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
@@ -81,13 +81,13 @@ hdmi_connector_in: endpoint {
 	leds {
 		compatible = "gpio-leds";
 
-		green {
+		led-green {
 			color = <LED_COLOR_ID_GREEN>;
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_LOW>;
 		};
 
-		blue {
+		led-blue {
 			color = <LED_COLOR_ID_BLUE>;
 			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio_ao GPIOAO_11 GPIO_ACTIVE_LOW>;
-- 
2.34.1

