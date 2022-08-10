Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3799058EAF5
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 13:11:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbiHJLK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 07:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232017AbiHJLKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 07:10:54 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A41B231DDF
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:10:53 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z16so17286029wrh.12
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ZXDkuKVtFtOkhKoR1XODHZxLlyrvRv3Ry5Tngvz2gyY=;
        b=OQXX4QLQMYQPiYS8PwE8zS/kAVTCMty20DhumTTK/+cQUFcjeYz7Q3bzJpiqQ8C/+y
         Dy8WeNYy/aUS8/ITf8EmL/+aT7xAh1mhTXrM1HwY86hhHQFxcyBqFNWxxkOs5Ext8gIh
         gIxOFdvC/rupcBlnGp+Vt/Ee2OjKUIf9m5PpP5ivbG1O95RAcwiBrjnzdLCkVkKksqub
         sYTgQFIUGNHRNGWxkZWQIG35AyseD9xRtRgsQrDWam6CDX0LRir4vuBxPOXglUpA1PCV
         cZ+IGm87ALNE7RKtWP2vQW8AJG4+OWbv4vEN/5R2HX5l+x2HIBsCEwflcx39stThS97G
         kDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ZXDkuKVtFtOkhKoR1XODHZxLlyrvRv3Ry5Tngvz2gyY=;
        b=0htLuLJx27KNgw6HOmtxc755lhYKvJf+p6IIf0QdEfS41n1gp9FwjBNuy9/EMAiGi+
         Az/YtSeD+IwQpPR5JxLy0gszIC2G0n0c/7t/YFz+u/tahwzOJp/PNLpJkzZkXcsJjBbn
         57BLuEJkjlqbQCVfuC6flidUPMVOLZ/DV0isxOF1ZUzhoE+db9a1aH6I5DhSHohV496l
         O40AYa/muF/a94PAZCE8CA4WM6oNQtiOJ4A4KUO/We1V+cZJ4y774twnxdkPiTG4wg/+
         Dqv7aeR0MpkQPH/wAkslA/0Rcv+63cNetpEmQ/Xq2JkmDJIoE5yW2sGoNOnDSFGWNPDN
         fHtg==
X-Gm-Message-State: ACgBeo38gW0aXkyNyeIvU1J1gPd40A8Rd0MBzS2LwFLz++0U6EzOcvAl
        YTVRtTNg1U0i40Ad3KyyGerNzFFoL3CfjBUB
X-Google-Smtp-Source: AA6agR4iK4PVj2d/oteNSxIhX4uqeyPP2FXIwUZ4tY+CcD8AoHxoX11LFOaNF2SEqjHLFIoLy6LqNQ==
X-Received: by 2002:a05:651c:98d:b0:25d:eb67:7160 with SMTP id b13-20020a05651c098d00b0025deb677160mr8181966ljq.385.1660129841147;
        Wed, 10 Aug 2022 04:10:41 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id a5-20020a056512390500b0048aeafde9b8sm304641lfu.108.2022.08.10.04.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 04:10:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ste: ux500: align SPI node name with dtschema
Date:   Wed, 10 Aug 2022 14:10:37 +0300
Message-Id: <20220810111037.280959-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ste-ux500-samsung-codina-tmo.dts | 2 +-
 arch/arm/boot/dts/ste-ux500-samsung-codina.dts     | 2 +-
 arch/arm/boot/dts/ste-ux500-samsung-gavini.dts     | 2 +-
 arch/arm/boot/dts/ste-ux500-samsung-janice.dts     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-codina-tmo.dts b/arch/arm/boot/dts/ste-ux500-samsung-codina-tmo.dts
index d6940e0afa86..17dff403f77a 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-codina-tmo.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-codina-tmo.dts
@@ -239,7 +239,7 @@ magnetometer@c {
 		};
 	};
 
-	spi-gpio-0 {
+	spi {
 		compatible = "spi-gpio";
 		/* Clock on GPIO220, pin SCL */
 		sck-gpios = <&gpio6 28 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-codina.dts b/arch/arm/boot/dts/ste-ux500-samsung-codina.dts
index 5f41256d7f4b..9db490cc395b 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-codina.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-codina.dts
@@ -325,7 +325,7 @@ nfc@2b {
 		};
 	};
 
-	spi-gpio-0 {
+	spi {
 		compatible = "spi-gpio";
 		/* Clock on GPIO220, pin SCL */
 		sck-gpios = <&gpio6 28 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-gavini.dts b/arch/arm/boot/dts/ste-ux500-samsung-gavini.dts
index 806da3fc33cd..79d43fc68cd8 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-gavini.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-gavini.dts
@@ -269,7 +269,7 @@ magnetometer@2e {
 	/*
 	 * TODO: See if we can use the PL023 for this instead.
 	 */
-	spi-gpio-0 {
+	spi {
 		compatible = "spi-gpio";
 		/* Clock on GPIO220, pin SCL */
 		sck-gpios = <&gpio6 28 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/ste-ux500-samsung-janice.dts b/arch/arm/boot/dts/ste-ux500-samsung-janice.dts
index ed5c79c3d04b..b34bd19ad815 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-janice.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-janice.dts
@@ -263,7 +263,7 @@ magnetometer@2e {
 	 * this derivative is 3wire support, so it cannot be used to drive
 	 * this panel interface. We have to use GPIO bit-banging instead.
 	 */
-	spi-gpio-0 {
+	spi {
 		compatible = "spi-gpio";
 		/* Clock on GPIO220 */
 		sck-gpios = <&gpio6 28 GPIO_ACTIVE_HIGH>;
-- 
2.34.1

