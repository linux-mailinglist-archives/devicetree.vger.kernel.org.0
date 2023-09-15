Return-Path: <devicetree+bounces-552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF80C7A1EC9
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:34:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E06BE1C21504
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6876310788;
	Fri, 15 Sep 2023 12:34:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC5EFC12
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:34:22 +0000 (UTC)
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B716DDD
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:34:20 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6c09f50ae00so188359a34.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694781260; x=1695386060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U3Gd4N15XLM3pKkHwOtx+4m6etCa6hBL791D2Ly7kXM=;
        b=dN+ZGOI5gIM97d+TyURqPc+rk4+EANHOQvGduu4w21rAaBVIldiNUBpUtU6/zhm3OT
         zSEdrDV62mg5E71Gbd1m7Zo6OZPZ0+OZURGQfCqifzTuqalthzmjlictcDHRHX/1gc7B
         VfO+5oUfqX8XWSqeV2bJTankmlLVMKIX+zGvcG/p1ZpEzmAZxBi8EANO4/XKKAxyQOGM
         zSk2xA6AG1WYIheyc5h+MAtTHwjI6PcVvVzRqghjxDIlCqeKIQC0s3NfPhEs+2g3Mgju
         ROxPEN+bc2+ZswPaYbZCH1WBGn9uYiqn1VtMZ17SEi1gdg7k+sP9wHll/XAAExmhP6ly
         euxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781260; x=1695386060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3Gd4N15XLM3pKkHwOtx+4m6etCa6hBL791D2Ly7kXM=;
        b=DthwZFH6aJ6u4o8yTE8dJgWpoOzMnrKA0n3pUwzWsSP3l3nzIZGTw56pYEEBWpnp9n
         AOA9C31gnaLimFsn+pyYObpgpTxYr78MhOZ5996XYc+yyqitpruChsiPT/1H6+Yp2DWk
         PXE1dhNRkCb2+6+z5SQQWB4NYfPiy3xMqafytBho1D+aiJ7HhhXG82bBUz70X/Plxls8
         08hCReEbZBRmu0BUM7SUXzhAcQhbIj0UPhin1WTNJOXdCs+DO3d7fUY4BuBETss9NTWo
         9nbcAlznWWiiXlVsPSr9R9a6HdKHW5Vnh4oeNe9FODKlLtQYn/u7J2lAhMiNih6gdMuk
         VLLg==
X-Gm-Message-State: AOJu0YyS8Uy2dNMpSpqvsZdfUrFouGEpgWDbRx15En3vVS+Tm6p/R2Yw
	sZbINdxVJtZDfeorJvzzj9LIScK4MCk=
X-Google-Smtp-Source: AGHT+IEfTjLFkGfOMWFkH7xjm//GDL7MMQJCPHss+bD0vF3KAEyfuoGootPX7fZjTnm+MAQkNIj3Kg==
X-Received: by 2002:a05:6830:4099:b0:6b1:9646:2ea0 with SMTP id x25-20020a056830409900b006b196462ea0mr1246919ott.1.1694781259808;
        Fri, 15 Sep 2023 05:34:19 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:bb17:c38c:aa6:be85])
        by smtp.gmail.com with ESMTPSA id a9-20020a056830008900b006b9b6aea237sm1567753oto.80.2023.09.15.05.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 05:34:19 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	marcel.ziswiler@toradex.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] ARM: dts: imx6ull/7d-colibri: Fix compatible
Date: Fri, 15 Sep 2023 09:33:50 -0300
Message-Id: <20230915123350.2618476-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Fix the imx6ull/7d-colibri devicetrees as per the rules defined
at fsl.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---
Changes since v1:
- Fixed the compatible strings of imx6ull-colibri-emmc-iris-v2.dts. (Marcel)

 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts   | 1 -
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts | 1 -
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts | 3 +--
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris.dts    | 1 -
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-eval-v3.dts      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-aster.dts   | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-eval-v3.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris-v2.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris.dts    | 2 +-
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-aster.dts     | 1 -
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-eval-v3.dts   | 1 -
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris-v2.dts   | 1 -
 arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris.dts      | 1 -
 13 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts
index 919c0464d6cb..b2cdf4877718 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts
@@ -12,6 +12,5 @@ / {
 	model = "Toradex Colibri iMX6ULL 1GB (eMMC) on Colibri Aster";
 	compatible = "toradex,colibri-imx6ull-emmc-aster",
 		     "toradex,colibri-imx6ull-emmc",
-		     "toradex,colibri-imx6ull",
 		     "fsl,imx6ull";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts
index 61b93cb040c7..2dc16c54fc78 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts
@@ -12,6 +12,5 @@ / {
 	model = "Toradex Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation Board V3";
 	compatible = "toradex,colibri-imx6ull-emmc-eval",
 		     "toradex,colibri-imx6ull-emmc",
-		     "toradex,colibri-imx6ull",
 		     "fsl,imx6ull";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts
index b9060c2f7977..9bae08fb7f85 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts
@@ -10,8 +10,7 @@
 
 / {
 	model = "Toradex Colibri iMX6ULL 1G (eMMC) on Colibri Iris V2";
-	compatible = "toradex,colibri-imx6ull-iris-v2",
+	compatible = "toradex,colibri-imx6ull-emmc-iris-v2",
 		     "toradex,colibri-imx6ull-emmc",
-		     "toradex,colibri-imx6ull",
 		     "fsl,imx6ull";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris.dts
index 0ab71f2f5daa..0b1603ff9420 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris.dts
@@ -12,6 +12,5 @@ / {
 	model = "Toradex Colibri iMX6ULL 1GB (eMMC) on Colibri Iris";
 	compatible = "toradex,colibri-imx6ull-emmc-iris",
 		     "toradex,colibri-imx6ull-emmc",
-		     "toradex,colibri-imx6ull",
 		     "fsl,imx6ull";
 };
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-eval-v3.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-eval-v3.dts
index d6da984e518d..c5bc255b21e1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-eval-v3.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Toradex Colibri iMX6ULL 256/512MB on Colibri Evaluation Board V3";
-	compatible = "toradex,colibri-imx6ull-eval", "fsl,imx6ull";
+	compatible = "toradex,colibri-imx6ull-eval", "toradex,colibri-imx6ull", "fsl,imx6ull";
 };
 
 &ad7879_ts {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-aster.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-aster.dts
index c7da5b41966f..d3bbd05da293 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-aster.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-aster.dts
@@ -11,7 +11,7 @@
 / {
 	model = "Toradex Colibri iMX6ULL 512MB on Colibri Aster";
 	compatible = "toradex,colibri-imx6ull-wifi-aster",
-		     "toradex,colibri-imx6ull",
+		     "toradex,colibri-imx6ull-wifi",
 		     "fsl,imx6ull";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-eval-v3.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-eval-v3.dts
index 917f5dbe64ba..0ac306c9cef2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-eval-v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-eval-v3.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Toradex Colibri iMX6ULL 512MB on Colibri Evaluation Board V3";
-	compatible = "toradex,colibri-imx6ull-wifi-eval", "fsl,imx6ull";
+	compatible = "toradex,colibri-imx6ull-wifi-eval", "toradex,colibri-imx6ull-wifi", "fsl,imx6ull";
 };
 
 &ad7879_ts {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris-v2.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris-v2.dts
index 488da6df56fa..38cd52c45496 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris-v2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris-v2.dts
@@ -11,7 +11,7 @@
 / {
 	model = "Toradex Colibri iMX6ULL 512MB on Colibri Iris V2";
 	compatible = "toradex,colibri-imx6ull-wifi-iris-v2",
-		     "toradex,colibri-imx6ull",
+		     "toradex,colibri-imx6ull-wifi",
 		     "fsl,imx6ull";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris.dts
index e63253254754..5f60df64f173 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-wifi-iris.dts
@@ -11,7 +11,7 @@
 / {
 	model = "Toradex Colibri iMX6ULL 512MB on Colibri Iris";
 	compatible = "toradex,colibri-imx6ull-wifi-iris",
-		     "toradex,colibri-imx6ull",
+		     "toradex,colibri-imx6ull-wifi",
 		     "fsl,imx6ull";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-aster.dts b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-aster.dts
index d9c7045a55ba..212e0685585d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-aster.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-aster.dts
@@ -12,7 +12,6 @@ / {
 	model = "Toradex Colibri iMX7D 1GB (eMMC) on Aster Carrier Board";
 	compatible = "toradex,colibri-imx7d-emmc-aster",
 		     "toradex,colibri-imx7d-emmc",
-		     "toradex,colibri-imx7d",
 		     "fsl,imx7d";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-eval-v3.dts b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-eval-v3.dts
index 96b599439dde..1deece7e7129 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-eval-v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-eval-v3.dts
@@ -11,7 +11,6 @@ / {
 	model = "Toradex Colibri iMX7D 1GB (eMMC) on Colibri Evaluation Board V3";
 	compatible = "toradex,colibri-imx7d-emmc-eval-v3",
 		     "toradex,colibri-imx7d-emmc",
-		     "toradex,colibri-imx7d",
 		     "fsl,imx7d";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris-v2.dts b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris-v2.dts
index 5eccb837b158..22e7863c2e80 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris-v2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris-v2.dts
@@ -11,7 +11,6 @@ / {
 	model = "Toradex Colibri iMX7D 1GB on Iris V2 Carrier Board";
 	compatible = "toradex,colibri-imx7d-emmc-iris-v2",
 		     "toradex,colibri-imx7d-emmc",
-		     "toradex,colibri-imx7d",
 		     "fsl,imx7d";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris.dts b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris.dts
index ae10e8a66ff1..a3cf8f50e3dc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-colibri-emmc-iris.dts
@@ -11,7 +11,6 @@ / {
 	model = "Toradex Colibri iMX7D 1GB on Iris Carrier Board";
 	compatible = "toradex,colibri-imx7d-emmc-iris",
 		     "toradex,colibri-imx7d-emmc",
-		     "toradex,colibri-imx7d",
 		     "fsl,imx7d";
 };
 
-- 
2.34.1


