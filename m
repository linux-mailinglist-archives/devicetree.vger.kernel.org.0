Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 966FD482ADF
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 12:54:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233001AbiABLyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 06:54:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:39914
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232991AbiABLyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 06:54:08 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CDEB83FFDA
        for <devicetree@vger.kernel.org>; Sun,  2 Jan 2022 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641124441;
        bh=s+v3MJc4Nl4QvmiiVS66JpDno22ZZjPXaQMXmcI3eOY=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=XjKOpVRjF0avhTXC+quSnpP3LMsbFJLm5T+5ZNEeSbL4fbc7pfshs7vroyIsxvWes
         ta+UOwBl6BSqp16ceunkf8BN2r4lVQz6acnXO2zL5jAYkwtEdXr5niZv55ICwoIIbG
         ShaJxX5f/n165D5fuYPraMmZhdmWT3AnGoetbNDyDklj8j38zHidY4IwPMcmr8Pr5x
         HVTcInCeJlAzNTVhAlFQOFXKqi1qiqz5tPTJ2dy/ghaAKZajxAc9+9VyoU7NgjbOcs
         /WsZz8tJbmZD1bGfleK0YxtEJ93kS/xxPY2ZEI2yGkI+5pZpQEhedkdwP7Moyue6Xm
         34zHmVZLfzXlg==
Received: by mail-lf1-f69.google.com with SMTP id b19-20020ac24113000000b004297f324073so3350809lfi.8
        for <devicetree@vger.kernel.org>; Sun, 02 Jan 2022 03:54:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s+v3MJc4Nl4QvmiiVS66JpDno22ZZjPXaQMXmcI3eOY=;
        b=CbGCFWEnntYnqv5W7odSRo02nChADk09tSpR/AFSmLausm4LjMvr/xCjFAqRZqNeuL
         FHFTnWtMdwSFkeJ5Aj3Js9fNPT1tuN0Fg+B3dieUW6DDLJRQOGilq+V/FhEmEiY9vlzM
         sBFs6HKBVGwNYi1ejF2NPNg8UPJShSISpcbeo9PRboimMQ/Qq0eIrNNr0VKzcFYpTfQ/
         VXwTxXv82DbHFnNtPyD5G0iKjho2yMCo0hLBl5SBW+BvBeFrB+4JI/c/x0EN8Y/OWxsF
         le4Qc//omyboqbJnCcQOnOLjzp7I6Uq8/fJ9M/fNdkgtaMCAGlbdjKlk/evMwyz3AsuV
         jdcA==
X-Gm-Message-State: AOAM53333Z8sqGBeBi4mkEhCHI7YR1I0H7QZnTc+b2u4++FT79cMxip+
        SdhVBMeSVy3NAr1407h5cO5TE2+4mn4ohNqT0/zpMoMBxXuTlBjvtnzQ9O1Z6oxknE6CQhpu7pH
        OQHtcXveVl5nQbJGycJ++b7borKA2uO1NW8r0kcE=
X-Received: by 2002:a2e:908b:: with SMTP id l11mr35062623ljg.62.1641124440621;
        Sun, 02 Jan 2022 03:54:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2ENASq9NoZqkvfRm/AVi/Edh2qra7svckBnINHNNInWrR4AU/ujsGjiz61oo7lf8elX+79w==
X-Received: by 2002:a2e:908b:: with SMTP id l11mr35062611ljg.62.1641124440464;
        Sun, 02 Jan 2022 03:54:00 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l2sm2368014lja.51.2022.01.02.03.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jan 2022 03:53:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] arm64: dts: exynos: add necessary clock inputs in Exynos7
Date:   Sun,  2 Jan 2022 12:53:49 +0100
Message-Id: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exynos7 devicetree bindings require more input clocks for TOP0 and
PERIC1 clock controllers, than already provided.  Existing DTS was not
matching the bindings, so let's update the DTS, even though the error
could be in the bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/exynos/exynos7.dtsi | 33 ++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
index c3efbc8add38..3e53ff2be455 100644
--- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
@@ -177,10 +177,11 @@ clock_top0: clock-controller@105d0000 {
 			clocks = <&fin_pll>, <&clock_topc DOUT_SCLK_BUS0_PLL>,
 				 <&clock_topc DOUT_SCLK_BUS1_PLL>,
 				 <&clock_topc DOUT_SCLK_CC_PLL>,
-				 <&clock_topc DOUT_SCLK_MFC_PLL>;
+				 <&clock_topc DOUT_SCLK_MFC_PLL>,
+				 <&clock_topc DOUT_SCLK_AUD_PLL>;
 			clock-names = "fin_pll", "dout_sclk_bus0_pll",
 				      "dout_sclk_bus1_pll", "dout_sclk_cc_pll",
-				      "dout_sclk_mfc_pll";
+				      "dout_sclk_mfc_pll", "dout_sclk_aud_pll";
 		};
 
 		clock_top1: clock-controller@105e0000 {
@@ -218,12 +219,32 @@ clock_peric1: clock-controller@14c80000 {
 			compatible = "samsung,exynos7-clock-peric1";
 			reg = <0x14c80000 0xd00>;
 			#clock-cells = <1>;
-			clocks = <&fin_pll>, <&clock_top0 DOUT_ACLK_PERIC1>,
+			clocks = <&fin_pll>,
+				 <&clock_top0 DOUT_ACLK_PERIC1>,
 				 <&clock_top0 CLK_SCLK_UART1>,
 				 <&clock_top0 CLK_SCLK_UART2>,
-				 <&clock_top0 CLK_SCLK_UART3>;
-			clock-names = "fin_pll", "dout_aclk_peric1_66",
-				      "sclk_uart1", "sclk_uart2", "sclk_uart3";
+				 <&clock_top0 CLK_SCLK_UART3>,
+				 <&clock_top0 CLK_SCLK_SPI0>,
+				 <&clock_top0 CLK_SCLK_SPI1>,
+				 <&clock_top0 CLK_SCLK_SPI2>,
+				 <&clock_top0 CLK_SCLK_SPI3>,
+				 <&clock_top0 CLK_SCLK_SPI4>,
+				 <&clock_top0 CLK_SCLK_I2S1>,
+				 <&clock_top0 CLK_SCLK_PCM1>,
+				 <&clock_top0 CLK_SCLK_SPDIF>;
+			clock-names = "fin_pll",
+				      "dout_aclk_peric1_66",
+				      "sclk_uart1",
+				      "sclk_uart2",
+				      "sclk_uart3",
+				      "sclk_spi0",
+				      "sclk_spi1",
+				      "sclk_spi2",
+				      "sclk_spi3",
+				      "sclk_spi4",
+				      "sclk_i2s1",
+				      "sclk_pcm1",
+				      "sclk_spdif";
 		};
 
 		clock_peris: clock-controller@10040000 {
-- 
2.32.0

