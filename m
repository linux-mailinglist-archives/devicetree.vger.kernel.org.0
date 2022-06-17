Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB1A454F97E
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 16:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382926AbiFQOra (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 10:47:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382914AbiFQOr2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 10:47:28 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0577E54BEF
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 07:47:25 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id e4so4995672ljl.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 07:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mgNG4CqobFmIv3cjkJhZdSr5JTtKXvysIj6GWq9VnJY=;
        b=JYXz7M12Jme+KdP6HJd2GEMmPFwsgvWz4mbBuuZqUn0BzbfnBIcw3+pQSPD4WxjWwL
         WRZ4zBgsdfu1e9BYfg4ZRPp7JrJ5iNjdzPNheGV2Ec2LYYflanTtfzoxMvBErhT3dkXk
         yJxgMoOJtoAdg6huoTylV+KPztCzyv8OCsuPhOlyCVwX1YTt76JOTesWCcbjGfT0LDII
         rnPWTA6ve5h8BAxvwdxJnTry0awH2VV6DySmHnZowUkEOWfpbzq3IFV6yDQzjEy95dmQ
         pv8MI6gHCkXWp5beBQX19JHH7bCracyTlPKIYk+egsz0a9VFSjijQaTw6mejMUcmWipr
         dT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mgNG4CqobFmIv3cjkJhZdSr5JTtKXvysIj6GWq9VnJY=;
        b=c7e3NKQvVJy5F2hxQtA7U5euW59/Ykzg/0YTDRsPNNZohux0yXXGkDN1ADTe4fwyWI
         8JCuPvM9CCFksM9kuHeqrKinSLo1qSLO28oFKUCwCgXEhOKhw2/vkPOvfrN2MFWNEAb2
         89A5uZZ9mS2f0WUtwZpQqhcLtf71vWTHVRuo4g475zT8YOlqtITNITpFhqCLD6hH9WPs
         G2PX5elGK+S0bkPZqhrVf2e/mNU743Tw7F6r1KQeAkaSEnhBUihzNkg0Xcrre90LIQ6Z
         bBQBvvAqIwAqmqUV1vwYUUMCHZCzxxAk86DYjMGr7Xr4XXtNHqK0csPz67Imm5V22ZsB
         f+2w==
X-Gm-Message-State: AJIora/KT6hYPCRAe0ewzg6WeoBjCcU6R4KB9KmyZ70DIFf6SJ4Bb/pY
        Hn+GzbrlwvViWoVBhHDg4LjN9w==
X-Google-Smtp-Source: AGRyM1vKcC9xieLk0VyIjGbVxtuu47UQXS1H89cTn6YdTS9kaPmiABFNRn1z36dXd2QDR3O3/FpaSw==
X-Received: by 2002:a2e:b8c4:0:b0:258:f008:5b75 with SMTP id s4-20020a2eb8c4000000b00258f0085b75mr5298965ljp.189.1655477243281;
        Fri, 17 Jun 2022 07:47:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a5-20020a2eb165000000b002553ab60e17sm571867ljm.122.2022.06.17.07.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 07:47:22 -0700 (PDT)
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
Subject: [PATCH 7/7] arm64: dts: qcom: msm8916: add clocks to the GCC device node
Date:   Fri, 17 Jun 2022 17:47:14 +0300
Message-Id: <20220617144714.817765-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617144714.817765-1-dmitry.baryshkov@linaro.org>
References: <20220617144714.817765-1-dmitry.baryshkov@linaro.org>
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
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 05472510e29d..e905415b3456 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -934,6 +934,20 @@ gcc: clock-controller@1800000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			reg = <0x01800000 0x80000>;
+			clocks = <&rpmcc RPM_SMD_BB_CLK1_PIN>,
+				 <&sleep_clk>,
+				 <&dsi_phy0 1>,
+				 <&dsi_phy0 0>,
+				 <0>,
+				 <0>,
+				 <0>;
+			clock-names = "xo",
+				      "sleep_clk",
+				      "dsi0pll",
+				      "dsi0pllbyte",
+				      "ext_mclk",
+				      "ext_pri_i2s",
+				      "ext_sec_i2s";
 		};
 
 		tcsr_mutex: hwlock@1905000 {
-- 
2.35.1

