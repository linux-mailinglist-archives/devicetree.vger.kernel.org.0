Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D0F271364C
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 21:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjE0TuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 15:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0TuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 15:50:19 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8168EBE
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:17 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6af8a21556fso441791a34.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685217017; x=1687809017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RIReTcBzKjpdNTCQkRnl/GnfVRmKZQ2Cara/MP1uH8o=;
        b=DHHyDBV70FcCxhfB5IB9N1I5YhoFRRocQfWmkT33E380s3FIPhKi8uayqa2eDm1cvW
         9XSwIltg1cBjp7tlyrtb+5kty4/I+yjPXdPPSRklFcRLUAF8YigSAKz5QrW3sOKH6GcH
         6Oar94/oDLYYJCaylHuafZMJWP56d8fwavla9WRL5Tv6EA3IYw8GTfoWxOLk82Dbvyfk
         oqiAkCAa5NvO6q8o4AXJI86EabpkgJiRskhExjFLp2KWPilInT4oDrGjjoBxSPKPFSsz
         XdLh8gqjdwLrWAZNuuoDgfefSSq7X6BUEAUfdZkWEU6DU7PoXk1UuC1Jnl0A/JQR1bcQ
         qBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685217017; x=1687809017;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RIReTcBzKjpdNTCQkRnl/GnfVRmKZQ2Cara/MP1uH8o=;
        b=IV3RhhPMcLFUAdYugmZhkf8vOi0Rz+gMzs5OYExJcJRi65/7GJMIbF+x5jyND5J7+b
         /OnAXkqtYtcJr4ZfSNAi+XYqFLMu3tJ9fkKcKH6PY/v106lEN5HFO6G6o7w2zs+2iWxX
         3nd92SDup1Vrqzg73CVCMeue7V8VivA2y9CQzJX+6GQB/aydj7ALsa1snp8Ft+pUjkPu
         tLHw5XeC+lnmMOUV38XsT7Awau4OyE4+BZoc9IT2FFAZBXMQMEwAF2QLsXpE5BDTq9sB
         zHRBS9Z2L+tnOBdicNQ9DMeExlv+Y+ZBP26616Q0RFjQ0P/4VP0mLxzoaefpeshIGr31
         nuKQ==
X-Gm-Message-State: AC+VfDxrF537WirRwzapI1cdKnwWjbzW1H3XfrncjXxEXQ5Agz7QtK3D
        gvULE8saKF8z2PbT4vvlQ48=
X-Google-Smtp-Source: ACHHUZ640KvFiuKKkX4g+IG/aCSfE10UiZ9XJjZsoJ9zJhzMsAyZ0EUp4YYJ+GljRZyT9oB1v3WM5Q==
X-Received: by 2002:a05:6870:2215:b0:18e:f0fe:3638 with SMTP id i21-20020a056870221500b0018ef0fe3638mr3708923oaf.1.1685217016999;
        Sat, 27 May 2023 12:50:16 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id s4-20020a056871050400b0019ea8771fb0sm3035044oal.13.2023.05.27.12.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 12:50:16 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] ARM: dts: imx: Use 'pmic' as node name
Date:   Sat, 27 May 2023 16:50:04 -0300
Message-Id: <20230527195005.398815-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527195005.398815-1-festevam@gmail.com>
References: <20230527195005.398815-1-festevam@gmail.com>
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
 arch/arm/boot/dts/imx6dl-riotboard.dts         | 2 +-
 arch/arm/boot/dts/imx6q-dmo-edmqmx6.dts        | 2 +-
 arch/arm/boot/dts/imx6q-novena.dts             | 2 +-
 arch/arm/boot/dts/imx6q-pistachio.dts          | 2 +-
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi          | 2 +-
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi       | 2 +-
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi         | 2 +-
 arch/arm/boot/dts/imx6qdl-wandboard-revd1.dtsi | 2 +-
 arch/arm/boot/dts/imx6sl-evk.dts               | 2 +-
 arch/arm/boot/dts/imx6sx-sdb-reva.dts          | 2 +-
 arch/arm/boot/dts/imx6ul-pico.dtsi             | 2 +-
 arch/arm/boot/dts/imx7d-nitrogen7.dts          | 2 +-
 arch/arm/boot/dts/imx7d-sdb.dts                | 2 +-
 arch/arm/boot/dts/imx7s-warp.dts               | 2 +-
 14 files changed, 14 insertions(+), 14 deletions(-)

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
index f50a16bec67c..864c53d149a6 100644
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

