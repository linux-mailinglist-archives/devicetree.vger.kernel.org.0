Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D93D44C983
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 20:50:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231910AbhKJTxR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 14:53:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231994AbhKJTxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 14:53:09 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4243FC0613F5
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:50:20 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id u1so5893884wru.13
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 11:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fi1SQ0650VpnUBsZivmkkBhDo1jhzZgEKHW44G9Rwtw=;
        b=h3AI7I6ru3Nn/MCBCN35cPu4WE47fz6h+EIjb1eXtPS/nC4egSJFdDxGFcHv0KaE7p
         gt2ox2xz4q/bE6vbUm4+C5y1y1axolM+2MKnGJyp33JG1q5EcxX+mDca6A1MdDAPjH14
         Iw2YT7/zeUur84LG9TKKpGcjdr+t3eoiuYsae9Y5PI2E686+j47lM6po+zm/iif9+2td
         G1gnU1A6G8zFUJMo/eoIoeo8ivhQSrcHpol52F5NQYnWb2OoacJU89GqL63cfQlvR8HB
         qp7IoZjwOuXLDV9bFLm1IgT/dZWW8QzbUJamQ+Rq1MqR8bGTdkRObjNsq73lwQHgNYmn
         kCiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fi1SQ0650VpnUBsZivmkkBhDo1jhzZgEKHW44G9Rwtw=;
        b=45d4iPzlyoGqM+KCWAhLTCfxEPl9sPvf8nnxDBaBXknn6sJfDP66NOexq6+fVyMsYM
         X3GqsBvvK4a80kppPgBqm24DU8LXXFf/xBWR1YOT23VzduKYS1LbWJHjam/40XCTHN6G
         ixEkr/nP0sP1bwpd/3iMPhF7jJmxSNcO+XGY2HZWQZAA1yQ9b1Qm+lMM1b3R3eqmJPKL
         miemSRn5n7u5Z0G3AqbDWSee57BrsTm34z0ZwQkMiZJBk8uBL7ZPEoQWEVfqhSAOvujn
         8v99a8Ljio2e8J8PNbO6Y1e4GhYPCBzYU4r4CwREWjDHDHU27UhM7qs/Y84n/V4pRhwC
         nwiA==
X-Gm-Message-State: AOAM530kmc5mGzdvOk/gnk2GSmIA0s8K4YdscnwG9C7kAZJI3EMJjbeW
        CRHkiJui0ufc0nXA6XVCnj/is58ZZOls4g==
X-Google-Smtp-Source: ABdhPJyNwAHNRfrXhmSz0qWblbyRi1RZjAletdfZItDgstEuKD8EM5XYNkrrljsACKRpt8B1eOaSzA==
X-Received: by 2002:a5d:6043:: with SMTP id j3mr1857692wrt.375.1636573818895;
        Wed, 10 Nov 2021 11:50:18 -0800 (PST)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id k15sm750935wrx.53.2021.11.10.11.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 11:50:18 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: mediatek: mt8192: fix i2c node names
Date:   Wed, 10 Nov 2021 20:49:59 +0100
Message-Id: <20211110194959.20611-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211110194959.20611-1-fparent@baylibre.com>
References: <20211110194959.20611-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the i2c node names to be compliant to the YAML schema. The
I2C node name should match the following pattern: "^i2c@[0-9a-f]+$".

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

v3: rebased
v2: new patch

 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index c7c7d4e017ae..53d790c335f9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -479,7 +479,7 @@ audsys: clock-controller@11210000 {
 			#clock-cells = <1>;
 		};
 
-		i2c3: i2c3@11cb0000 {
+		i2c3: i2c@11cb0000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11cb0000 0 0x1000>,
 			      <0 0x10217300 0 0x80>;
@@ -498,7 +498,7 @@ imp_iic_wrap_e: clock-controller@11cb1000 {
 			#clock-cells = <1>;
 		};
 
-		i2c7: i2c7@11d00000 {
+		i2c7: i2c@11d00000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d00000 0 0x1000>,
 			      <0 0x10217600 0 0x180>;
@@ -511,7 +511,7 @@ i2c7: i2c7@11d00000 {
 			status = "disabled";
 		};
 
-		i2c8: i2c8@11d01000 {
+		i2c8: i2c@11d01000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d01000 0 0x1000>,
 			      <0 0x10217780 0 0x180>;
@@ -524,7 +524,7 @@ i2c8: i2c8@11d01000 {
 			status = "disabled";
 		};
 
-		i2c9: i2c9@11d02000 {
+		i2c9: i2c@11d02000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d02000 0 0x1000>,
 			      <0 0x10217900 0 0x180>;
@@ -543,7 +543,7 @@ imp_iic_wrap_s: clock-controller@11d03000 {
 			#clock-cells = <1>;
 		};
 
-		i2c1: i2c1@11d20000 {
+		i2c1: i2c@11d20000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d20000 0 0x1000>,
 			      <0 0x10217100 0 0x80>;
@@ -556,7 +556,7 @@ i2c1: i2c1@11d20000 {
 			status = "disabled";
 		};
 
-		i2c2: i2c2@11d21000 {
+		i2c2: i2c@11d21000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d21000 0 0x1000>,
 			      <0 0x10217180 0 0x180>;
@@ -569,7 +569,7 @@ i2c2: i2c2@11d21000 {
 			status = "disabled";
 		};
 
-		i2c4: i2c4@11d22000 {
+		i2c4: i2c@11d22000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11d22000 0 0x1000>,
 			      <0 0x10217380 0 0x180>;
@@ -588,7 +588,7 @@ imp_iic_wrap_ws: clock-controller@11d23000 {
 			#clock-cells = <1>;
 		};
 
-		i2c5: i2c5@11e00000 {
+		i2c5: i2c@11e00000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11e00000 0 0x1000>,
 			      <0 0x10217500 0 0x80>;
@@ -607,7 +607,7 @@ imp_iic_wrap_w: clock-controller@11e01000 {
 			#clock-cells = <1>;
 		};
 
-		i2c0: i2c0@11f00000 {
+		i2c0: i2c@11f00000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11f00000 0 0x1000>,
 			      <0 0x10217080 0 0x80>;
@@ -620,7 +620,7 @@ i2c0: i2c0@11f00000 {
 			status = "disabled";
 		};
 
-		i2c6: i2c6@11f01000 {
+		i2c6: i2c@11f01000 {
 			compatible = "mediatek,mt8192-i2c";
 			reg = <0 0x11f01000 0 0x1000>,
 			      <0 0x10217580 0 0x80>;
-- 
2.33.1

