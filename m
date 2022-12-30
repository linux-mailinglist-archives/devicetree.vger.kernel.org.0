Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A685659938
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 15:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiL3OBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 09:01:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235135AbiL3OBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 09:01:40 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D34591ADBA
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 06:01:38 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id cf42so31853317lfb.1
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 06:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mEfBe1hMTfIxJCX6vzcUnTuzPJsLKbB5PrSnfKuZ4VQ=;
        b=K+KGiQbG5Qt0vQNq4xpcWZthYRw0L2PSdCpIBfonZ0t/EQk/sX3wfC8tsjt/kaE9Zv
         n2AzkEnGvX3ODG7hINqq9tMfelW+g+L2TES2liFr3c2Gv4Exwgo0lf+CyP6aeiI332fF
         VRbKH4EHppgVg8cE6/orZHGC3M+R7KzhbuwI6C4Msqk49ZdEIloiD5/su+Hn8NGrzvjz
         H9VKjfoAmPGjy4TJzWoCVerI7YW5vSdKdC4uPp/N4eZPIsCmB/kqVUuLeOiv+ea7Bm/X
         XhqlgX7CWaSiws5QxFcotQxsr4inLwzUvuNgBzDe49JqUMRcyAYekkxAOPms3v9fR2O6
         Cukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mEfBe1hMTfIxJCX6vzcUnTuzPJsLKbB5PrSnfKuZ4VQ=;
        b=6NOTJotSqXKnVJvH7SMU93MQlLg9kx+0TXV4kgnMU24PQy4Xt5GcavZx4kWdSqhUON
         LGeZN4FgL6d6J6ilo6ZAXnMSm/NTbt4sYI8rbmsVsSygvUaDjpELLjnFoAOqf/brpzLv
         F46GDsWblP78KCQjXsg+tjNUx8K/YLiTRT7MUocY/vAonW9C9SYK9BtaqJeyBPBrmDwb
         DlFCkm4cLmQEWv4UdB0LrnDjacXMmdw5HT5i/fcbLCBkssyQnFHPAWyT+o3/3fxUv2BL
         TG67+tVgZ3MdCVjIFT9hUkhZvvoreCOTmkuKImk6QTZS8VXsR95OuE7ogHIuskAd4HPx
         0psw==
X-Gm-Message-State: AFqh2koZjxCSi/G3pVH3uOgIP1cvFTr61R48iw+Q/qZJqV+fXvL+FgvG
        yf6Jz4HfDB7mynL020elfMD4gQ==
X-Google-Smtp-Source: AMrXdXsRjHBFKUg4zjnL5ymG92f+RoWaUw7PPawb4l7zxJdascVIBlhWi4oUop0Ju2P+LRh50DfC3Q==
X-Received: by 2002:a05:6512:1522:b0:4a4:68b7:e74b with SMTP id bq34-20020a056512152200b004a468b7e74bmr9340637lfb.53.1672408897098;
        Fri, 30 Dec 2022 06:01:37 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q10-20020ac246ea000000b004b57db96aabsm3482667lfo.52.2022.12.30.06.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 06:01:36 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] ARM: dts: qcom: add missing space before {
Date:   Fri, 30 Dec 2022 15:01:32 +0100
Message-Id: <20221230140133.57885-1-krzysztof.kozlowski@linaro.org>
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

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

---

Changes since v1:
1. Correct typo in commit msg (Konrad)
2. Add Rb tag.
---
 arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts | 2 +-
 arch/arm/boot/dts/qcom-apq8064.dtsi                | 6 +++---
 arch/arm/boot/dts/qcom-mdm9615.dtsi                | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
index bf2fb0f70fe4..c57c27cd8a20 100644
--- a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
@@ -22,7 +22,7 @@ reserved-memory {
 		#size-cells = <1>;
 		ranges;
 
-		ramoops@88d00000{
+		ramoops@88d00000 {
 			compatible = "ramoops";
 			reg = <0x88d00000 0x100000>;
 			record-size = <0x00020000>;
diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 1f40a3dd5748..e045edeb5736 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1101,7 +1101,7 @@ sdcc3: mmc@12180000 {
 			dma-names = "tx", "rx";
 		};
 
-		sdcc3bam: dma-controller@12182000{
+		sdcc3bam: dma-controller@12182000 {
 			compatible = "qcom,bam-v1.3.0";
 			reg = <0x12182000 0x8000>;
 			interrupts = <0 96 IRQ_TYPE_LEVEL_HIGH>;
@@ -1129,7 +1129,7 @@ sdcc4: mmc@121c0000 {
 			pinctrl-0 = <&sdc4_gpios>;
 		};
 
-		sdcc4bam: dma-controller@121c2000{
+		sdcc4bam: dma-controller@121c2000 {
 			compatible = "qcom,bam-v1.3.0";
 			reg = <0x121c2000 0x8000>;
 			interrupts = <0 95 IRQ_TYPE_LEVEL_HIGH>;
@@ -1158,7 +1158,7 @@ sdcc1: mmc@12400000 {
 			dma-names = "tx", "rx";
 		};
 
-		sdcc1bam: dma-controller@12402000{
+		sdcc1bam: dma-controller@12402000 {
 			compatible = "qcom,bam-v1.3.0";
 			reg = <0x12402000 0x8000>;
 			interrupts = <0 98 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index 536bd7b50762..8e9ea61a1e48 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -294,7 +294,7 @@ pmicgpio: gpio@150 {
 			};
 		};
 
-		sdcc1bam: dma-controller@12182000{
+		sdcc1bam: dma-controller@12182000 {
 			compatible = "qcom,bam-v1.3.0";
 			reg = <0x12182000 0x8000>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
@@ -304,7 +304,7 @@ sdcc1bam: dma-controller@12182000{
 			qcom,ee = <0>;
 		};
 
-		sdcc2bam: dma-controller@12142000{
+		sdcc2bam: dma-controller@12142000 {
 			compatible = "qcom,bam-v1.3.0";
 			reg = <0x12142000 0x8000>;
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

