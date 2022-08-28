Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CEAA5A3CBF
	for <lists+devicetree@lfdr.de>; Sun, 28 Aug 2022 10:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233150AbiH1In4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Aug 2022 04:43:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232939AbiH1Inw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Aug 2022 04:43:52 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D172E6B3
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:51 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z6so7361673lfu.9
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 01:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Q6WIZMI8PqvhPXoz0HyicdGQenyGUyI3TjjgKVNKINY=;
        b=sC2vowPO1zpncuyiuQCH7P8bQ+3hUi6bvUMcI2xmeKUDA89bts9QmffA3+1EAzo35Q
         sunqQK33PZK6fNBWYiGuYqs5ST8dKL32D6C7vt+rLb9C1czOCSH7jtP0mFii9PV6Eble
         snuj2Ie1BAbxHyRSLDAB/f8u/l5eBlWmtZ3sYKm2Mop2usow1RNlW26AuFR1kJCPdsVN
         zuVxIanW5LQHBw90dQuWwQJjD4h/iakNG9c0HYFhirF90B+A/zOvg+gFMzH6q+fDIyuJ
         QzbQ//thWu/rWb66QNCVB0iOpd8ZWee/dqdrdZyJeCBhLXOJ5vYCk1kIYQJbMGiWbhbM
         gciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Q6WIZMI8PqvhPXoz0HyicdGQenyGUyI3TjjgKVNKINY=;
        b=u8danQ6vyu5gRaYC/fdtHS2nD3viHR0RQ92X9coPerx5IhLg6kUY0vGrQTtcDI5Ru7
         dupO7/EVWJZL2IC7P/g2FZT+fxQfPA+YincjC1MQ4TJMOH6uimLuHbooN/bosRLNRsAQ
         d0cGLa5AMzz3fuWt4rEelL+1ptGiHpynOKJTwKLxpB0MEnGvs1s9RA1okgg7Oc9zE93X
         zQRZ4vgmHzjCqtaDclsxqXcZJdKszDLBxlX/5XArBm9gBQki06G9HA0dxzvyiPgXLQQ1
         3oK6UxkxQ4vUQdRXODX/3y6bsD5lbSU6OiOUqLBZ7pglEK2YAK5zLkjLMcugckXJ+dRP
         ppzQ==
X-Gm-Message-State: ACgBeo10D+U/8yrNVRZZO0i7Tx75//ndrKWyC5Y1gxRiWXIiNrqHuIAz
        Z499yTY+XH3CdBKkdR1N+nPdAg==
X-Google-Smtp-Source: AA6agR76Ug6vFeYkaVN1bifoZeICxZub+SU7oeSakCwQsBLIRqaip1HldJekDfcAETJQbeTwR0LRIw==
X-Received: by 2002:a19:5f53:0:b0:492:f5a8:2da9 with SMTP id a19-20020a195f53000000b00492f5a82da9mr4567762lfj.184.1661676229643;
        Sun, 28 Aug 2022 01:43:49 -0700 (PDT)
Received: from krzk-bin.starman.ee (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id c6-20020ac25f66000000b0048afe02c925sm890114lfc.219.2022.08.28.01.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 01:43:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/14] arm64: dts: qcom: pmk8350: drop incorrect io-channel-ranges
Date:   Sun, 28 Aug 2022 11:43:31 +0300
Message-Id: <20220828084341.112146-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
References: <20220828084341.112146-1-krzysztof.kozlowski@linaro.org>
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

Since commit 044b32fa5229 ("dt-bindings:iio:qcom-spmi-vadc drop
incorrect io-channel-ranges from example") the io-channel-ranges are not
allowed in the Qualcomm SPMI PMIC ADC and anyway they are not correct
for IIO provider.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmk8350.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
index 0f94c46a1444..97c9f8ece2a6 100644
--- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
@@ -41,7 +41,6 @@ pmk8350_vadc: adc@3100 {
 			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "eoc-int-en-set";
 			#io-channel-cells = <1>;
-			io-channel-ranges;
 		};
 
 		pmk8350_adc_tm: adc-tm@3400 {
-- 
2.34.1

