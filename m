Return-Path: <devicetree+bounces-309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E759C7A0E77
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:47:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93308281C48
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69729266BB;
	Thu, 14 Sep 2023 19:47:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA2F210FE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:47:22 +0000 (UTC)
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98B7C2698
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:47:21 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5711d5dac14so289562eaf.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694720841; x=1695325641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5BmLkfcOi2CngTJ6qYE4a1GHZ/PJd6vNXn8AVUJg5uk=;
        b=sRn1cKGob1BFl5JRbkZ0iO0u6ikJzHwx+3/wqxQYNSR22Gi2tNI4MCf+YgaQ41FCc4
         Km696MoorkJCVvixnjwbRMxro4hW61QYIUku00gyfnj47diH6WAtR6Nqnhe3mhkO0baU
         42MFSjlGK27qt/InMJaF7m0QlJnVHh1ee7KwnBRPJNwUD7RDAgJViZKVDq7+XPtKo3Ir
         Sci9XedqR9BHK1OIAyPnrWrgcCS52W6y3RiNoEw+yDN/ZTdm1JpQfKpPbekw+WsBvb+F
         pMu2f7Yim1Smbnbt3g5ijOQySISCAm3Gwm0/h6Tt/+F4uZmkEQGX+REN5fBfKPsZYuP4
         fyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694720841; x=1695325641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5BmLkfcOi2CngTJ6qYE4a1GHZ/PJd6vNXn8AVUJg5uk=;
        b=km3n97i0ocWxskr8X9he3TUDVjQMG1p1yv/bD5p8H+bk5C32MJJPMS/ZzUnPOVvdEH
         bcciGkX0ws0K0ao/e8kskTaM/+H9tHV0TMDm7Cq1ClnXHFoEBRdqrkwCzCsRRRSa6Epb
         GjeXIViJRlwENHCrMCPakfdzJfSjzyPyzooCFDVqA1wcVh02wviKa2izwgMFtmJ7PdHe
         cMUdzckteLuSTF74Gnvb1sc6TGO16fWTfmePL1jYm9hpzFeNzy59EjJ3wetcXJrRL3Zv
         ZBTod2atlDHdfXEiG7i9MWBkbjXXnsjvO+PJiV4CiA06h5AvZv85+sZHugj2Bytk1bQ+
         SIXw==
X-Gm-Message-State: AOJu0YzxcKswSxw+2cJfQT1JXx2KMB4H4PfUJUq2+93zr6brAHyLKygp
	M8cudtcqmYmKQqtFv9FCHjVz7GqGJ8A=
X-Google-Smtp-Source: AGHT+IGjrKDJPTT/BY/CQSKqBO73TN3Ij3QMVzxA0kz3J4LUOA4jfrJC+bMOaMevQ88zGvGRfxK4+g==
X-Received: by 2002:a05:6820:616:b0:578:a06a:5d8f with SMTP id e22-20020a056820061600b00578a06a5d8fmr7856578oow.1.1694720839920;
        Thu, 14 Sep 2023 12:47:19 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:706c:eaa3:3489:c237])
        by smtp.gmail.com with ESMTPSA id 62-20020a4a1a41000000b00570bc62a8d4sm1003742oof.29.2023.09.14.12.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 12:47:19 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	marcel.ziswiler@toradex.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6ull/7d-colibri: Fix compatible
Date: Thu, 14 Sep 2023 16:47:09 -0300
Message-Id: <20230914194709.2516651-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Fix the imx6ull/7d-colibri devicetrees as per the rules defined
at fsl.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Hi,

I am assuming that fsl.yaml is correct and that the devicetree files
are the ones that should be fixed.

 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-aster.dts   | 1 -
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-eval-v3.dts | 1 -
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts | 1 -
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
 13 files changed, 5 insertions(+), 13 deletions(-)

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
index b9060c2f7977..6088ee0a029a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri-emmc-iris-v2.dts
@@ -11,7 +11,6 @@
 / {
 	model = "Toradex Colibri iMX6ULL 1G (eMMC) on Colibri Iris V2";
 	compatible = "toradex,colibri-imx6ull-iris-v2",
-		     "toradex,colibri-imx6ull-emmc",
 		     "toradex,colibri-imx6ull",
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


