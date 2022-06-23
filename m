Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC94F5579D7
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 14:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbiFWMEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 08:04:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbiFWMEe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 08:04:34 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E88FD488B9
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:04:27 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id y32so32970526lfa.6
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 05:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=phwT+Z6nWrWm8Hr0ddNtVBYpY/29m2pZjUGouNitf4c=;
        b=GQL8E4bhfx7Iai+2lcA/S84OUj1KpEBjIQE+ze7obNQQ6vaNEW4VwUMYD6X56Wxgj3
         J9XvfjrrblfmJG99VkxuxAgxnfB1CZVReAj/Ztypv+2QjFgMQRyixmRbKFyAbGPaVRZl
         J4gura9cPiSojJCCrPK6e11Sl4NVj2+maHvwdyy1X0ZRwgi5NXpDijsOQtvq5irjwsfz
         4kWmlXoP9Oxg4YgdgYkn24L3zhxrth3u/Vff3oRtCKIKodHrt2vFhrNSDtaWltE5CJeS
         tzz7c9WfyveFTxFml1X5RROitWAipVoBmDxNKKzaYx3Ia+iIGYa65S+Ht+WEU3wj/aDj
         lJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=phwT+Z6nWrWm8Hr0ddNtVBYpY/29m2pZjUGouNitf4c=;
        b=SedI6RBc9J5YnJktpwRuzBT1EcLIqOHd8gvSR5TN6QhQ0HF4eeZTgJUOH+y6lHhPNN
         cby3WJHRvynpMyT0aHoWDydv0UTb0pzeVAgBjcA9mqo9qwqgejkUiu7oqIYiGUN5tIOq
         k93PKubCF2ZxLzMVPM8selCR6kauy5Gq5nFFuhXwfo7zHBszNOu+NRJ2HEPGzSCOTmYs
         8QTwEhCBO6K0sDuk2FQUCtObi6l9GemaiJPIdohe+b+dG5x8b8Zn/HBL7OPcWNPRwrOY
         /lZAjyG9nEm9mOoxyxPa2V/6iifhz78M1Nhy21Z7xQ9XGxn4iGizZrpI273/k3D1/NwU
         pHgw==
X-Gm-Message-State: AJIora/EXeBBcbpne7MXwftWV6IVmAQsg9tt6lRowG2CrHIJRPpWfTyR
        LfnNAQGwOj37nGJo8o5huLGTIkgyK1liHSSw
X-Google-Smtp-Source: AGRyM1vsh64TMNAD9XuPmd3FfqFMpFJ0tlZrucUc2f64uUmXi21/MIvZq1NrLpYBdC650ejTtbzbow==
X-Received: by 2002:a05:6512:2810:b0:47f:a76c:8770 with SMTP id cf16-20020a056512281000b0047fa76c8770mr1707701lfb.116.1655985867352;
        Thu, 23 Jun 2022 05:04:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 18-20020ac25f52000000b0047f6b4a53cdsm1799888lfz.172.2022.06.23.05.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 05:04:26 -0700 (PDT)
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
Subject: [PATCH 10/15] ARM: dts: qcom: apq8064: add clocks to the LCC device node
Date:   Thu, 23 Jun 2022 15:04:13 +0300
Message-Id: <20220623120418.250589-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
References: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
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

As we are converting this platform to use DT clock bindings, add clocks
and clock-names properties to the LCC device tree node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 0d323c208978..72b099ed4543 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -834,6 +834,20 @@ lcc: clock-controller@28000000 {
 			reg = <0x28000000 0x1000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
+			clocks = <&pxo_board>,
+				 <&gcc PLL4_VOTE>,
+				 <0>,
+				 <0>, <0>,
+				 <0>, <0>,
+				 <0>;
+			clock-names = "pxo",
+				      "pll4_vote",
+				      "mi2s_codec_clk",
+				      "codec_i2s_mic_codec_clk",
+				      "spare_i2s_mic_codec_clk",
+				      "codec_i2s_spkr_codec_clk",
+				      "spare_i2s_spkr_codec_clk",
+				      "pcm_codec_clk";
 		};
 
 		mmcc: clock-controller@4000000 {
-- 
2.35.1

