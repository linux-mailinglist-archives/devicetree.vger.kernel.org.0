Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02B7458EB08
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 13:12:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbiHJLMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 07:12:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231392AbiHJLLh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 07:11:37 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F32DD6580B
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:11:33 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id l10so11141553lje.7
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 04:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=MTvbXjWSZdoTdxi/MGUg+5CYiWwb+h69AxhprDFl7dg=;
        b=ji00btkdbQCHm8ePTKk8JGslms699uCMzw48PWG5K0BlNNTW1378zkcKX+Khyon9lJ
         xBNpo9MT649Cnyx1brkYeh60sED0Skz3qFyJvHQ1SQDkE+fHGM15yNrR4m2a1FVOKCGT
         5z+L3AchbHVT8aPDyRjmXo7T1bkJ4KmiNK+5u5/5xtFi0H4etJjqYPB79QKyMjbZDsFt
         IHS+SOi6D17uqVo2x7Jds9WaMODbqbg0/JjbA/++GHp1MZwxUYw7bAWpeG8b+jje8pD0
         NHOJv2yuftWUNPoqDY0lpyXWaQXo1D41hZNqOZCcXCKpqO4xEZlRrniNqKiP22Bb3t65
         D4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=MTvbXjWSZdoTdxi/MGUg+5CYiWwb+h69AxhprDFl7dg=;
        b=CRYDQFfuPAAMd47Xw7kgMUlqU3cnqNG5urM5gDUpLDaC9vihMozIck6Hh1xTvPz9Os
         ZZKV5y/qbUDui1B5CaqwNt4gV3iaQyVBGY3hcNhZpnjMvMp1sn9KrKaChUoBN9Cc8tqs
         t3CR6ZwyCIaQfUa5PhdOlOl1O4pPisTuvPgqf81rtE6fEigemHZXucR5cIeEJS5nUAZ4
         y3Z4eFT9Pv53yjIJ6zvmnlyxY8mmEP8A/BuNtno1W22pPb7m8q0tUtIkmUpNYLcbs9HH
         XFOWyCSLIzE3JWsf1iTFxBTkjDSNRS5ojVlx9ImGiKiz4Udk4V2UUqo6qv0KxmiMpWNx
         VCdw==
X-Gm-Message-State: ACgBeo1j6zbAHeG4CvsHGaCqunUNhOuvsmD3VyS4OXHBHtUgNEk2dbAn
        EM+RLb1G5f9KzSYGIAMkSlw0Xw==
X-Google-Smtp-Source: AA6agR6sYbkUd4hpt0tN0uHYQXMQ6CcLADQReCb0ugSZqyXlxkc++xWQN0SSbi4NbLLIgDzkcupPRA==
X-Received: by 2002:a2e:a58e:0:b0:25f:d8c5:3898 with SMTP id m14-20020a2ea58e000000b0025fd8c53898mr4614556ljp.302.1660129893525;
        Wed, 10 Aug 2022 04:11:33 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id z24-20020a196518000000b0048afbe9d0fasm308577lfb.45.2022.08.10.04.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 04:11:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Qin Jian <qinjian@cqplus1.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: sunplus: sp7021: drop incorrect spi-max-frequency
Date:   Wed, 10 Aug 2022 14:11:31 +0300
Message-Id: <20220810111131.281262-1-krzysztof.kozlowski@linaro.org>
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

spi-max-frequency is a property of a SPI slave device, not controller:

  sunplus-sp7021-demo-v3.dtb: spi@f480: Unevaluated properties are not allowed ('spi-max-frequency' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/sunplus-sp7021.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/sunplus-sp7021.dtsi b/arch/arm/boot/dts/sunplus-sp7021.dtsi
index 7dc4ce3619c7..ae9bbe0320b8 100644
--- a/arch/arm/boot/dts/sunplus-sp7021.dtsi
+++ b/arch/arm/boot/dts/sunplus-sp7021.dtsi
@@ -211,7 +211,6 @@ spi_controller1: spi@f480 {
 			interrupt-names = "dma_w", "master_risc", "slave_risc";
 			clocks = <&clkc CLK_SPI_COMBO_1>;
 			resets = <&rstc RST_SPI_COMBO_1>;
-			spi-max-frequency = <25000000>;
 			status = "disabled";
 		};
 
@@ -225,7 +224,6 @@ spi_controller2: spi@f600 {
 			interrupt-names = "dma_w", "master_risc", "slave_risc";
 			clocks = <&clkc CLK_SPI_COMBO_2>;
 			resets = <&rstc RST_SPI_COMBO_2>;
-			spi-max-frequency = <25000000>;
 			status = "disabled";
 		};
 
@@ -239,7 +237,6 @@ spi_controller3: spi@f780 {
 			interrupt-names = "dma_w", "master_risc", "slave_risc";
 			clocks = <&clkc CLK_SPI_COMBO_3>;
 			resets = <&rstc RST_SPI_COMBO_3>;
-			spi-max-frequency = <25000000>;
 			status = "disabled";
 		};
 
-- 
2.34.1

