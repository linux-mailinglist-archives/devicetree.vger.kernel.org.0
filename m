Return-Path: <devicetree+bounces-306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B137A0E6F
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:41:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F9731C20AAB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 19:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD08F266B0;
	Thu, 14 Sep 2023 19:40:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C189C210FE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 19:40:55 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D641BDD
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:40:55 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3ab8e324725so225420b6e.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694720454; x=1695325254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RTf6+wEsQ9wLmwVJd9HPec9vDRvkSwCa0DQqp2IbnQ0=;
        b=RlXJL1pvlohaljzttuE44G6Aaw0AAGYNcvrCliptn1zmFQqu+HPJx8uerPzAzmTkPg
         fKEwKQ+Jm2/fZWrE7cgF3CliRe8TtX+sO5g3f5nEeMh1UrDvgw9u5ZPoOvYRfL41nH3/
         IQBKhuYJc8563NpvzgyBlcAC6fZUVF5HLS7ETGd7Zct7g849g1AlzsfCpYB2grO25dYY
         pjwfu53j8rMlpuptdCj1vizp8Jq7s1lLKaQKtF7sjOeuZkXqKBwJmr00RcU9tCUHiGsR
         FgASkSGBdDp5yVL8eGu9M1CELVBySK2CXf9JnQ12AIA+ZHR/nqx05Pf175gyXpjre0fp
         oXHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694720454; x=1695325254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTf6+wEsQ9wLmwVJd9HPec9vDRvkSwCa0DQqp2IbnQ0=;
        b=q/nH7ktqhIBapRQeowEJSKgO+nUTqkCtWyYBOdUok/mihI5vplY2XVMNpHAtFDWLrq
         uCabAliNxY5G0lt9NmGPo+VQW6+EzUS3XPebvMfZ8FdA9O8QRBhNJNDP8vSufWo7z5V1
         8x3+TTWnJT4S6z/Xo93crPe+qaen6NGZsFdb95czxUwDdYmihyRHE5ezBXx2OsyHxOba
         EGmECSvlVrN0QSZ+guxc+9ZUV3SPrr4XAugeChU6mWFjHJAuDCKIDhuZqBMdIq0/2vkZ
         hc4MxWm8ul2vYEt91IaWbDkQIp4bFd6Ol2QqnkGLX8k1GUb1ttJqCa38KNJDWXGpMHn0
         zzxA==
X-Gm-Message-State: AOJu0Yzw21GntMYlY895KItfGjq8CAB2AWQisNhFOhTqzgsyBBabvLEi
	oCxGcE5Bk/OduoNkqFLRgN8=
X-Google-Smtp-Source: AGHT+IFtaVtX7TmL27yMnSXXLNYMy4XDYpBMA5RfeDIeagto/nav/om7n1UvaKDvFk92MR6vd8QDmg==
X-Received: by 2002:a9d:7dd4:0:b0:6b8:7653:dd66 with SMTP id k20-20020a9d7dd4000000b006b87653dd66mr7572231otn.0.1694720454275;
        Thu, 14 Sep 2023 12:40:54 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:706c:eaa3:3489:c237])
        by smtp.gmail.com with ESMTPSA id g5-20020a056830160500b006b29a73efb5sm965786otr.7.2023.09.14.12.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 12:40:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx6ull-phytec-tauri: Remove board model and compatible
Date: Thu, 14 Sep 2023 16:40:26 -0300
Message-Id: <20230914194027.2515896-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The imx6ull-phytec-tauri.dtsi file is included in two places:

imx6ull-phytec-tauri-emmc.dts
imx6ull-phytec-tauri-nand.dts

These two files overwrite the board model and compatible locally, so
there is no need for describing them in imx6ull-phytec-tauri.dtsi.

Remove the board model and compatible.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri.dtsi
index ea627638e40c..44cc4ff1d0df 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-phytec-tauri.dtsi
@@ -9,11 +9,6 @@
 #include "imx6ull-phytec-phycore-som.dtsi"
 
 / {
-
-	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
-	compatible = "phytec,imx6ull-phygate-tauri",
-		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
-
 	aliases {
 		rtc0 = &i2c_rtc;
 		rtc1 = &snvs_rtc;
-- 
2.34.1


