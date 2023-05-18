Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDD3D7077CA
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 04:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjERCGA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 22:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjERCGA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 22:06:00 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96AAF2D7B
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 19:05:57 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 7694F860F1;
        Thu, 18 May 2023 04:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684375554;
        bh=txEd+mjTbK7UJ4x9dqv/n3gIh4TCN6LC1jcntuypXSI=;
        h=From:To:Cc:Subject:Date:From;
        b=y8eMzqQN8POMx5nk/wIZZpmFOzkDsvb+e9b66/2UYwydd7yL/QWytJaKRybbzzDd2
         ul142aRFwSDpvcXVREqANvGBY12vgFS2cQoSucNCNJcWBO7CCDpGtmEHx7b3WJzeXn
         NRcQwVEPygqwsFJJBjh+buyPCSuQ1rKvf2EcWhcKokR+tVht1tByM34eGEDS7w0vQm
         8mstoRxv8e10OubIQe9rZ37T6J0482EiUOMFq4ZjiOkhx9bf4gWZt9p8rDcj9eB7LE
         qS3FEcD2pgoYH6hV2Ry2Iw/vFSTQgddM9Wctsh0mMA0v8a+SzDddqGadlEgV5NXgDL
         dUDil9WQFxdHQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Update to generic ADC channel binding on DHSOM systems
Date:   Thu, 18 May 2023 04:05:47 +0200
Message-Id: <20230518020547.487670-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The generic ADC channel binding is recommended over legacy one, update the
DT to the modern binding. No functional change. For further details, see
commit which adds the generic binding to STM32 ADC binding document:
664b9879f56ef ("dt-bindings: iio: stm32-adc: add generic channel binding")

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi  | 24 ++++++----
 .../boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 44 +++++++++++++++----
 2 files changed, 52 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
index a38009f8456b8..95f3fbdcb3d17 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
@@ -80,17 +80,25 @@ &adc {
 	vdda-supply = <&vdda>;
 	vref-supply = <&vdda>;
 	status = "okay";
+};
 
-	adc1: adc@0 {
-		st,min-sample-time-nsecs = <5000>;
-		st,adc-channels = <0>;
-		status = "okay";
+&adc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	channel@0 {
+		reg = <0>;
+		st,min-sample-time-ns = <5000>;
 	};
+};
 
-	adc2: adc@100 {
-		st,adc-channels = <1>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
+&adc2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	channel@1 {
+		reg = <1>;
+		st,min-sample-time-ns = <5000>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
index 2b52515457e4b..02c1a7474826c 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
@@ -111,17 +111,45 @@ &adc {
 	vdda-supply = <&vdda>;
 	vref-supply = <&vdda>;
 	status = "okay";
+};
 
-	adc1: adc@0 {
-		st,adc-channels = <0 1 6>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
+&adc1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	channel@0 {
+		reg = <0>;
+		st,min-sample-time-ns = <5000>;
 	};
 
-	adc2: adc@100 {
-		st,adc-channels = <0 1 2>;
-		st,min-sample-time-nsecs = <5000>;
-		status = "okay";
+	channel@1 {
+		reg = <1>;
+		st,min-sample-time-ns = <5000>;
+	};
+
+	channel@6 {
+		reg = <6>;
+		st,min-sample-time-ns = <5000>;
+	};
+};
+
+&adc2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	channel@0 {
+		reg = <0>;
+		st,min-sample-time-ns = <5000>;
+	};
+
+	channel@1 {
+		reg = <1>;
+		st,min-sample-time-ns = <5000>;
+	};
+
+	channel@2 {
+		reg = <2>;
+		st,min-sample-time-ns = <5000>;
 	};
 };
 
-- 
2.39.2

