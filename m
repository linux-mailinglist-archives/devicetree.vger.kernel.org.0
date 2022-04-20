Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9D9508468
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 11:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351237AbiDTJFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 05:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350929AbiDTJFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 05:05:38 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AFCB11C36
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:02:52 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id r13so2137028ejd.5
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=foQFpGHqqj8Zbkae3n6kdc3vhIY9cGB7YcoNoAYo2bQ=;
        b=BznkQZIXKRiH3LhEji4u7i1sQ9dIsbmqhWL9AkpgxUonKJ0EVT0hk1g/dM3RXlCMRU
         VOT5tVcXYzxqx5b/1LwQtmTqArjKdlo81S/EXHwVKtA89JWj3FzAL9d+qZqd3af6BUyt
         Y+QwPO++GiUaAcws9hbzkYBk41svA1ntnM3WDjNacGwIwaV91zd1F5IdOIW9Q5mdHLhI
         C/G6dDdZUghuQtAUeNj5HLO6KBCM6CCaFHIn8Y2Bp39V1Yli87EJgFQ2G+45R+kprZRp
         9kWYR4C5t+Rm3LoVxI2oqNMex0BUlCaMfHeC1eM7Dbr3f2j+ouZg2xvKeq7W4Ducm5I9
         tXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=foQFpGHqqj8Zbkae3n6kdc3vhIY9cGB7YcoNoAYo2bQ=;
        b=70UjBrFMGlCOcKeQXSHGdQ+H2Z2APzSzzSFi8VT0VbKDC8Y8j4pOj/wvjEkHjlztzM
         tch2GlJL8SPHobaMj3/oUDjoAbGyTpJU5TaVJwd8Gk+eXcU6ZHJ2HLv2ekrbxNfcoZ/y
         bI8XDfrz9+E6LP4reTveiAGwiSijBUN2SeHOEy0rScgTXSoOM1HjPZ7KUbn0sr/V7Wn/
         jYe41WC0YGI6byNOMS6BqNVw/e4sWhjfi1Ijym//k4yezaamSl1uyp/Ggl8Ri4nO/VWU
         uGU2Uue0VPFs++DnZjDAW38IVYmefJeD7b8BtyN969fLY+ci3o8jEDRHXXiwpuY1ugQH
         LFCw==
X-Gm-Message-State: AOAM532gsxRriI3djFpnDKb+f/baOmBH7KkQOzMl5zQgt76b0FfVT+Qy
        IjpYSI9xuf0rxqtGMUgT8QCRXuP76wwEXw==
X-Google-Smtp-Source: ABdhPJxPjsH/Qp/3jOahLAHoz7GD8bhLGyxSIXXmsy1RSgKswdJzQ8Onw1hStBX30+djcIxOy+mFMQ==
X-Received: by 2002:a17:906:fd48:b0:6e8:366b:156b with SMTP id wi8-20020a170906fd4800b006e8366b156bmr16715706ejb.317.1650445371144;
        Wed, 20 Apr 2022 02:02:51 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709062a5700b006ccd8fdc300sm6413477eje.180.2022.04.20.02.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 02:02:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: [PATCH v2 1/2] ARM: dts: keystone: align SPI NOR node name with dtschema
Date:   Wed, 20 Apr 2022 11:02:46 +0200
Message-Id: <20220420090247.73410-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

The node names should be generic and SPI NOR dtschema expects "flash".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

---

Changes since v1:
1. Add review tag.
---
 arch/arm/boot/dts/keystone-k2e-evm.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2g-evm.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2g-ice.dts  | 2 +-
 arch/arm/boot/dts/keystone-k2hk-evm.dts | 2 +-
 arch/arm/boot/dts/keystone-k2l-evm.dts  | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2e-evm.dts b/arch/arm/boot/dts/keystone-k2e-evm.dts
index 66fec5f5d081..8f49883a675e 100644
--- a/arch/arm/boot/dts/keystone-k2e-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2e-evm.dts
@@ -137,7 +137,7 @@ partition@180000 {
 };
 
 &spi0 {
-	nor_flash: n25q128a11@0 {
+	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "Micron,n25q128a11";
diff --git a/arch/arm/boot/dts/keystone-k2g-evm.dts b/arch/arm/boot/dts/keystone-k2g-evm.dts
index d800f26b6275..88be868cf71e 100644
--- a/arch/arm/boot/dts/keystone-k2g-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2g-evm.dts
@@ -392,7 +392,7 @@ &qspi {
 	pinctrl-0 = <&qspi_pins>;
 	cdns,rclk-en;
 
-	flash0: m25p80@0 {
+	flash0: flash@0 {
 		compatible = "s25fl512s", "jedec,spi-nor";
 		reg = <0>;
 		spi-tx-bus-width = <1>;
diff --git a/arch/arm/boot/dts/keystone-k2g-ice.dts b/arch/arm/boot/dts/keystone-k2g-ice.dts
index 2a2d38cf0fff..bd84d7f0f2fe 100644
--- a/arch/arm/boot/dts/keystone-k2g-ice.dts
+++ b/arch/arm/boot/dts/keystone-k2g-ice.dts
@@ -325,7 +325,7 @@ &qspi {
 	cdns,rclk-en;
 	status = "okay";
 
-	flash0: m25p80@0 {
+	flash0: flash@0 {
 		compatible = "s25fl256s1", "jedec,spi-nor";
 		reg = <0>;
 		spi-tx-bus-width = <1>;
diff --git a/arch/arm/boot/dts/keystone-k2hk-evm.dts b/arch/arm/boot/dts/keystone-k2hk-evm.dts
index ad4e22afe133..f968af0bfad3 100644
--- a/arch/arm/boot/dts/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2hk-evm.dts
@@ -161,7 +161,7 @@ dtt@50 {
 };
 
 &spi0 {
-	nor_flash: n25q128a11@0 {
+	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "Micron,n25q128a11";
diff --git a/arch/arm/boot/dts/keystone-k2l-evm.dts b/arch/arm/boot/dts/keystone-k2l-evm.dts
index e200533d26a4..32619b3c5804 100644
--- a/arch/arm/boot/dts/keystone-k2l-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2l-evm.dts
@@ -110,7 +110,7 @@ partition@180000 {
 };
 
 &spi0 {
-	nor_flash: n25q128a11@0 {
+	nor_flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "Micron,n25q128a11";
-- 
2.32.0

