Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF5165B3392
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232252AbiIIJVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbiIIJVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:21:07 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A662B1B83
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:20:58 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id x10so1103576ljq.4
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1QVlzwLkNHF9UXsx3O2rYGkmRfJt4dkKS0KBL8iUsvc=;
        b=hazR5YLWX1Rsm3rvYvjCL39aCLScLHYqOuwBF0UzhFIo4XindO/pKL3+fPRXSGs4M6
         TpPXhTZpYG4YAVegbiZrhXZGbai12VyuG0vu11j6YIwMU18PnTX3OKJOIB3u5axiTuxu
         MSmh031kWJ4mtkgJZfcj1BOCWsYfL0mLJxowIMQAgaLxASXbZJx22T+XCFzRvDcRnp9L
         /WUJu4Slv70GA2CImOVK6Un8gJueVtnhz25MXYUxYIdGAC9w+w8rbHhZX0yD/qq6B+AZ
         +yPakPq8i2HsKxjgWN7d6a+s7BMq4G4F05bs1zbw6qUh5SdG0lMdCyQ9sLBiHI6rX3Jk
         8b1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1QVlzwLkNHF9UXsx3O2rYGkmRfJt4dkKS0KBL8iUsvc=;
        b=IpH1PSzjudCR3hhrSrYxzWV5tSzzhPE+zhpBVcmo0i7ZMA54rL8S2PCt//kF2WaZ80
         7mgA0HVCh0cpt5fnRimysseF3Euj20U/8QPY6B77fb8Xpph3XKQ7VQFQPJbU6lsDrZNx
         2nIENX6RBPYHcSIEewS7yFPS75bZjx1wHtQduveFMCpPtF07xFLEf4QOzTSUyVNQG0vo
         /9avc0zO2cJ4dpNm3+/dvt+I73Q9RaoRpwjLGCMwmminYPH9DLdyIIjeUBrL9DEg9tyv
         yXekLrqyK5Bsu9jPw6nE/LhYwePvRmPdkrkRbFm6MLNZTNsvGR8Tc5CLMpOpBEDyhe08
         6/5g==
X-Gm-Message-State: ACgBeo0O8BW5/wxMsm9BCJcrJ0xOceogFnhxM19GARY8L1P3BjVm6hDS
        yS5i3Bp2vW6Zhqtt4QXHy3qX8Q==
X-Google-Smtp-Source: AA6agR4EK65RLE5C77BO69caL5lGKl1v5/9mbTZ4uVFXO+5nxj40nfonkVGI/CarwNrFzRraH9gceQ==
X-Received: by 2002:a2e:9c84:0:b0:268:8e0f:78cd with SMTP id x4-20020a2e9c84000000b002688e0f78cdmr3713526lji.432.1662715256761;
        Fri, 09 Sep 2022 02:20:56 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b00498fe38ea0fsm2170lfr.174.2022.09.09.02.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:20:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 13/15] ARM: dts: qcom: msm8974: switch TCSR mutex to MMIO
Date:   Fri,  9 Sep 2022 11:20:33 +0200
Message-Id: <20220909092035.223915-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
References: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
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

The TCSR mutex bindings allow device to be described only with address
space (so it uses MMIO, not syscon regmap).  This seems reasonable as
TCSR mutex is actually a dedicated IO address space and it also fixes DT
schema checks:

  qcom-msm8974-sony-xperia-rhine-amami.dtb: tcsr-mutex: 'reg' is a required property
  qcom-msm8974-sony-xperia-rhine-amami.dtb: tcsr-mutex: 'syscon' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index ada232bed2c8..6bb06eaf08fd 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1228,9 +1228,10 @@ smd-edge {
 			};
 		};
 
-		tcsr_mutex_block: syscon@fd484000 {
-			compatible = "syscon";
+		tcsr_mutex: hwlock@fd484000 {
+			compatible = "qcom,msm8974-tcsr-mutex", "qcom,tcsr-mutex";
 			reg = <0xfd484000 0x1000>;
+			#hwlock-cells = <1>;
 		};
 
 		tcsr_1: syscon@fd485000 {
@@ -1719,13 +1720,6 @@ reboot-mode {
 		};
 	};
 
-	tcsr_mutex: tcsr-mutex {
-		compatible = "qcom,tcsr-mutex";
-		syscon = <&tcsr_mutex_block 0 0x80>;
-
-		#hwlock-cells = <1>;
-	};
-
 	thermal-zones {
 		cpu0-thermal {
 			polling-delay-passive = <250>;
-- 
2.34.1

