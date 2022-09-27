Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 899905EC1A3
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 13:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231209AbiI0Lip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 07:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232068AbiI0Lif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 07:38:35 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B1914F81A
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:38:32 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id o2so15224516lfc.10
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 04:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8UKJY8RyS4lQdg21YinKMfTR+7LOBGKmECIZxWxaq8o=;
        b=h02PDj7bsZWURO5IIye96OQXZvYWPPWMA2hxzXRZERaKTCsrXY4tDKYsdO14yh63L6
         wfTPQs8YH/a1kRreeyo4azd1g1inkYlBQq58zl2W655Vl2D+ZHtSPPlOfi/dFxj0c4Hc
         N/dvR1SShXpWnpcltxXrhP030PJIgmFkaMvthvN+wgfwf6VjukszO+Op3n8zNgVzdtAT
         0T19EhFY+5lQDaHlzW2PJSxSkykjEkKu+bx1S3LJgobfNuU3VAR8VesthNkIOZ/rjHu7
         rGm1ea1XyMbbqedZEvN1EGZfiCZ9ExqWt59o/c3j2ga84mhhrrX+wsFc+tVXSGm4UIWG
         lzSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8UKJY8RyS4lQdg21YinKMfTR+7LOBGKmECIZxWxaq8o=;
        b=ydJ1GHr7M3terQci0ox5uoVnwY0Azxod/0NdnDC4jDdCIPrRHPBjx3M+Ce9E3s62e7
         tOcr5rDI5vZ1wT0/Ceryi7grK2QjD0b15O8a1fj1VHSt/9AzyHF1ksInN/2zxO2hbgOM
         m/qXC9XYVzM1UYWA9X/Ml8WqE6MtiIfNYUyym3kN0xzMsOPez/GmDBN2RH8OL+h/mOlO
         LHkM1C/ueWAO545y3Zlb9QDbnvKjpqd0VgGcyxNKlGS+4P2GK+p/XzWPFmxANsucyPVO
         i8PNRKJyuNk5AReFP76pyTa2ok7j28DlyU7ENXvticpRabotoLPCjtpH8BBijBeLFE3J
         DYbw==
X-Gm-Message-State: ACrzQf3sIPW3C2Wtv2MMjWtGqOKq6wwOb4UlBrLMgEmjjfcF7aS7qCEB
        xALiAsGDbW8bui6pkkWx/BgDqA==
X-Google-Smtp-Source: AMsMyM79cjLI+aMRih7aOtZOjF5MIuUswYUSkAxq8R07lkKW7PC1hu3pWHNRyEVueygPIV7bTuHxsA==
X-Received: by 2002:a05:6512:c1:b0:497:acd3:10cf with SMTP id c1-20020a05651200c100b00497acd310cfmr11355141lfp.484.1664278710503;
        Tue, 27 Sep 2022 04:38:30 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512208c00b00492dfcc0e58sm142165lfr.53.2022.09.27.04.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 04:38:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 3/3] ARM: dts: qcom-ipq8064: use pll4 clock for the gcc device
Date:   Tue, 27 Sep 2022 14:38:26 +0300
Message-Id: <20220927113826.246241-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927113826.246241-1-dmitry.baryshkov@linaro.org>
References: <20220927113826.246241-1-dmitry.baryshkov@linaro.org>
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

Add a link to LCC's PLL4 clock to the GCC device node following the
bindings (and driver needs).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-ipq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
index 90c08b51680a..a79f8b5fe12d 100644
--- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
@@ -513,8 +513,8 @@ mux {
 
 		gcc: clock-controller@900000 {
 			compatible = "qcom,gcc-ipq8064", "syscon";
-			clocks = <&pxo_board>, <&cxo_board>;
-			clock-names = "pxo", "cxo";
+			clocks = <&pxo_board>, <&cxo_board>, <&lcc PLL4>;
+			clock-names = "pxo", "cxo", "pll4";
 			reg = <0x00900000 0x4000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.35.1

