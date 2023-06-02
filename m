Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D649F720591
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 17:11:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236487AbjFBPLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 11:11:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236508AbjFBPK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 11:10:56 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA5B10D0
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 08:10:30 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4eed764a10cso2887757e87.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 08:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685718628; x=1688310628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HnLsk6jDDqo5sMm8ukF9RbIFXwBQOGbNHyy1yJ+BIY8=;
        b=VZmCPOhwm5Qb4UoZeOgjrNl+/S955GOGVNwjrcNTqsugACyV+f3GKfgikfTcy6y+03
         A8hUqbO/czZj9VrJreZZs7AqgfezHORPpSxTW0DDciHtzMA5CvFH9KzESigJ008sOhQS
         aI7DsJVYmw7KSnZdvgtk+w/xOdcDZkq50rEK2xenaX45vszEym9FuRvWmYW+3pqX++/j
         ADVs7JB0OoIlbbfU10BhmjKGKcnEMWujSh5PHQdTBKWuhU90gPkPbpxLbT46XmIzmJ8V
         gH8/o5rDjvWU5dSzDPLtfecId6YvJo5EzBEpch6QKwf0gycJI6WoDYjHUGPjeV1LSkbI
         0ktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685718628; x=1688310628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HnLsk6jDDqo5sMm8ukF9RbIFXwBQOGbNHyy1yJ+BIY8=;
        b=Z4nCKxHxEJ+ig8HeAOxovvnM10oT225uggIYYSx6UQlwU3xYD6PXGXk+2163XeGhmF
         VC8LsHh1xGmoNMLAK5W4Co85TTln8wc3IznVhlUq3kzlqlHqujc7fVuleNeBgbvOdWeE
         vOqTpVi/YBJOryek74c2KnPG6DlODR4PKXBReLAuO9U9LtkCjUwuQETMkggPxWqy5J4P
         iIYoopzIJP8pXKNsbZ44wcMw/4G0E911XRBMTMiKFsH4BNmdK66IJdEW1604bZ/l3+lH
         WAubuOO5dp3iYRjDlpmeVxa4Nhurl7hV1Obb6koVSYfKws/JyIU4BG55kh7MIcBwIri9
         TArg==
X-Gm-Message-State: AC+VfDyR1E9GPw3Jdbvx3puJheHs4SBjpo7Bf/YWO9E83h37A8XvbKcn
        cUDDCe6IqjxQd4GWF/a3sZs=
X-Google-Smtp-Source: ACHHUZ6oUbT8aezDjY4ZDRg2WMorO9P1iuCzVI9kvvPgKyfQb3TJc7YEd2YRlqPK/jI2GNpkdZRtyQ==
X-Received: by 2002:ac2:4a9a:0:b0:4f4:b3a6:4140 with SMTP id l26-20020ac24a9a000000b004f4b3a64140mr2018798lfp.42.1685718627634;
        Fri, 02 Jun 2023 08:10:27 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id r23-20020ac24d17000000b004f4b0f20f1fsm190000lfi.281.2023.06.02.08.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 08:10:27 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] ARM: dts: BCM5301X: Use updated "spi-gpio" binding properties
Date:   Fri,  2 Jun 2023 17:10:23 +0200
Message-Id: <20230602151023.8607-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Switch away from deprecated properties.

This fixes:
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: gpio-sck: False schema does not allow [[6, 7, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: gpio-mosi: False schema does not allow [[6, 4, 0]]
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: 'sck-gpios' is a required property
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml
arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dtb: spi: Unevaluated properties are not allowed ('gpio-mosi', 'gpio-sck' were unexpected)
        From schema: Documentation/devicetree/bindings/spi/spi-gpio.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Update bcm4708-buffalo-wzr-1166dhp-common.dtsi as well
---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi | 4 ++--
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts         | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts        | 4 ++--
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts         | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
index e583b9cbf07c..0846887ba144 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1166dhp-common.dtsi
@@ -16,8 +16,8 @@ / {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index 43c698a0a7c3..95ef6ca7210b 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 407319cb5c0d..a2b7644eaf39 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
index f8622ecce6a2..7655e4ff2d1c 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
@@ -28,8 +28,8 @@ memory@0 {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 7 0>;
-		gpio-mosi = <&chipcommon 4 0>;
+		sck-gpios = <&chipcommon 7 0>;
+		mosi-gpios = <&chipcommon 4 0>;
 		cs-gpios = <&chipcommon 6 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.35.3

