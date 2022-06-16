Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3F0654D67B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350655AbiFPAzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351071AbiFPAzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:55:15 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8675A57994
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:40 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id c196so120149pfb.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hRK+N8glfjkwW89EeiwLUV26aVUV7wxe9krThCPLJyE=;
        b=EhTIVMcl6s3oOS749leaGQ+JKaeM7uP6K8afvea5+UEQ9SiwM/0BkIdy+bjf77koY0
         /eeYaZnSKYP/Vj03mK162szbYWzjaI+HtQMXAsnFw3B/z+ckzR/ELrM7LA170t/ThqDr
         UcjR27TaF5kG0Ajkt7zQ1rIvedjTm9JguMkDsmdPgy8Pe9LA/l7Zytq9rWWPKabCCFWI
         rKfnSXLsdkE2nvw9TBe7b2jbV7SKEXnGnDqVWPKMZb2wCvCDGmquXchkGFEYSRbCw9EL
         1FLRnbeZRAm64EU0Rk8I0hVp/wJbyq+M97zi4bAWSul/a9TaFIdP0mMrK7gcDIxu5hjM
         z/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hRK+N8glfjkwW89EeiwLUV26aVUV7wxe9krThCPLJyE=;
        b=dxtgbiz9UN+tRAMHC/Q9vwfg/gGDQs/Ag0BtC0xanYIhzVTyKe7T/uptKZCgNz+gos
         5a2kTXsLUvMDvg8saevXgO8clZMZRDNBNat/PPqUk3MTBrs4YJDDii7lNn+8aRGcWC7N
         HZxjPfHJePEwenoMUlEYiMnKxZ3X6kU6QxtOf48gzjPfKUySI4DDJ2cDdHqB9F1j6G6/
         bUfOjpE1nz8a6xERg133R0kNH/l/GG03IiQlh0vBntjjYkzNXJUpErlnnXCOWhC8LTvQ
         iD76TqQ9dYVZ1yDt5Uk2tuSkrk0kg5HuqbyezCJNHjU+qA9VdWVv1f4q+DE15sMf8Rn8
         ZhRQ==
X-Gm-Message-State: AJIora/m9+6rW9n/OQLPSHB1dFqKSo2di/oeDjqKG1RTjSAau24PQSzs
        xTmjMhOoWJxviT5WWSUamuvvFA==
X-Google-Smtp-Source: AGRyM1t5f7PMnYnW7ysu11iUL9hNz7d0Wwmhfz+0v4yiu7bVXmj8+UWmmSt9dPANsftj/fntn4EUyg==
X-Received: by 2002:a63:3f42:0:b0:408:c84e:509c with SMTP id m63-20020a633f42000000b00408c84e509cmr2139322pga.75.1655340878871;
        Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 30/40] arm64: dts: xilinx: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:23 -0700
Message-Id: <20220616005333.18491-30-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
index bb2602dd2805..20e83ca47b5d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
@@ -52,7 +52,7 @@ memory@0 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		fwuen {
+		key-fwuen {
 			label = "fwuen";
 			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index f6aad4159ccd..d61a297a2090 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -49,7 +49,7 @@ memory@0 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		sw4 {
+		switch-4 {
 			label = "sw4";
 			gpios = <&gpio 23 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 7b9a88b125d1..5fd6b70a154a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -47,7 +47,7 @@ memory@0 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		sw19 {
+		switch-19 {
 			label = "sw19";
 			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_DOWN>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 20b7c75bb1d3..e2dd72fe33ce 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -47,7 +47,7 @@ memory@0 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		sw19 {
+		switch-19 {
 			label = "sw19";
 			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_DOWN>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index e36df6adbeee..d685d8fbc36a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -47,7 +47,7 @@ memory@0 {
 	gpio-keys {
 		compatible = "gpio-keys";
 		autorepeat;
-		sw19 {
+		switch-19 {
 			label = "sw19";
 			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_DOWN>;
-- 
2.34.1

