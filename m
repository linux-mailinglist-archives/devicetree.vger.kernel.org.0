Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D97DA596E08
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 14:06:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239256AbiHQME4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 08:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239279AbiHQMEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 08:04:47 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EAEE52E5F
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 05:04:33 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id s9so13343160ljs.6
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 05:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=uPnkJ9CZ7fbXWgaAUcfcWBXaeXKUW7FCT3L0V3onDIA=;
        b=IDHaSU6pyLGf+5+N3yvRmfRgyJcjMsogzmLS081dmkCfeis8uKnxylfpfJAA8NJXId
         /XJuDrlcaCU2jMog5sXRjQPaeuX7qOIPFRHnRej6IrbbfsKYLalESvxEwD+jslWDH7IB
         3c0+P6nLvaCIcKm3/mowwdy3X1wv9mRbJyMxtihUDHL5pwTkojV6qtLrXhSY3clPW4lg
         LOxac6hQryRoJbvyJQRaQeIDs4EXY7FjRj+oJQV+72CsfVktzDuW0LzFHfFyKaCM/Ag5
         r0gu8lY5HwkAp7JrWSBF9WuD+3gdZmHhyy5/HrUrxu/mUx8hD9NuQGrLxi7MMjlonET0
         y/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=uPnkJ9CZ7fbXWgaAUcfcWBXaeXKUW7FCT3L0V3onDIA=;
        b=sPmk4814Mo7XOI8GDq86DuglPsogWfBpJN7KNJ8yEEXRX7IFBXqWOqz+0viVt2RnSQ
         ENjsnGfXDk3zhDfpyVorcCnJCPGSeGqQo4uhbw1DWqzdjSEa3xx/QAkp4BPcBhMiGAhr
         /DP1jRoMQd30DhfV/0tTeT2UX8OihxFa8eIq+bOXicTL6ITKrmON26J4qmF4rStay4Ug
         RE4y2i1sb834FySFrwebniuMfV9gpxsdq0urfCHQ4V+Fejuq41BL7ETZQh9uoqQ1lxwC
         kfaT+e6M02QHEjX0oA33xjF3ptdW/HJmC40C/CrSdRBukCTSf1TjQBwGCIkSsnMA6AO3
         le/A==
X-Gm-Message-State: ACgBeo0JWkADVNEZBYGS/vAfJE1PY5fO8fk72UFFiGzvljJYV/b7ktoY
        WxzqBkJuxPlzV4zpoSVcnv5FFqv4xPng8UjS
X-Google-Smtp-Source: AA6agR7bIZTAKEEfgXGTIR/qHFIgh5ti3RzKbK9pp9MhdH2pDL2oT/6qOvRuC3eCe51dEpLa8LqWJQ==
X-Received: by 2002:a2e:850f:0:b0:25e:67a8:4e11 with SMTP id j15-20020a2e850f000000b0025e67a84e11mr8067779lji.30.1660737871488;
        Wed, 17 Aug 2022 05:04:31 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id d15-20020a05651221cf00b0048a97042251sm1670496lft.22.2022.08.17.05.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 05:04:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 12/14] arm64: dts: qcom: qcs404: switch TCSR mutex to MMIO
Date:   Wed, 17 Aug 2022 15:04:01 +0300
Message-Id: <20220817120403.458000-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817120403.458000-1-krzysztof.kozlowski@linaro.org>
References: <20220817120403.458000-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TCSR mutex bindings allow device to be described only with address
space (so it uses MMIO, not syscon regmap).  This seems reasonable as
TCSR mutex is actually a dedicated IO address space and it also fixes DT
schema checks:

  qcom/qcs404-evb-4000.dtb: hwlock: 'reg' is a required property
  qcom/qcs404-evb-4000.dtb: hwlock: 'syscon' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 9ab990061522..3a94eb2cc448 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -295,12 +295,6 @@ smem {
 		hwlocks = <&tcsr_mutex 3>;
 	};
 
-	tcsr_mutex: hwlock {
-		compatible = "qcom,tcsr-mutex";
-		syscon = <&tcsr_mutex_regs 0 0x1000>;
-		#hwlock-cells = <1>;
-	};
-
 	soc: soc@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -726,9 +720,10 @@ gcc: clock-controller@1800000 {
 			assigned-clock-rates = <19200000>;
 		};
 
-		tcsr_mutex_regs: syscon@1905000 {
-			compatible = "syscon";
+		tcsr_mutex: hwlock@1905000 {
+			compatible = "qcom,tcsr-mutex";
 			reg = <0x01905000 0x20000>;
+			#hwlock-cells = <1>;
 		};
 
 		tcsr: syscon@1937000 {
-- 
2.34.1

