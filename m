Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 622A250C2CB
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232502AbiDVWTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233267AbiDVWS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:18:29 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE0732B255
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 14:10:11 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id q22so11055224ljh.10
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 14:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SkwpEmlw/ax4/J9J2jA9J6B1+uN1kkaVOPT3jMcmOGQ=;
        b=M/bSkCOUw2UDFLwtQbGQKWWwfUptFnQreaf3YKwAY92piefJHWMscj/yvSQX2AhJMm
         CKqNipH9jssXI6w4HniNs4GsfX2G0h8fHenUh8HqDI+MCWtqmjvW7X6B1zkg6NJ4UCdA
         upAEjwDAz35sVt45FvAZUjqVOGeb4PchMMdf7D5hcQA7O1MC9X2bMqS/E9MqkZPdP+yx
         Ffytraj+rJ7gFkGgez6d+L65tyKp9OjCqfPVapo48UVBQGrqLyZNagkou/CO/K56VqO1
         VCj6jjBNDtQnWxRN9kgkuUYOrVYpVFNIrp3vhaIe0nVJuhNCIu5tkFgwU3pXFRpGZ3vj
         MluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SkwpEmlw/ax4/J9J2jA9J6B1+uN1kkaVOPT3jMcmOGQ=;
        b=TnRPYABHK4FJInzy8KT6Rzxtazxe+E3pONVPML1SfGLp4sdmoVlMjSbcop0lhqyOXR
         ED3japZGlEy6hVz1GQ1ASWHhR4HkD27Tnaxup8IkFkySUqBPqh+Dnip1dCBNKMqbDa9n
         Or8sogDZFyOaujJ4XL9+V98ybgCmS601MK9fCL6p2WJQZgBp3OkDuuiGZxdGBw9Fm6cE
         ToGVVDuGRH3D1wekfZKwxR0htoCkxHne7QDSTtOA6z6RXMgSlRidRKOv6Ix6S+wqQbYL
         mAPPKk/DdC/mVEYqzKYawnZC8qFWjEN4bbUo65mVp5pSihKB7z0Y0Qua8S0LxhvEMzX8
         Mk1g==
X-Gm-Message-State: AOAM5338MUO9+j2ggJ5JmBmOGe9cLa5yAm3CHZnZjN3De1Ko+PauhpZf
        ZGw/37OMbBjCpxvCbt6+YxfXBg==
X-Google-Smtp-Source: ABdhPJwk2E9EgSIlLEoSEKnyv0ps7nafQuQdtBHmsIVJ9gbQC5kUbalPtTEYUyNvmav0dAOAc/fhDQ==
X-Received: by 2002:a2e:a586:0:b0:24e:f6b3:6159 with SMTP id m6-20020a2ea586000000b0024ef6b36159mr2299144ljp.305.1650661809335;
        Fri, 22 Apr 2022 14:10:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 6-20020ac24d46000000b0046bb728b873sm351240lfp.252.2022.04.22.14.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 14:10:08 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 6/7] arm: dts: qcom-*: replace deprecated perst-gpio with perst-gpios
Date:   Sat, 23 Apr 2022 00:10:01 +0300
Message-Id: <20220422211002.2012070-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422211002.2012070-1-dmitry.baryshkov@linaro.org>
References: <20220422211002.2012070-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace deprecated perst-gpio properties with up-to-date perst-gpios
in the arm32 Qualcomm Snapdragon device trees.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts     | 2 +-
 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts      | 2 +-
 arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi   | 2 +-
 arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts | 2 +-
 arch/arm/boot/dts/qcom-ipq8064.dtsi             | 6 +++---
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
index e068a8d0adf0..160291c5ebeb 100644
--- a/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-cm-qs600.dts
@@ -215,7 +215,7 @@ pci@1b500000 {
 			vdda_refclk-supply = <&v3p3_fixed>;
 			pinctrl-0 = <&pcie_pins>;
 			pinctrl-names = "default";
-			perst-gpio = <&tlmm_pinmux 27 GPIO_ACTIVE_LOW>;
+			perst-gpios = <&tlmm_pinmux 27 GPIO_ACTIVE_LOW>;
 		};
 
 		amba {
diff --git a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
index 2638b380be20..8b1d540a5f65 100644
--- a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
@@ -285,7 +285,7 @@ pci@1b500000 {
 			vdda_refclk-supply = <&ext_3p3v>;
 			pinctrl-0 = <&pcie_pins>;
 			pinctrl-names = "default";
-			perst-gpio = <&tlmm_pinmux 27 GPIO_ACTIVE_LOW>;
+			perst-gpios = <&tlmm_pinmux 27 GPIO_ACTIVE_LOW>;
 		};
 
 		qcom,ssbi@500000 {
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
index 7a337dc08741..872f64a12047 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk04.1.dtsi
@@ -100,7 +100,7 @@ m25p80@0 {
 
 		pci@40000000 {
 			status = "okay";
-			perst-gpio = <&tlmm 38 0x1>;
+			perst-gpios = <&tlmm 38 0x1>;
 		};
 
 		qpic-nand@79b0000 {
diff --git a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
index 06f9f2cb2fe9..ab1835b0fe40 100644
--- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
+++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk07.1-c1.dts
@@ -10,7 +10,7 @@ / {
 	soc {
 		pci@40000000 {
 			status = "okay";
-			perst-gpio = <&tlmm 38 0x1>;
+			perst-gpios = <&tlmm 38 0x1>;
 		};
 
 		spi@78b6000 {
diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
index 996f4458d9fc..fa67cb6adcb8 100644
--- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
@@ -842,7 +842,7 @@ pcie0: pci@1b500000 {
 			pinctrl-names = "default";
 
 			status = "disabled";
-			perst-gpio = <&qcom_pinmux 3 GPIO_ACTIVE_LOW>;
+			perst-gpios = <&qcom_pinmux 3 GPIO_ACTIVE_LOW>;
 		};
 
 		pcie1: pci@1b700000 {
@@ -893,7 +893,7 @@ pcie1: pci@1b700000 {
 			pinctrl-names = "default";
 
 			status = "disabled";
-			perst-gpio = <&qcom_pinmux 48 GPIO_ACTIVE_LOW>;
+			perst-gpios = <&qcom_pinmux 48 GPIO_ACTIVE_LOW>;
 		};
 
 		pcie2: pci@1b900000 {
@@ -944,7 +944,7 @@ pcie2: pci@1b900000 {
 			pinctrl-names = "default";
 
 			status = "disabled";
-			perst-gpio = <&qcom_pinmux 63 GPIO_ACTIVE_LOW>;
+			perst-gpios = <&qcom_pinmux 63 GPIO_ACTIVE_LOW>;
 		};
 
 		nss_common: syscon@03000000 {
-- 
2.35.1

