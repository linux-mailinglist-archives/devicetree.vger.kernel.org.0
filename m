Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD83734279
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:16:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235937AbjFQRQG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:16:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234510AbjFQRQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:16:00 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22CFC19B5
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:59 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-987341238aeso156842466b.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687022157; x=1689614157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HOCNMOjszYf3SG5RNm6dEa6DZINwDQf5LX3pp9CTfwo=;
        b=vJW5p0yDMw5Y89nNLVcumQTbFcmpfduFXDVFrXF8gubvKp6ygrTlBkmr7UOlMfPTYB
         g9ujkWre49/jwLvJbwg53GCpecPX3s2UtKjU1fPtbK0FrGXVC197Q44Qz1NOeOpz5FtB
         UnuKKJ6TGbHMHgYVLLxfzJ7yUJPsM1hMTBTwnkwxJTHDQ5Ftcma3kfmb1MnqT5BTUaQ+
         LbD4RZ159uvk0rpy2Q6kUJJvAVXCYPFBBTjKxzQ1LSL4Ny9sAjqA4A8J/YaA8jaqAho+
         8THGewwrVwLdU7vkmNNYRv1x9QtsNdgWV8MbITYn2u1ZNECGmwEz9yrW6p37Yg0aA0Ox
         bpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687022157; x=1689614157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOCNMOjszYf3SG5RNm6dEa6DZINwDQf5LX3pp9CTfwo=;
        b=Zp7FG0wRM1qYVeNcVwuIIlyeLanH1mNGGV87/Nvq8ffJhzL28SuTs9thUemivqWxeg
         wghjIAvOuVVk95wps4JBbuPInyDQ2unl41xYE4LStamLkRGCUgiyIuMm+tDbRh8jKwFP
         chvBk15i7Ljr+NfTdi0y/fwNpjb6BM64MKt7bXeKNifR/8RbLS/NrXm050meLQ4JKFkt
         tqo3wj+HThguJOpNyKgO2Ps4ioY6aXV9o9/21WshJ9UjppygNGpe7ZicxFvqaz/ykbBU
         ZkfkUazp3eXpYx3Tgpgn7pXtAZ6uWew5tmcOq7v/vRr4j7fvYPssPUQIL8y3MOIkAATS
         JQRw==
X-Gm-Message-State: AC+VfDwAIt+JKGcqGsgjQRZrbC0IubK0jE7YIUkRuzAuOp6m2vhspX69
        cVtvSUd6c3bzABJWS6+5dT1NMg==
X-Google-Smtp-Source: ACHHUZ5voVHr7VMnPDydDiOcTflsjH6hSd/G6BUxCxIpDs+j/TgZOF48dZrnhYk5IdmpUbXSq/SLpg==
X-Received: by 2002:a17:907:7faa:b0:988:2037:c688 with SMTP id qk42-20020a1709077faa00b009882037c688mr1117466ejc.65.1687022157693;
        Sat, 17 Jun 2023 10:15:57 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b009829dc0f2a0sm3841897ejb.111.2023.06.17.10.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 10:15:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 10/15] arm64: dts: qcom: sc8180x: use generic ADC channel node names
Date:   Sat, 17 Jun 2023 19:15:36 +0200
Message-Id: <20230617171541.286957-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
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

ADC channel node names were changed to require generic 'channel'.  The
user-visible part is defined via label.

  sc8180x-lenovo-flex-5g.dtb: adc@3100: 'die-temp@6', 'ref-gnd@0', 'vref-1p25@1' do not match any of the regexes: '^channel@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi | 24 ++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
index 8247af01c84a..4556af6cd103 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
@@ -105,19 +105,19 @@ pmc8180_adc: adc@3100 {
 			#io-channel-cells = <1>;
 			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
 
-			ref-gnd@0 {
+			channel@0 {
 				reg = <ADC5_REF_GND>;
 				qcom,pre-scaling = <1 1>;
 				label = "ref_gnd";
 			};
 
-			vref-1p25@1 {
+			channel@1 {
 				reg = <ADC5_1P25VREF>;
 				qcom,pre-scaling = <1 1>;
 				label = "vref_1p25";
 			};
 
-			die-temp@6 {
+			channel@6 {
 				reg = <ADC5_DIE_TEMP>;
 				qcom,pre-scaling = <1 1>;
 				label = "die_temp";
@@ -172,19 +172,19 @@ adc@3100 {
 			#io-channel-cells = <1>;
 			interrupts = <0x2 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
 
-			ref-gnd@0 {
+			channel@0 {
 				reg = <ADC5_REF_GND>;
 				qcom,pre-scaling = <1 1>;
 				label = "ref_gnd";
 			};
 
-			vref-1p25@1 {
+			channel@1 {
 				reg = <ADC5_1P25VREF>;
 				qcom,pre-scaling = <1 1>;
 				label = "vref_1p25";
 			};
 
-			vcoin@85 {
+			channel@85 {
 				reg = <0x85>;
 				qcom,pre-scaling = <1 1>;
 				label = "vcoin2";
@@ -220,19 +220,19 @@ adc@3100 {
 			#io-channel-cells = <1>;
 			interrupts = <0xa 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
 
-			ref-gnd@0 {
+			channel@0 {
 				reg = <ADC5_REF_GND>;
 				qcom,pre-scaling = <1 1>;
 				label = "ref_gnd";
 			};
 
-			vref-1p25@1 {
+			channel@1 {
 				reg = <ADC5_1P25VREF>;
 				qcom,pre-scaling = <1 1>;
 				label = "vref_1p25";
 			};
 
-			vcoin@85 {
+			channel@85 {
 				reg = <0x85>;
 				qcom,pre-scaling = <1 1>;
 				label = "vcoin";
@@ -270,19 +270,19 @@ pmc8180c_adc: adc@3100 {
 			#io-channel-cells = <1>;
 			interrupts = <0x4 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
 
-			ref-gnd@0 {
+			channel@0 {
 				reg = <ADC5_REF_GND>;
 				qcom,pre-scaling = <1 1>;
 				label = "ref_gnd";
 			};
 
-			vref-1p25@1 {
+			channel@1 {
 				reg = <ADC5_1P25VREF>;
 				qcom,pre-scaling = <1 1>;
 				label = "vref_1p25";
 			};
 
-			die-temp@6 {
+			channel@6 {
 				reg = <ADC5_DIE_TEMP>;
 				qcom,pre-scaling = <1 1>;
 				label = "die_temp";
-- 
2.34.1

