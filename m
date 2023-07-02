Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7E71744FF3
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:51:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbjGBSvA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:51:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbjGBSu7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:50:59 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E23D3
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:50:56 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992f6d7c7fbso254432466b.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323855; x=1690915855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVRMoZW9ijGIpyvygGi+iAD5fBYGpVLlMEOzk+cyEPU=;
        b=QOK1d5NbMqTQIB0Absu1ojOZ2ERpDXvTHKszuvAWQvwrKTtNE6Kxh1yCi5YTMp5BJh
         eaHEj2l283oBxkjwdl3hlKZC437KW8ODD4ssCx4QxTSnkjtj3fzYAg1k6S3gNKdGpRxm
         eGzdEzvN4ZEurmNNlDQ9kYJxT+Rdp3hPZ/DSyHKuZk2FoLqaKxhW1MNTBkVRy4pg8lE9
         9w2iyORyDqeN3SUuO6Wo3GvHUgS96rCh7b2Oy/jTIziBjDLzI0Qw/h0kJ+96DsSvCrm5
         x06yaBuJTQKTK7Jo8VCKv5iKy8zwalMT+kLADAXFZ/djWrAMBKjhA55s4qjq11E25mCY
         CqgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323855; x=1690915855;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVRMoZW9ijGIpyvygGi+iAD5fBYGpVLlMEOzk+cyEPU=;
        b=QOcAcE4RpH91ZIU7sYk0JvKR0QeIeTFef2n2SELPQ+RQzb3/gOyVUNSjUxa+dqTy/9
         /6JDA70iBAU4x/3lr+D70XLq3Va/602hfjRrNYAcWYAjLTtGFHlcq0TjMexrbKa+H4rP
         G1TFOChKnwxyI0t6BqTDj7iHq9Fszp2nNebzmpEVWjNg3FiwioUuRPir+/dwukJlXMij
         /ra+qyVXxhLmoWwe+nMfEbyzA4eagLPPuBrgd2xo3TKxyfehzyasN1uytdisCr00yeO/
         9eLfoIf1vNlWdTF+R+rj/PVHQKijyPZ+iZI5F5nq9JNssStRvmTNnCSqdoCla1VlH+Vg
         wXcA==
X-Gm-Message-State: ABy/qLZbRbrtpkUDzNhr0crYZ6O4lpRB/bPNXvU7v6se4VPWa8CxX2Rc
        CfZSI3tnl4fQnJ/PelDYyqVwkg==
X-Google-Smtp-Source: APBJJlHFqU3sYu1BoRVEeeWVkU+qDAqc0/uD8hUl503msgMnsNoSYPdiZzrUqLW9ihvDP6HrFlc+5Q==
X-Received: by 2002:a17:906:ae51:b0:966:471c:2565 with SMTP id lf17-20020a170906ae5100b00966471c2565mr5523467ejb.48.1688323855420;
        Sun, 02 Jul 2023 11:50:55 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id ga12-20020a170906b84c00b009929ab17be0sm5325010ejb.162.2023.07.02.11.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:50:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: qcom: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:50:51 +0200
Message-Id: <20230702185051.43867-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185051.43867-1-krzysztof.kozlowski@linaro.org>
References: <20230702185051.43867-1-krzysztof.kozlowski@linaro.org>
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

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi      | 20 +++++++++----------
 .../qcom/qcom-msm8974pro-fairphone-fp2.dts    |  2 +-
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index f0ef86fadc9d..5f0ff61017d1 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -416,10 +416,10 @@ restart@4ab000 {
 
 		pcie0: pci@40000000 {
 			compatible = "qcom,pcie-ipq4019";
-			reg =  <0x40000000 0xf1d
-				0x40000f20 0xa8
-				0x80000 0x2000
-				0x40100000 0x1000>;
+			reg = <0x40000000 0xf1d>,
+			      <0x40000f20 0xa8>,
+			      <0x80000 0x2000>,
+			      <0x40100000 0x1000>;
 			reg-names = "dbi", "elbi", "parf", "config";
 			device_type = "pci";
 			linux,pci-domain = <0>;
@@ -543,9 +543,9 @@ wifi0: wifi@a000000 {
 				     <GIC_SPI 46 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 47 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names =  "msi0",  "msi1",  "msi2",  "msi3",
-					   "msi4",  "msi5",  "msi6",  "msi7",
-					   "msi8",  "msi9", "msi10", "msi11",
+			interrupt-names = "msi0",  "msi1",  "msi2",  "msi3",
+					  "msi4",  "msi5",  "msi6",  "msi7",
+					  "msi8",  "msi9", "msi10", "msi11",
 					  "msi12", "msi13", "msi14", "msi15",
 					  "legacy";
 			status = "disabled";
@@ -585,9 +585,9 @@ wifi1: wifi@a800000 {
 				     <GIC_SPI 62 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 63 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names =  "msi0",  "msi1",  "msi2",  "msi3",
-					   "msi4",  "msi5",  "msi6",  "msi7",
-					   "msi8",  "msi9", "msi10", "msi11",
+			interrupt-names = "msi0",  "msi1",  "msi2",  "msi3",
+					  "msi4",  "msi5",  "msi6",  "msi7",
+					  "msi8",  "msi9", "msi10", "msi11",
 					  "msi12", "msi13", "msi14", "msi15",
 					  "legacy";
 			status = "disabled";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
index f531d2679f6c..42d253b75dad 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
@@ -414,7 +414,7 @@ cmd-data-pins {
 
 	wcnss_pin_a: wcnss-pin-active-state {
 		wlan-pins {
-			pins =  "gpio36", "gpio37", "gpio38", "gpio39", "gpio40";
+			pins = "gpio36", "gpio37", "gpio38", "gpio39", "gpio40";
 			function = "wlan";
 
 			drive-strength = <6>;
-- 
2.34.1

