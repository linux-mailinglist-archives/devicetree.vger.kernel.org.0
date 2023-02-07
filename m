Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E91D368DC86
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 16:08:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232586AbjBGPIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 10:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232550AbjBGPI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 10:08:26 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2611330EB5
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 07:08:22 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id u10so8197398wmj.3
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 07:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QanlvCxRAxNh0Aitpwd4RYe4ua1rl5xSvSA8lFNTtWw=;
        b=y7FNB7/R4II5pcYBayBqRSarruWI7pyoaSbUCapJ0nML1/iHBjcspYzalKk9cJL9Wd
         DiZTazGtlrHrztWq8Aq2gwt7M+41PlZxd8WtoU3y8NqdVmS9OgXAv4l392WnHWrn1DnM
         cpPGV+yNfMMbK2sK66RZD2UJPQ/JL2TM9ZaCBALGO0SfWFp2oF9HcyQuMXM4rVASPSQs
         XmMJavgYceC4sPoF2KXgttz6Av6SQquuDWMIuXtRJhWKuR93Dbl4uRUokad63L/WeucA
         SniS0P/bGI45FAmvsRkIzRIHjqdhNz0Ngnb0G+lIeRQ1vE1xoPh+csPvat6P7LHjx7OY
         3azg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QanlvCxRAxNh0Aitpwd4RYe4ua1rl5xSvSA8lFNTtWw=;
        b=LV3KZKpEbm0No4qTNIgnOtzOXeWYRN/HT4boeliJJsD9R92WvHcjmARZebJldl34VB
         ufQ+k6HCGzVMbCmSlRwarKdnJUmYhnqQ6SboPLeF3Q99m0V0m8hlN4f7DiHaexuSd96b
         VGAOKLNXWBlCa5pMWTJGE3tBrg3+3s9BjXJ00xgkv/xHY0hlIuLm7CCLnurFN/tZTaR8
         h8Za9jKoR+mw7cM156AOqEmKsQF3eoc/2ZnM65q4Cl6uLhDo5q3FJ4UVKmoCaAFJLOGO
         hzNo9NyeVZxd1QGuXW7JJHIJnAedVM5+X1fyNxOZtNET78+sJthyN5e2KPC6tqmm8z8o
         myuA==
X-Gm-Message-State: AO0yUKXyImI5C2tvzF+YphEVcQXvncO7syU1j0+3i7IhAHZ3yQsVLixO
        lLecqg/fQofoDCUcOtDk4MIkkg==
X-Google-Smtp-Source: AK7set/ApDuZBr+dcZIgvzCXDf8imlD5bcnHGLhZATLXygZx8ZLHKqYTjIk5AUcpqAVmKSdW74QrDA==
X-Received: by 2002:a05:600c:16c4:b0:3da:270b:ba6b with SMTP id l4-20020a05600c16c400b003da270bba6bmr3446241wmn.41.1675782500704;
        Tue, 07 Feb 2023 07:08:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b003db0ad636d1sm22092173wms.28.2023.02.07.07.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 07:08:20 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 07 Feb 2023 16:07:59 +0100
Subject: [PATCH 6/8] arm64: dts: amlogic: meson-s4: fix apb4 bus node name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-b4-amlogic-bindings-fixups-v2-v1-6-93b7e50286e7@linaro.org>
References: <20230207-b4-amlogic-bindings-fixups-v2-v1-0-93b7e50286e7@linaro.org>
In-Reply-To: <20230207-b4-amlogic-bindings-fixups-v2-v1-0-93b7e50286e7@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Yuntian Zhang <yt@radxa.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following bindings check error:
apb4@fe000000: $nodename:0: 'apb4@fe000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index ad50cba42d19..f24460186d3d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -85,7 +85,7 @@ gic: interrupt-controller@fff01000 {
 			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
-		apb4: apb4@fe000000 {
+		apb4: bus@fe000000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xfe000000 0x0 0x480000>;
 			#address-cells = <2>;

-- 
2.34.1

