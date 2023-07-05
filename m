Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B892748735
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 17:01:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232967AbjGEPBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 11:01:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233001AbjGEPAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 11:00:51 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7AF171C
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 08:00:29 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-992ace062f3so816289166b.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 08:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569224; x=1691161224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ygGybh5J4HiCzVZH/vcO/oS1To1mN/20rPoGfDO3dxY=;
        b=tHcNjKVHZgH7Dkkb/hAZTiESF9iVqaiwMkXb2/B2Sk/z1Isf32HplwvpqWzZmZkN89
         9sPMhaSY1SkNXsMzQDBnO3l8p12DTDe26nj2O5ft92YFXH3Uq//YmDLchapz0pJOP06Y
         4qGe/LTgcZR+GHyCA19a5tB93+aWuimKvG0l/OTnWj3m6njD2JsYGWuKpnJBgCNhGI8Z
         MEmGbV8bE+iLco91aoSOQJ+1e91bKU8miYBMKC6cZdtKcAQUT4Bzdllx2ILRAYhLUZeK
         2Rp+9O5zCoKPxX6j344OOH5WnhBtCCYrjepQsGEeYi3hdWdKtEgZF6dJZO2OFkyZxV1r
         XLPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569224; x=1691161224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ygGybh5J4HiCzVZH/vcO/oS1To1mN/20rPoGfDO3dxY=;
        b=YA97e0iS75fraEfUxtTS6ETRm8l0fDpv/Y612+7X/OfFP4lFFUAlFvgbs+TX1VXGYB
         zx189MGSRBxFAlzV0xlg+PTm7wOmbXdXIi4pyARtTMIUWjodzYVPfF4WayvinDHU6vp3
         yBn1XP+oxTQ6YEKlTYwNAX6PclLJWVB7e/M35U3cnc0++8TYAQ6YxB0b5lWnsKUNAq7T
         N8TpAMactz4EXqs0yB2WpcXwAYDTE+Ewv5dzNoa5lmLDKYP8oMkz+DvNREQ+6RRYka3K
         tmd9JroGzQPY0Up+FcFIxsO2w3iTl3+A2ep6r35egL5n5ghpjr8z/KUy2FlJTbOXYi9h
         NB6A==
X-Gm-Message-State: AC+VfDxIxsT33w2a+t4FkP2s1DWwOVQ41cowTCb9qhiW8aZXjo7LFo1v
        VBVp1u3K9ZIuW0gNXG1teMlZww==
X-Google-Smtp-Source: ACHHUZ6CKkb8KGu3tDhO4UhzwsLS3dFVqnllbY5O/m5xXr8ymIoiYWCKqanM7MRIFzVjbQFk7qnRJg==
X-Received: by 2002:a17:906:f9d5:b0:97d:9b73:690b with SMTP id lj21-20020a170906f9d500b0097d9b73690bmr12861414ejb.59.1688569224276;
        Wed, 05 Jul 2023 08:00:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id c15-20020a170906528f00b00982a352f078sm14515897ejm.124.2023.07.05.08.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 08:00:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: marvell: add missing space before {
Date:   Wed,  5 Jul 2023 17:00:18 +0200
Message-Id: <20230705150018.293752-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705150018.293752-1-krzysztof.kozlowski@linaro.org>
References: <20230705150018.293752-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi        | 4 ++--
 arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
index 8c61b027eb2c..49cf576e127d 100644
--- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
@@ -135,7 +135,7 @@ mdio: mdio@22004 {
 				clocks = <&cnm_clock>;
 			};
 
-			i2c0: i2c@11000{
+			i2c0: i2c@11000 {
 				compatible = "marvell,mv78230-i2c";
 				reg = <0x11000 0x20>;
 				#address-cells = <1>;
@@ -154,7 +154,7 @@ i2c0: i2c@11000{
 				status = "disabled";
 			};
 
-			i2c1: i2c@11100{
+			i2c1: i2c@11100 {
 				compatible = "marvell,mv78230-i2c";
 				reg = <0x11100 0x20>;
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
index 39ce6e25a8ef..48202810bf78 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-7040-mochabin.dts
@@ -149,7 +149,7 @@ &cp0_spi0 {
 };
 
 /* SPI-NOR */
-&cp0_spi1{
+&cp0_spi1 {
 	status = "okay";
 
 	pinctrl-names = "default";
-- 
2.34.1

