Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9EDE713678
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjE0UvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:51:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0UvG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:51:06 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61409B4
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:51:01 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6af8a21556fso453178a34.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685220660; x=1687812660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KC1ibgRYufmcYHiALFlxkTHfaEwYZwPHYHZAGC8qOSc=;
        b=gtgRuk0xTu7K2r5S9psEdPXZ/2SMqsc5WV9CuqbOwy+rNAjio/6K2Pya8NcK3y7zKa
         csNqLZqVm4ppAMXD61gFpHQ2w3zYV3SHM+1fy3ylWdutur4IkzyI5yvfK0uvs7rMZEt1
         vah8xpKGuyhShOn8B0vDd00vkDEGNYvaqGMEf1ZAcwoMISG651Xl4gGYRsQwUsXDIsWz
         tvlsyiGjTqOxS99KsTl7dcGWiLt3nhIccocRZ8xoFsIO/qesr8B1UjCwLzItOEeLXW80
         4gD3a8pLT87vje66ONkbDs5rV/7hiWWG2f1StTgfNeeVXifIHyerZcfEL12SmPb3mRqV
         vaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685220660; x=1687812660;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KC1ibgRYufmcYHiALFlxkTHfaEwYZwPHYHZAGC8qOSc=;
        b=CZgxcF84b6U5mCfHwwhfrOWeAa+TcJqv35sgK6XkqTVN7oHfRkwlxWOoNMfieO1WbJ
         wlqU22C72CobI97hkJ8p2rQn/FL/JqtWCVUHRqoGn1dGkJxfsZD6sNlqAaKi4qIJssDd
         14kGkHoJORtOPnZmmwlxA32ZQYXBFBRGl3niE1XmqLvlCPBQbkAG5aTMBdcl6uGwkM/B
         5xokYn6ha2lxi48zo5mPOQAHt43Cn1NobYhIW75Q+G12fRPnS1RcS6HAPnhZ6eZ+NLa+
         Xp1nP8N1w8rTDkyVZHHQ2t14t/y2k2DWRxpeh7GLDT5zXPepXUeFYqRQjagpd47V4HVM
         w+LQ==
X-Gm-Message-State: AC+VfDyKSzFVkQbdQrFBr6w/C8jwJ/iMS8L4MtyPXxwkocNxNR6cRKzQ
        mAppJAlsYj2i5nkp1UII6wA=
X-Google-Smtp-Source: ACHHUZ7NT92R8WpDjZjLe5Uf8ELYSu1N/kFY03XDATIK68HUMjMHUwbbKkV7wen+Of34cDQfqHDb7w==
X-Received: by 2002:aca:c286:0:b0:397:f129:a6cc with SMTP id s128-20020acac286000000b00397f129a6ccmr2447519oif.1.1685220660646;
        Sat, 27 May 2023 13:51:00 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id v131-20020aca6189000000b003941c3b9f0dsm3106458oib.41.2023.05.27.13.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 13:51:00 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/3] ARM: dts: imx: Use 'pmic' as node name
Date:   Sat, 27 May 2023 17:50:47 -0300
Message-Id: <20230527205048.418360-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527205048.418360-1-festevam@gmail.com>
References: <20230527205048.418360-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Devicetree node names should be generic. Use 'pmic' as node name
to avoid devicetree check warning from pfuze100.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Convert more devicetrees that were missed in v1.

 arch/arm/boot/dts/imx6dl-riotboard.dts           | 2 +-
 arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts          | 2 +-
 arch/arm/boot/dts/imx6q-gw5400-a.dts             | 2 +-
 arch/arm/boot/dts/imx6q-novena.dts               | 2 +-
 arch/arm/boot/dts/imx6q-pistachio.dts            | 2 +-
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi            | 2 +-
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi         | 2 +-
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi           | 2 +-
 arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi   | 2 +-
 arch/arm/boot/dts/imx6sl-evk.dts                 | 2 +-
 arch/arm/boot/dts/imx6sx-sdb-reva.dts            | 2 +-
 arch/arm/boot/dts/imx6sx-sdb.dts                 | 2 +-
 arch/arm/boot/dts/imx6sx-softing-vining-2000.dts | 2 +-
 arch/arm/boot/dts/imx6ul-pico.dtsi               | 2 +-
 arch/arm/boot/dts/imx7d-nitrogen7.dts            | 2 +-
 arch/arm/boot/dts/imx7d-pico.dtsi                | 2 +-
 arch/arm/boot/dts/imx7d-sdb.dts                  | 2 +-
 arch/arm/boot/dts/imx7s-warp.dts                 | 2 +-
 18 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl-riotboard.dts b/arch/arm/boot/dts/imx6dl-riotboard.dts
index 24c7f535f63b..0366d1037ef4 100644
--- a/arch/arm/boot/dts/imx6dl-riotboard.dts
+++ b/arch/arm/boot/dts/imx6dl-riotboard.dts
@@ -177,7 +177,7 @@ codec: sgtl5000@a {
 		VDDIO-supply = <&reg_3p3v>;
 	};
 
-	pmic: pf0100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 		interrupt-parent = <&gpio5>;
diff --git a/arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts b/arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts
index 9591848cbd37..3815cb660ff7 100644
--- a/arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts
+++ b/arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts
@@ -134,7 +134,7 @@ &pinctrl_stmpe2
 		     &pinctrl_pfuze>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 		interrupt-parent = <&gpio3>;
diff --git a/arch/arm/boot/dts/imx6q-gw5400-a.dts b/arch/arm/boot/dts/imx6q-gw5400-a.dts
index 522a51042965..0ba802b891b5 100644
--- a/arch/arm/boot/dts/imx6q-gw5400-a.dts
+++ b/arch/arm/boot/dts/imx6q-gw5400-a.dts
@@ -206,7 +206,7 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6q-novena.dts b/arch/arm/boot/dts/imx6q-novena.dts
index ee8c0bd3ecfd..a7d5a68110fc 100644
--- a/arch/arm/boot/dts/imx6q-novena.dts
+++ b/arch/arm/boot/dts/imx6q-novena.dts
@@ -308,7 +308,7 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2_novena>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6q-pistachio.dts b/arch/arm/boot/dts/imx6q-pistachio.dts
index bad8d831e64e..109b46a22b5e 100644
--- a/arch/arm/boot/dts/imx6q-pistachio.dts
+++ b/arch/arm/boot/dts/imx6q-pistachio.dts
@@ -208,7 +208,7 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
index 4e20cb97058e..e60efb6488a3 100644
--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
@@ -400,7 +400,7 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
index f79caa36f3d2..68e97180d33e 100644
--- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
@@ -336,7 +336,7 @@ &i2c2 {
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
index 53b080c97f2d..4fe58764b929 100644
--- a/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabresd.dtsi
@@ -338,7 +338,7 @@ ov5640_to_mipi_csi2: endpoint {
 		};
 	};
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi b/arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi
index bf86b639fdac..9b8c9c23ab54 100644
--- a/arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi
@@ -27,7 +27,7 @@ &i2c3 {
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6sl-evk.dts b/arch/arm/boot/dts/imx6sl-evk.dts
index dc5d596c18db..239bc6dfc584 100644
--- a/arch/arm/boot/dts/imx6sl-evk.dts
+++ b/arch/arm/boot/dts/imx6sl-evk.dts
@@ -160,7 +160,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6sx-sdb-reva.dts b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
index 7dda42553f4b..48f19dede467 100644
--- a/arch/arm/boot/dts/imx6sx-sdb-reva.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
@@ -15,7 +15,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dts b/arch/arm/boot/dts/imx6sx-sdb.dts
index 969cfe920d25..e05a1be5553c 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb.dts
@@ -14,7 +14,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze200";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
index b9a1401e6c6d..bfcd8f7d86dd 100644
--- a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
@@ -171,7 +171,7 @@ proximity: sx9500@28 {
 		reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;
 	};
 
-	pmic: pfuze100@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze200";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx6ul-pico.dtsi b/arch/arm/boot/dts/imx6ul-pico.dtsi
index 357ffb2f5ad6..4ffe99ed55ca 100644
--- a/arch/arm/boot/dts/imx6ul-pico.dtsi
+++ b/arch/arm/boot/dts/imx6ul-pico.dtsi
@@ -131,7 +131,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze3000@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx7d-nitrogen7.dts b/arch/arm/boot/dts/imx7d-nitrogen7.dts
index a31de900139d..9c6476bda4a0 100644
--- a/arch/arm/boot/dts/imx7d-nitrogen7.dts
+++ b/arch/arm/boot/dts/imx7d-nitrogen7.dts
@@ -159,7 +159,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze3000@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index e0bff39e8d3e..73d90845e85c 100644
--- a/arch/arm/boot/dts/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/imx7d-pico.dtsi
@@ -170,7 +170,7 @@ &i2c4 {
 	pinctrl-0 = <&pinctrl_i2c4>;
 	status = "okay";
 
-	pmic: pfuze3000@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index c9f6137e73e7..cc9b8570ed4d 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -275,7 +275,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze3000@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
diff --git a/arch/arm/boot/dts/imx7s-warp.dts b/arch/arm/boot/dts/imx7s-warp.dts
index e8734d218b9d..ba7231b364bb 100644
--- a/arch/arm/boot/dts/imx7s-warp.dts
+++ b/arch/arm/boot/dts/imx7s-warp.dts
@@ -94,7 +94,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze3000@8 {
+	pmic: pmic@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
-- 
2.34.1

