Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0759871359A
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 18:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231449AbjE0QK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 12:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjE0QK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 12:10:58 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A3FC9
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:10:56 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6af9f389fc6so312844a34.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685203856; x=1687795856;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c5ogs3HtEG96ydGFoiCJLQKE7ouXohV5WtC6xECt3/o=;
        b=UnEZoSh4vVETkmGRjACacw17A8gKsySD0FQCwhgKuW8wU4Vo0SM2v8OXNsii/LKGY/
         ONRlIJw0HJBO7uCPwhcUeXREvKWU8ymQwynnb5U9eUIreCS9gRXNjNuLWtqI5smRIkN0
         SsLwuWdK+V1RZAjaLDNcVAlpkpG9SlaMotnIMYREeeQTQL+yBlqwdIZMfrHBwV/1YmvX
         6/4uJcLWYh8Us3bcV2C1ZC5MspYS8EZDc3s7zbeVhmqw+S3eIZEBlkR6VD+CzHLyEKkA
         5P9XoavAPtZUyp6KsuREJDFkHUEgvwj83eMCRu8zcr+5kDkBU5nfODniIP51EGTQNIhO
         USDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685203856; x=1687795856;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c5ogs3HtEG96ydGFoiCJLQKE7ouXohV5WtC6xECt3/o=;
        b=htUmrOJTBpfO1bhhsTLUbU9lORzOUkQoz2GofEjLAs6wMX3KCJfObtxUFnLyXyp9Y/
         hCU3P9cE4mxWihjflRQeZ3YYITewbhH99juZ/MHGOzztezUNaXu/Cmjawep4EuB0t0uC
         xLE/VsDjysj+SfMrRwS0H0rxAXsaJwz055XpHES7dGC+B42SED5JIOcDHPA5vCDBaLiM
         vGzOlOB3CvUGdm4XNMTo7xcoWB3SFISylvjjRsihj7TgzhjxOKQAELdDz94nj9uBl30Y
         PkFGkKuRBR92cn9pfGZmr1YXQM8Ijc9F0RCVT4mMlyNeQZAleVc98miUCud35OpoE0QS
         5puw==
X-Gm-Message-State: AC+VfDw/QmQWcGkHZrRSLuR/FkSLoEWJLExFWVRoFs6USDMdKZxvY2U3
        vxun33tMbwKPQQO8RCC6Qa4=
X-Google-Smtp-Source: ACHHUZ6bpAPyub2UQs3P6aBj8Z2dgHu/sNl31DpbFHeZITYKjze4051zoj70ZsADudDrbUuvjiyFZQ==
X-Received: by 2002:aca:c204:0:b0:396:4680:df1b with SMTP id s4-20020acac204000000b003964680df1bmr2356829oif.3.1685203855712;
        Sat, 27 May 2023 09:10:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1d6b:5783:aa5c:b83d])
        by smtp.gmail.com with ESMTPSA id r81-20020acaa854000000b00397f39bcf4asm2912764oie.36.2023.05.27.09.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 09:10:55 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] ARM: dts: imx6: Use the mux- prefix
Date:   Sat, 27 May 2023 13:10:46 -0300
Message-Id: <20230527161046.346506-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
there must be a "mux-" prefix in the audmux port nodes.

Add the "mux-" prefix to avoid devicetree schema warnings.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Squash into a single patch. (Shawn)

 arch/arm/boot/dts/imx6dl-qmx6.dtsi           | 4 ++--
 arch/arm/boot/dts/imx6q-cm-fx6.dts           | 4 ++--
 arch/arm/boot/dts/imx6q-display5.dtsi        | 4 ++--
 arch/arm/boot/dts/imx6q-kp.dtsi              | 4 ++--
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi        | 4 ++--
 arch/arm/boot/dts/imx6qdl-gw551x.dtsi        | 4 ++--
 arch/arm/boot/dts/imx6qdl-hummingboard.dtsi  | 4 ++--
 arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi | 4 ++--
 arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi     | 4 ++--
 arch/arm/boot/dts/imx6qdl-icore.dtsi         | 4 ++--
 arch/arm/boot/dts/imx6qdl-mba6.dtsi          | 4 ++--
 arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi | 4 ++--
 arch/arm/boot/dts/imx6qdl-tx6.dtsi           | 4 ++--
 arch/arm/boot/dts/imx6qdl-var-dart.dtsi      | 4 ++--
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi      | 8 ++++----
 15 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/imx6dl-qmx6.dtsi b/arch/arm/boot/dts/imx6dl-qmx6.dtsi
index 150d69858255..05fd8ff4da1e 100644
--- a/arch/arm/boot/dts/imx6dl-qmx6.dtsi
+++ b/arch/arm/boot/dts/imx6dl-qmx6.dtsi
@@ -48,7 +48,7 @@ &audmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_audmux>;
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -60,7 +60,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT6)
 		>;
 	};
 
-	audmux_aud6 {
+	mux-aud6 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT6>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6q-cm-fx6.dts b/arch/arm/boot/dts/imx6q-cm-fx6.dts
index 1ad41c944b4b..ffb3b8eeae5d 100644
--- a/arch/arm/boot/dts/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/imx6q-cm-fx6.dts
@@ -141,7 +141,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_RCLKDIR |
@@ -152,7 +152,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(3)
 		>;
 	};
 
-	audmux4 {
+	mux-audmux4 {
 		fsl,audmux-port = <3>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
diff --git a/arch/arm/boot/dts/imx6q-display5.dtsi b/arch/arm/boot/dts/imx6q-display5.dtsi
index fef5d7254536..b88b8aa730d7 100644
--- a/arch/arm/boot/dts/imx6q-display5.dtsi
+++ b/arch/arm/boot/dts/imx6q-display5.dtsi
@@ -147,7 +147,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -159,7 +159,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(5)
 		>;
 	};
 
-	aud6 {
+	mux-aud6 {
 		fsl,audmux-port = <5>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_RFSEL(8) |
diff --git a/arch/arm/boot/dts/imx6q-kp.dtsi b/arch/arm/boot/dts/imx6q-kp.dtsi
index 5e0ed5560040..091903f53a56 100644
--- a/arch/arm/boot/dts/imx6q-kp.dtsi
+++ b/arch/arm/boot/dts/imx6q-kp.dtsi
@@ -135,7 +135,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -147,7 +147,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
index 4e20cb97058e..f50a16bec67c 100644
--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
@@ -187,7 +187,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>; /* AUD4<->sgtl5000 */
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -199,7 +199,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
index 0fa4b8eeddee..29960d1cf6a0 100644
--- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
@@ -171,7 +171,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>; /* AUD5<->tda1997x */
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -183,7 +183,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi b/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
index 2ffb21dd89f2..bfade7149080 100644
--- a/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-hummingboard.dtsi
@@ -147,7 +147,7 @@ sound-spdif {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -159,7 +159,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi b/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
index eb1ad28946d3..0883ef99cded 100644
--- a/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-hummingboard2.dtsi
@@ -179,7 +179,7 @@ sound_codec: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -191,7 +191,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi b/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
index a4217f564a53..2f69341d2272 100644
--- a/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
@@ -118,7 +118,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -130,7 +130,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT4)
 		>;
 	};
 
-	audmux_aud4 {
+	mux-aud4 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-icore.dtsi b/arch/arm/boot/dts/imx6qdl-icore.dtsi
index 23c318d9636f..efe11524b885 100644
--- a/arch/arm/boot/dts/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore.dtsi
@@ -109,7 +109,7 @@ &audmux {
 	status = "okay";
 
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -121,7 +121,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT4)
 		>;
 	};
 
-	audmux_aud4 {
+	mux-aud4 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
index 7b7e6c2ad190..b497303013c8 100644
--- a/arch/arm/boot/dts/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-mba6.dtsi
@@ -129,7 +129,7 @@ sound {
 &audmux {
 	status = "okay";
 
-	ssi0 {
+	mux-ssi0 {
 		fsl,audmux-port = <MX31_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -141,7 +141,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX31_AUDMUX_PORT3_SSI_PINS_3)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <MX31_AUDMUX_PORT3_SSI_PINS_3>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
index 51d28e275aa6..a41e47c06ef4 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
@@ -75,7 +75,7 @@ dailink_master: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -87,7 +87,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-tx6.dtsi b/arch/arm/boot/dts/imx6qdl-tx6.dtsi
index a197bac95cba..e2fe337f7d9e 100644
--- a/arch/arm/boot/dts/imx6qdl-tx6.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-tx6.dtsi
@@ -216,7 +216,7 @@ codec_dai: simple-audio-card,codec {
 &audmux {
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -228,7 +228,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	pins5 {
+	mux-pins5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
index c41cac502bac..200559d7158d 100644
--- a/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-var-dart.dtsi
@@ -39,7 +39,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -51,7 +51,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index abd72d72ae99..9ff183e4e069 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -848,7 +848,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -860,7 +860,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(2)
 		>;
 	};
 
-	aud3 {
+	mux-aud3 {
 		fsl,audmux-port = <2>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
@@ -868,7 +868,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(0)
 		>;
 	};
 
-	ssi2 {
+	mux-ssi2 {
 		fsl,audmux-port = <1>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_SYN |
@@ -880,7 +880,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(4)
 		>;
 	};
 
-	aud5 {
+	mux-aud5 {
 		fsl,audmux-port = <4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

