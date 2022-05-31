Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A38C539004
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 13:46:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233960AbiEaLp4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 07:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343922AbiEaLpy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 07:45:54 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 179709AE5D
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 04:45:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e2so18347309wrc.1
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 04:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UYSEyUlsKgFpMImQK8ePQlB37MdL0HrdJFsY0FXbKmA=;
        b=JT5l3xMYkAt+4TZYJ5fHveeJWZa96eRE0vHFuBF3Zjv+2XhDxCbnddvfhAawHbou3O
         nmLtys+/mYZKVxGVA4M2oacHrWqtFQr/aJmYYDT9i3GWqO+GeGTur7j+wBhSy1y2zSUS
         W+AF+ZWnuP+wrHaWmWonlM5MuziB7iv4m/+0F8BGxiEuHtEO7FjOE/W9p5WHzLpRTSKv
         NGX52+vK3k+I+EpnQmtsfhqb6lm8e7Vojo0JmMVQBzr4aFHGMSofBq1qEpvwXYMiiGmO
         sJoSABKT6sCy55cZIlY/Ei3P06cwCOzA4P+XW0yKXRPtWNRSxNwYXiuXLD6qZnZRkmo1
         Q3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UYSEyUlsKgFpMImQK8ePQlB37MdL0HrdJFsY0FXbKmA=;
        b=dT8YLCyanQPThU0Llk+1ewe5Pe/MrgoXirWoUz9abfKcVT21HyMREzfC/gjH993mxH
         k68Gk9TPjYmlr4+Z6hkwuXvu0DSn/IJ1qmwUa4LdqekbkyhvpPeRDtzL5feth/aytbzO
         JjxJq+3pHdD3/fQ2tGvk5IT3Y0Clxr3M+Ld67mEvQMEMCL6GQv+vncZ8q3DFg2tu53sm
         T/VOLk4361nRJ3DbFaJaVqQ/L7zShM4HzpsOrYJOBk9E5dShDoA4s6ybFUW99UK9jIaW
         0MH1fJq25z+L2DaTPA39+/Yf7X/tBRv2i8kmWP5uZeCSHbood7Tq0uR3UcAoICnDClTk
         zn1g==
X-Gm-Message-State: AOAM531WgUXSqSWnmeIIssy1OWr9+RX7D7rfzru0Z5BRCATKO8/JElNd
        EsMBQGnUuxMSJNBG3voRFsQF9g==
X-Google-Smtp-Source: ABdhPJyePNMa/IHOGRQ08K1lGsWNcl+BGJTvraImexb5JIbQoAQ4i/xDhuHPCpbkE5fkVdYO3IGe+A==
X-Received: by 2002:a5d:4450:0:b0:210:e8b:7896 with SMTP id x16-20020a5d4450000000b002100e8b7896mr20712199wrr.490.1653997552679;
        Tue, 31 May 2022 04:45:52 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id i12-20020a05600c354c00b0039765a7add4sm2064154wmq.29.2022.05.31.04.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 04:45:52 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8195: add pwm node
Date:   Tue, 31 May 2022 13:45:44 +0200
Message-Id: <20220531114544.144785-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531114544.144785-1-fparent@baylibre.com>
References: <20220531114544.144785-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT8195's PWM IP has 4 PWM blocks.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index d076a376bdcc..366543f27a99 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -367,6 +367,21 @@ pwrap: pwrap@10024000 {
 			assigned-clock-parents = <&topckgen CLK_TOP_ULPOSC1_D10>;
 		};
 
+		pwm0: pwm@10048000 {
+			compatible = "mediatek,mt8195-pwm",
+				     "mediatek,mt8183-pwm";
+			reg = <0 0x10048000 0 0x1000>;
+			#pwm-cells = <2>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_PWM_H>,
+				 <&infracfg_ao CLK_INFRA_AO_PWM>,
+				 <&infracfg_ao CLK_INFRA_AO_PWM1>,
+				 <&infracfg_ao CLK_INFRA_AO_PWM2>,
+				 <&infracfg_ao CLK_INFRA_AO_PWM3>,
+				 <&infracfg_ao CLK_INFRA_AO_PWM4>;
+			clock-names = "top", "main", "pwm1", "pwm2", "pwm3",
+				      "pwm4";
+		};
+
 		scp_adsp: clock-controller@10720000 {
 			compatible = "mediatek,mt8195-scp_adsp";
 			reg = <0 0x10720000 0 0x1000>;
-- 
2.36.1

