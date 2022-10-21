Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1FA160737A
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 11:09:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230515AbiJUJJW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 05:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbiJUJJG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 05:09:06 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55D401A3E13
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:09:00 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id j7so3877609wrr.3
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 02:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CyWYYyXZ9YYnbw9nEI1oSUAVddSBrod4dJsXHXySnM4=;
        b=zVpaKKrmBTCzHmbZ7qra04yPk4E85uPIphnT+3SQwEc/selYL30bjCWDFKS/Fsi8Zj
         b8k62vmd80/1dMEIQcAeyQr4HxhRYXHPhi+UeTIPq3Ez7er2NBDh4dANVqLJpi26UFf/
         +bzmB2uzmn0ayoO2jMztEEOhAS0aCEqswG93ow2T17PBlZWxiVs4Knityp9CW6zFQKod
         inkoO9jmFA2kTaspWBVnd82pmIJCZKRC4HNhB8X2L7DHXhgB32Mi4HB2SzO8xIijnWwZ
         BFJKpsxefyHk+K3qsvU+ha9aD+Uzw1+76Z/JATATm2WTcVgwwdA0waSDKmlBcK0tx1Cg
         qpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CyWYYyXZ9YYnbw9nEI1oSUAVddSBrod4dJsXHXySnM4=;
        b=2ddiuXQ4FN/iHNwnrqU4EaspvZ/RUnDja9BbJB1F0ZFqiccrz7yN+0yFg+KvUy4mej
         3CVWsyAQQYU/If6a8CNS8BkGn9CHq+Z4YzHtvOqost2LW7scFvIQ0Mh2hJedPgejSs8+
         STTNwOeq3saiK+bEN8wD6McU4uof39Lm/n90JksySNVkzDlykSoXUtjJjoWMd9tIN1pN
         XLLcn8LxsBapPzsYQfaj1ebP0tc8VcyBi6qTAZH3BDNlbWguoeLm6ZIwgUEJTB/RhWuE
         d1tMq32cRzSG2fw/pLOIhvY/I3PmOUJ1qqMUmHGBWYU5GGxHUHJNizZuXWADFNE1PavK
         fOHA==
X-Gm-Message-State: ACrzQf36HAI8NlAVCAWiKBMJodMiNWpQhEW+1WZfJI3W/JL4amDBK0AV
        wwcjH0GsjA+q2hwD7cjMXvM/EA==
X-Google-Smtp-Source: AMsMyM7ioCHIMym+8Lhdwt5hnOFZoiqNCtHBJubLwYlaemy1/k5E1lFyNOcos7zW+PfczzATD57fDA==
X-Received: by 2002:a5d:6d0a:0:b0:22e:3f3a:5cdf with SMTP id e10-20020a5d6d0a000000b0022e3f3a5cdfmr10949674wrq.156.1666343338301;
        Fri, 21 Oct 2022 02:08:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c444a00b003c6f27d275dsm2230286wmn.33.2022.10.21.02.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 02:08:58 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 21 Oct 2022 11:06:46 +0200
Subject: [PATCH v4 10/11] arm: dts: qcom: mdm9615: remove invalid interrupt-names from
 pl18x mmc nodes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v4-10-dac2dfaac703@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v4-0-dac2dfaac703@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Gross <agross@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This solves the 'interrupt-names' was unexpected dtbs check error.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/qcom-mdm9615.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index 366241dee522..9d950f96280d 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -325,7 +325,6 @@ sdcc1: mmc@12180000 {
 				arm,primecell-periphid = <0x00051180>;
 				reg = <0x12180000 0x2000>;
 				interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "cmd_irq";
 				clocks = <&gcc SDC1_CLK>, <&gcc SDC1_H_CLK>;
 				clock-names = "mclk", "apb_pclk";
 				bus-width = <8>;
@@ -345,7 +344,6 @@ sdcc2: mmc@12140000 {
 				status = "disabled";
 				reg = <0x12140000 0x2000>;
 				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
-				interrupt-names = "cmd_irq";
 				clocks = <&gcc SDC2_CLK>, <&gcc SDC2_H_CLK>;
 				clock-names = "mclk", "apb_pclk";
 				bus-width = <4>;

-- 
b4 0.10.1
