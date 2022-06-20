Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFFB655234A
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 19:57:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244800AbiFTR5t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 13:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244894AbiFTR5g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 13:57:36 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED9E1EADB
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 10:57:35 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id z7so16136162edm.13
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 10:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5+pVyj/qFEp29tpQxIWH7FoXmtAWrO9FKE1G079+Ajc=;
        b=B/KsLq/Lk+So/UEOtbHZNvxNdkmqZFTLYPB01vscYlpE3VZYXEGaCCHlkU8dt/Sedb
         wgHsQScOTxo+NM7HXzHW6nBEzIpLiV05sHDL8puTKheqmNLuHNC6U5NS+BuXtgH3zoZh
         qXCbvY/ddDIYqqmSEW1oPF7cQn0/kiQZHMs3rufcNi8X3IhLTKebq1FmPRA7o+iS08P4
         RrrXdLI64Ips1Kpsr/pVfNzGh/VlsbpNX7dg+gLZ9Fq1pwGmOp/A/36NXW0yI5jfAs2x
         3mhwUnbaoXIOuM5LWfSwwXAANF8Hnn75RCL82iWfANF+0Wh9PjlsWZsecRXYLPC4rR20
         ixkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5+pVyj/qFEp29tpQxIWH7FoXmtAWrO9FKE1G079+Ajc=;
        b=u8uLCuuXo88vOqFN7nEHWsLwyKuYY3Qh/0N8kZvxSTLll4enMstqobBzpdJAK8yJSi
         df0SIUwxyCjqQ5pieepqW8WSqfS52FrhVx14JQoZTmrAfNmhMAOSwotm7q7AHwUnPYIQ
         jo5cgO8o2bOyQyBgNkWLh6tCd4v53polCdGPhjNl50BPAkPtDOZBtiQ9kmidds2OB+Vy
         kIVe1VCTaBXFs68lpXFQ4/Joab/IeOQyQE6otu6BKTsHkZmtrEdJIRPU62yS2sdi2pTt
         jAjKGGy/7AHuTOwxmZLTgkwsDmOloDLFMlsFjuaSg1ZjN+A2DCvrShRuEjW6f6KoSmyk
         CXtA==
X-Gm-Message-State: AJIora/eIszCcCdO+oUPoPF/P5XDvkN0DL60k6mnU/vcUeToHxsHTvzI
        +YvZpHO7od6Jx6SayFp14YjnWQ==
X-Google-Smtp-Source: AGRyM1uwBUerPKbg2aLvFEQMZWi65D2flR3WDgHeR47VVJOScNTs3Ig31XuCSeyXzV9g+EOZhAlfPg==
X-Received: by 2002:a05:6402:1597:b0:435:88fb:5b1d with SMTP id c23-20020a056402159700b0043588fb5b1dmr5009766edv.316.1655747853793;
        Mon, 20 Jun 2022 10:57:33 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g13-20020aa7c84d000000b004357b717a96sm4309925edt.85.2022.06.20.10.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 10:57:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/8] ARM: dts: exynos: add function and color to LED nodes in Itop Elite
Date:   Mon, 20 Jun 2022 19:57:11 +0200
Message-Id: <20220620175716.132143-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220620175716.132143-1-krzysztof.kozlowski@linaro.org>
References: <20220620175716.132143-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common LED properties - the function and color - to LED nodes in
Exynos4412 Itop Elite, so we can drop in some places deprecated label
property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-itop-elite.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos4412-itop-elite.dts b/arch/arm/boot/dts/exynos4412-itop-elite.dts
index a9406280b979..ccba69dea750 100644
--- a/arch/arm/boot/dts/exynos4412-itop-elite.dts
+++ b/arch/arm/boot/dts/exynos4412-itop-elite.dts
@@ -11,6 +11,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/sound/samsung-i2s.h>
 #include "exynos4412-itop-scp-core.dtsi"
@@ -28,7 +29,8 @@ leds {
 		compatible = "gpio-leds";
 
 		led2 {
-			label = "red:system";
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_RED>;
 			gpios = <&gpx1 0 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 			linux,default-trigger = "heartbeat";
@@ -36,6 +38,7 @@ led2 {
 
 		led3 {
 			label = "red:user";
+			color = <LED_COLOR_ID_RED>;
 			gpios = <&gpk1 1 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 		};
-- 
2.34.1

