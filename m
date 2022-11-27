Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48CC4639CC9
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 21:30:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiK0Uap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 15:30:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiK0Uan (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 15:30:43 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47C6DFA8
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:30:42 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id r12so14570220lfp.1
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA+RPmQX/tA5i5g4fU5qyxIPxJ2lkva2DHHA8dhulVU=;
        b=tlq/6SbfYRh+ECCRsWkcqxB9GeAwN70+ypUXRAOeFHbIAcYaFjM7QBq26iyzTQ5MLx
         bZVAUSt9CXRqKW+7R88Q4scDZS1o2WQ9csAZxKskbx4PiFRK8ReFMp8VV3AUMhQijHW7
         vELtJX9dc/GOe3BbTH00RhCea0IKAMC0Hsd28X8FrXafwa7cECsI4hTAAJxPnFF0uGkQ
         Rd5dhMo8B4t/rA1+n3CUF37U+CWUNWkdeUSt6BhBuwUEwtlv7c7ZFHwIo03ZsCt9CqoM
         NXoNgj7pHiSUT8BVed8pQibmnWKCC8dKBZV37kL4ak1Gd6qCi/aLZnmNEwliUlfwU/4m
         QhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xA+RPmQX/tA5i5g4fU5qyxIPxJ2lkva2DHHA8dhulVU=;
        b=0nhS2U6r+SqWRi4Dim1YhxIMK3KVbDllX/+04tlkdv+DUrhk555EA1k75QG6YFcpmP
         2yJJMR+X+Bn1GViN3DyY9zeajeqGk71wAS0zOvjiwI8dcYui96QdhaB36SOuduKmw3+5
         dI4tMTRVr2EUGGf/qnpBTbMxlTBhU8ATlXx/4Kawjk7wPTsoJ70BmxhMeYnvhElDSVL2
         y9oIaPuHKRe5Y55EkAUZadv6vrTUTd1uv3cLTCrL/SlV8MwSlJSpeA6hAO/LUNHvANFl
         re/IEzEEAmE3V/wOlAF0yAQMUpAA96Oo6ZgK1ZADLR/KpqeL6hEoBOM7hqvLbSPL2dZ7
         8nmg==
X-Gm-Message-State: ANoB5pnKgd0eWv4pFwWonlWZarDxeQcbKK6uWT9G5v0X6Ut1WqtxQ6QZ
        Lo619F5rxlUCd9MuJZ9RVvapeQ==
X-Google-Smtp-Source: AA0mqf4qmtJprmXLPi/9R6dTAr5wLL0bz8J6NVdmPsB/SXZ/ArRNgEMRusj330I8xSAnf7O6Lx3TbA==
X-Received: by 2002:a05:6512:32d0:b0:4b4:b5ed:c71f with SMTP id f16-20020a05651232d000b004b4b5edc71fmr15771948lfg.227.1669581041293;
        Sun, 27 Nov 2022 12:30:41 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512075400b004a2588520f5sm1398190lfs.166.2022.11.27.12.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 12:30:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] ARM: dts: omap: echo: use preferred enable-gpios for LP5523 LED
Date:   Sun, 27 Nov 2022 21:30:34 +0100
Message-Id: <20221127203034.54092-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221127203034.54092-1-krzysztof.kozlowski@linaro.org>
References: <20221127203034.54092-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The preferred name suffix for properties with single and multiple GPIOs
is "gpios".  Linux GPIO core code supports both.  Bindings are going to
expect the "gpios" one:

  omap3-echo.dtb: lp5523A@32: 'enable-gpio' does not match any of the regexes: '^led@[0-8]$', '^multi-led@[0-8]$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Drop old fix for n900 and correct instead Echo board (Sebastian)
---
 arch/arm/boot/dts/omap3-echo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/omap3-echo.dts b/arch/arm/boot/dts/omap3-echo.dts
index 8f02ff5e7da6..06d2377d28ad 100644
--- a/arch/arm/boot/dts/omap3-echo.dts
+++ b/arch/arm/boot/dts/omap3-echo.dts
@@ -146,7 +146,7 @@ lp5523A: lp5523A@32 {
 		label = "q1";
 		reg = <0x32>;
 		clock-mode = /bits/ 8 <0>; /* LP55XX_CLOCK_AUTO */
-		enable-gpio = <&gpio4 13 GPIO_ACTIVE_HIGH>; /* GPIO_109 */
+		enable-gpios = <&gpio4 13 GPIO_ACTIVE_HIGH>; /* GPIO_109 */
 
 		multi-led@0 {
 			#address-cells = <1>;
-- 
2.34.1

