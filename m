Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F23E05579DE
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 14:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231646AbiFWMEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 08:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbiFWMEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 08:04:41 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 741084CD47
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:04:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a11so14259355ljb.5
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+ZSA6xHQZ9aqASlGuBjY/Lc+K6EWssVTLnudC8h7Ugc=;
        b=jEPdaVuSYHVAXI7PQcfhMs4Y48HYVRpwDx3OONIo7QHh2qHN6THTxsy+0wO7neM4QW
         lSbhb5hAp+p/xUydOV8w+tOmQUkPGz50ayN71VkENvO0xhls1Zy+D64YB27CTbuBjTb2
         tCydXhELrmdwaNphsLdp0bXh9N76gERgiaDfGKgM4anRcgHCMlrAXODA86MxZDFlh/Ky
         hkBXBMDLzPTiRzOxKZJaiZukIbfEI2deubmkajDchSWwVGyN0JnDMNOHMKag2/Iiaon8
         eh+qRooEG/E1BlNqWRUW+wIpholTv8Xldpm5Bt/wB3ADYORn1cT3PoIR4Spkroa7o/6/
         Ev4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+ZSA6xHQZ9aqASlGuBjY/Lc+K6EWssVTLnudC8h7Ugc=;
        b=XAdvvAHohv0eOV4629Ls1exinJXQDAf5Cd5/yfjl/9JqvlVgSrxVlNWA6dBnpHwG4i
         TfjI4KgcyNf0VPJh3mcPERSLHO0e7mtBRMC8xdomsZ2NJWmgU4LIRZz0gaB+d63DKe3I
         LUhfaKmMJqPbHkCXSP8TJ0wLt84SARTl1Vs2CWPNm172nMNM5GejIyzRSCfiCqoW2YFU
         vmeRoVdJW/9nZn3WpqedWtAEYvG9e8N9nK+yd4ZJsQ7L6wnhKd9Boqq24RC87kVPct6q
         eq3l7eWDeqiz1RNz3YfCencBPCmw194WyBauc6RlJWb/ibTZJehU3r5LVslZwiWPGS7I
         X6EQ==
X-Gm-Message-State: AJIora+TI3jWI7vNGHfHXZRbUW4K5ulMQFJ/ynI7zWV936nnxdppO37S
        mXtnKhyxXeSY3vFtPL9PWiyZ5Q==
X-Google-Smtp-Source: AGRyM1vyTttTf9/+DOHZEFqBUI8Pj1xvEChHdF/WQ4rT74eb+M5p7WPr4E+2gOh2gRvp14Eyf/lSGg==
X-Received: by 2002:a2e:a78a:0:b0:25a:8c6a:f3c7 with SMTP id c10-20020a2ea78a000000b0025a8c6af3c7mr3421276ljf.218.1655985871235;
        Thu, 23 Jun 2022 05:04:31 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 18-20020ac25f52000000b0047f6b4a53cdsm1799888lfz.172.2022.06.23.05.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 05:04:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 15/15] ARM: dts: qcom: msm8960: add clocks to the MMCC device node
Date:   Thu, 23 Jun 2022 15:04:18 +0300
Message-Id: <20220623120418.250589-16-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
References: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
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

As we are converting this platform to use DT clock bindings, add clocks
and clock-names properties to the MMCC device tree node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8960.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom-msm8960.dtsi
index c7058da58be5..b65659801b6e 100644
--- a/arch/arm/boot/dts/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8960.dtsi
@@ -164,6 +164,22 @@ clock-controller@4000000 {
 			#clock-cells = <1>;
 			#power-domain-cells = <1>;
 			#reset-cells = <1>;
+			clocks = <&pxo_board>,
+				 <&gcc PLL3>,
+				 <&gcc PLL8_VOTE>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			clock-names = "pxo",
+				      "pll3",
+				      "pll8_vote",
+				      "dsi1pll",
+				      "dsi1pllbyte",
+				      "dsi2pll",
+				      "dsi2pllbyte",
+				      "hdmipll";
 		};
 
 		l2cc: clock-controller@2011000 {
-- 
2.35.1

