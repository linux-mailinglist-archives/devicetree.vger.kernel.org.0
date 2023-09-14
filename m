Return-Path: <devicetree+bounces-307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 616367A0E70
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AFE01C20A99
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69FBD266BB;
	Thu, 14 Sep 2023 19:41:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F53210FE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:40:58 +0000 (UTC)
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E902698
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:40:57 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6c0ab18e084so163257a34.1
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694720457; x=1695325257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGCEHWz07Y7lNV6yeKA49P4xTpYxLpYeMztSIeZoZaU=;
        b=JGyflr11yvJXdy818k9tFo4X/sL5sZpPqTfSbFuiemJ5ZJLE6PA7g+BUDduAvGjduF
         a0KkVxXPzwSxAf04Q4HjPbVf1GcbuugRX5/fvn5cjwruKzFg6+w0M6tRpSiC1l+SFRkR
         eEJ0YaP85su0XglXvLJ7dw5/stURiG/e6s2+g0zCvylbK3E7s+eQRAmi9iyRJC+J4oTi
         kKEBM7MfmYSB9LwLoS4vMarDJE+yjvjm2dedOAoxskQJ/4ESfpnHtBpdxfuFPebhqXkE
         iiZAerFj2hWTjqOXr4IAavxVa1brIHpopv6S8PSkHMuhgFYEGeRFrkIY3Nvhp+q7zxYm
         z0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694720457; x=1695325257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GGCEHWz07Y7lNV6yeKA49P4xTpYxLpYeMztSIeZoZaU=;
        b=FF0cIU0eCYWK0GwF0OWYiMz1eGYVgYjwO2n5dFy5nSAggXKO42+YYKtcsVPrcvxPeQ
         e8znii9yVMRdZ8vzdR6CJ6l1RBWJtBPjbvrbwvDfmOROCTjwkRsJnBWr+0S3s/guB491
         2RzOxHkbRbrY8TD8UeZQUH5bkTEO3jCiyR0AuAsPoasPZtfG6zXQSXk61oq0JjclkrnM
         kVRv9KPiqSkhX4GDbVaRAjetoEv4JQY8A+5/bZKZsn/FoKoys75QIqnahHKhHfUsHXa0
         jxr8G3k/wnM66TfwMzF+1RnZ4SLNlGTlJPafrQGIH8O4DMc1iHlb0Pw5iJ0x5fWKy459
         +UNw==
X-Gm-Message-State: AOJu0YxrQ0+iyhfDITIw+UGZyLdQ4QN2wCNuaxNZuqFuUfyZWzYxsWxy
	mG7rPB5axnuIavV+Mh3ZdnM=
X-Google-Smtp-Source: AGHT+IHT1WvZwdIWtyInXL2xvf3p97u3mOIi1KlJpZt3kVvGFOsil9vaD8h+5FASX6YKeFbJ56v3tg==
X-Received: by 2002:a9d:5a8e:0:b0:6b9:b987:1337 with SMTP id w14-20020a9d5a8e000000b006b9b9871337mr6652695oth.1.1694720457168;
        Thu, 14 Sep 2023 12:40:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:706c:eaa3:3489:c237])
        by smtp.gmail.com with ESMTPSA id g5-20020a056830160500b006b29a73efb5sm965786otr.7.2023.09.14.12.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 12:40:56 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx6ull-phytec-tauri: Fix compatible
Date: Thu, 14 Sep 2023 16:40:27 -0300
Message-Id: <20230914194027.2515896-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230914194027.2515896-1-festevam@gmail.com>
References: <20230914194027.2515896-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Per fsl.yaml, the order of the compatible strings are not correct for
imx6ull-phytec-tauri-emmc and imx6ull-phytec-tauri-nand.

Fix them accordingly.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-emmc.dts | 4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-nand.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-emmc.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-emmc.dts
index 14adb87da911..1610f3892d9e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-emmc.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-emmc.dts
@@ -9,8 +9,8 @@
 
 / {
 	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
-	compatible = "phytec,imx6ull-phygate-tauri",
-		     "phytec,imx6ull-phygate-tauri-emmc",
+	compatible = "phytec,imx6ull-phygate-tauri-emmc",
+		     "phytec,imx6ull-phygate-tauri",
 		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-nand.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-nand.dts
index ae396ac63443..92e7d38d5637 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-nand.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri-nand.dts
@@ -9,8 +9,8 @@
 
 / {
 	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
-	compatible = "phytec,imx6ull-phygate-tauri",
-		     "phytec,imx6ull-phygate-tauri-nand",
+	compatible = "phytec,imx6ull-phygate-tauri-nand",
+		     "phytec,imx6ull-phygate-tauri",
 		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
 };
 
-- 
2.34.1


