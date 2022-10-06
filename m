Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D71545F6467
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 12:41:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbiJFKlN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 06:41:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231235AbiJFKlL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 06:41:11 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC5DA97D45
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 03:41:09 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a29so2104176lfo.1
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 03:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=naxtmjyipBAu9ix1sQH7QzZjfA9PG1FIif/h0w3MNtQ=;
        b=lGuGq+qIEfwhEaZyb+pI3oRNQkPTJxSals8c3ok4XzQkKYjoH3cPjrsyH9n1Xf1Y4b
         oby1ETF6vjU0lo4XdsdZlucNkKyqSx5TvJ5IwkNOMFdWoycTSW/tBt/90C3qyzC3CfMS
         siJrJK1hPjbkVsIHCNZJye6NA/+DVAwPpeXbNoV5xzJ1I1YnHnsFVVa9uyk8+baIBVq5
         L1ReH/DXTBdCXCmqYoohn7jPUA0YGmAz1BzgiEZneUBRZyZZQTJsT1yL/456Lb2PCe2v
         m549jak0SJEDEMumokwNIONLfCFBL1HqLbxyuvNk84RjUfMCg5RgPU1SRQIg+HiBdHUb
         CFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=naxtmjyipBAu9ix1sQH7QzZjfA9PG1FIif/h0w3MNtQ=;
        b=ABAq0hSdVZC2q5YzNzSjOa0SPXCfboJr1z5G1R/rHJBZkTRQLlIAkU4aeU6kS2AZmM
         +A80ZKv++WoFkZsRJhWwawI8uSHZePBbuEHXmzfS2DIuX5TRrH0gdpzYTiDvgS3ZjAPX
         /4GcGl6Z+EIkzHcJusku6ZGyJTMq1vH+8wMfgl653NSebb/zlCXmbFDG3kKUkYfbTkyt
         FBJ4wnKXtWAcLBL/0sUfyHEquB3oV00iMHiAKrhDnTvK0KKMntrlAUaFlOuQSc8QfqjW
         PYvMZJn4i5OPBOk3jOyDe1nNZyiAb+iiVWsD/Do+5+/K8NpbDVSW9juHCEUB6cOSYjOb
         7R4w==
X-Gm-Message-State: ACrzQf1h8m+e24AVfGrFshe5jZS8W/DesulN2VDk2ktqdt6WCNAaXuCu
        PZq1MGughJA8ilsxtlJUkLtrvg==
X-Google-Smtp-Source: AMsMyM6p0PC34myeqOG+ohgRGrOEIIXsBkJm0MGSxfSb/HwujLhh3lcxnx+RUrVD9TS2QJWlLsChWQ==
X-Received: by 2002:a05:6512:22c3:b0:4a2:1698:58db with SMTP id g3-20020a05651222c300b004a2169858dbmr1750313lfu.554.1665052868156;
        Thu, 06 Oct 2022 03:41:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q3-20020a0565123a8300b00492aefd73a5sm2648293lfu.132.2022.10.06.03.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 03:41:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] arm64: dts: qcom: sdm630: add UART pin functions
Date:   Thu,  6 Oct 2022 12:41:01 +0200
Message-Id: <20221006104104.171368-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Configure UART1 and UART2 pins to respective functions in default state,
otherwise the pins might stay as GPIOs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index e119060ac56c..bc7c341e793c 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -723,6 +723,7 @@ tlmm: pinctrl@3100000 {
 
 			blsp1_uart1_default: blsp1-uart1-default {
 				pins = "gpio0", "gpio1", "gpio2", "gpio3";
+				function = "blsp_uart1";
 				drive-strength = <2>;
 				bias-disable;
 			};
@@ -735,6 +736,7 @@ blsp1_uart1_sleep: blsp1-uart1-sleep {
 
 			blsp1_uart2_default: blsp1-uart2-default {
 				pins = "gpio4", "gpio5";
+				function = "blsp_uart2";
 				drive-strength = <2>;
 				bias-disable;
 			};
-- 
2.34.1

