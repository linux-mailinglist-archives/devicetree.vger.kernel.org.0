Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D18279E497
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 12:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239568AbjIMKJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 06:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236742AbjIMKJK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 06:09:10 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 902681727
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:09:06 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9a65f9147ccso848069866b.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 03:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694599745; x=1695204545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RBuDcsIBg3E//Vv/9g5CCU2fgfEAOAgpt5kUuVffHJ0=;
        b=vBYnAR+NAGQeH9kr41dbTEgv+Sq5ADtvV/zAXfSUzrLqFKmrP9vYuVwBySRwBhEm88
         sSh5d1z/BHBrxbZocBrd2kUHb88QMXEcjPySGQfdxB0JOwKygOSA26kt3JuZHPaw/5E/
         jeYDNpPiHDXTGBjOXYQvKX92wDxIS81f2+R7+ZDwCG0d6uB8UcgrkdQVkNm1SlExCO/c
         O3UaarS25hxnT2x0/zA75NVDsXq8RxfJp3WVZxQOSu/bBm7QDb0NVdlxPzgz+IMd/Xh4
         KveQddKXEC5kqBoCSwV46Sn31iy0r9PvPqYevNgWgSSkOmNf+s0GYBcdxsiqSmKvyzx3
         vd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694599745; x=1695204545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RBuDcsIBg3E//Vv/9g5CCU2fgfEAOAgpt5kUuVffHJ0=;
        b=aeaAiXBbMfVZH/mv9RxMkM8wG7T+o1fUn/jHJO3LqN1GjSvL5FBiJPsb4UiSBpkyTB
         T8b/mgdtUkcDa9jEtyoIgmLuxRrujEPorNvc8qSCBosXmoTHZQ1sENTibQ0ztjeH466g
         EKdvw4jNqDrIIWlJ+iSAR07OjBel6qMJBbnXv09blx96I4WtsAXlmeXFFmOXuKFuzmMP
         0Juloxy0RM5zI38EfsXixSiXeJcxVsgZXKoumBkB0xk3koQ7DHySCnZhXJB5Gjy4FGYr
         t50kMpvPGnemh9hTmNJC2pVXk7kOT3vBVFfEY/ydPQlDMLyQ02UuJwiqbgjfYyXC/+QB
         eLIQ==
X-Gm-Message-State: AOJu0YxsER8+1LgWFaKnG8F2W7pcbLYH3M8GlxTgi3hP3TM1hyHnjrkx
        vhSMc4CXXJnrtTSSedbEUUDh6g==
X-Google-Smtp-Source: AGHT+IF/yRHvcLucaXStR591Lxu4VFassY8xgrQ/r0PBfb2nok2oOPNsZ7YjEkUux11cIYQqO3UCgw==
X-Received: by 2002:a17:907:270e:b0:9a1:c00e:60cb with SMTP id w14-20020a170907270e00b009a1c00e60cbmr1779516ejk.10.1694599744967;
        Wed, 13 Sep 2023 03:09:04 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c13-20020a170906340d00b00982a352f078sm8119757ejb.124.2023.09.13.03.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 03:09:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: aspeed: drop unused ref_voltage ADC property
Date:   Wed, 13 Sep 2023 12:09:01 +0200
Message-Id: <20230913100901.100365-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Aspeed ADC "ref_voltage" property is neither documented nor used.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts   | 2 --
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts | 2 --
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts  | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
index 0715cb9ab30c..d7baa02e4666 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtmitchell.dts
@@ -541,7 +541,6 @@ bmc_ast2600_cpu: temperature-sensor@35 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 
 	pinctrl-names = "default";
@@ -552,7 +551,6 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	ref_voltage = <2500>;
 	status = "okay";
 
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
index 7a53f54833a0..a86bc75a9182 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-greatlakes.dts
@@ -211,7 +211,6 @@ &i2c13 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
 			&pinctrl_adc2_default &pinctrl_adc3_default
@@ -220,7 +219,6 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc8_default &pinctrl_adc10_default
 			&pinctrl_adc11_default &pinctrl_adc12_default
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
index 64075cc41d92..4097e3d355cb 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
@@ -596,7 +596,6 @@ i2c-mux@72 {
 };
 
 &adc0 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc0_default &pinctrl_adc1_default
 			&pinctrl_adc2_default &pinctrl_adc3_default
@@ -605,7 +604,6 @@ &pinctrl_adc4_default &pinctrl_adc5_default
 };
 
 &adc1 {
-	ref_voltage = <2500>;
 	status = "okay";
 	pinctrl-0 = <&pinctrl_adc8_default &pinctrl_adc9_default>;
 };
-- 
2.34.1

