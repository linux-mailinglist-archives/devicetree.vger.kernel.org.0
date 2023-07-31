Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B547F76933D
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231448AbjGaKgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbjGaKga (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:30 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A1BE6D
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-686be28e1a8so2816717b3a.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799789; x=1691404589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGLL2IWqqe53/KrEV7Ij4qiJEApJ+nnC26dOnmKXiOM=;
        b=S8/UdxoDBrOFE/PBXrrrcrSQKc2Eil0EnQ5kYdRqqtA/2Jhx4m8Yodvc+F8A99WcDz
         6t76RK4JadDLzwjujBul8WONYooOjX2ZBDekdEXWTjp/ZT7a10ogqOUEWldeEkHs3+pE
         JPsOx7Qescne273kLgZY1nCuYsLy9J3AsqIW5kUujKJ2vmbb9HuCt52iXiUBzOPXT3LM
         n9N4zdvoDOwIXI+M4bGbaE2lqB6ipJzt1om+bzmW+ACAFiziue8OvaoawlYnrOfbeYl7
         qQF5GuZrcMWw9vSdinWbD8HbJsDchMofDFnYyy1Wy1lchg2dj+RK9beuUpq5dG5c6wDn
         SOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799789; x=1691404589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGLL2IWqqe53/KrEV7Ij4qiJEApJ+nnC26dOnmKXiOM=;
        b=lCYeSEY4DX+rbKxykDMIbuzgUT25xXeHjYEJuktz0yJyHrtGT+59Vp4m13HOffalZt
         F1yoqV1en3m7MW2H/5LsdV3RpMaYfenDYqi+f5sYno+MkVFpem+6wytxEVdKiSHoWT8Q
         QrbMbL+lFEYVVeKaSKWKofzOWSnkf0D5rInry4Ys2Rvb/uZLI0KpplYhgmlGBSx0o31n
         J5vZofc5yGB+qFfCG3eGN2bjdJgIzz27xM6KY3L/sXenYFgiD4muLW2K/3lOx5PGShEB
         ILDFwkMo1jLX39ALqrAi8VHa6Q02xet93CLrwXzqD5mODWNcSB37AuuyEM38hOXgJ8Xh
         sSFA==
X-Gm-Message-State: ABy/qLb4/gZQ7uof+gKUFXv7b6Lrw2fjBzc8fyWMXY4pBF/zFmR8k7yL
        DhrpqAt0SOItpiCJmCqPFNcHsCmzzO2o5Fqxd9vN4w==
X-Google-Smtp-Source: APBJJlGfDnAALa8etDjbX37DnRE8+0pfLEzEtWWS9Bu6a0vi6OdECzid3nUr0EVj/2G0fgzEobOZ5A==
X-Received: by 2002:a05:6a20:c1:b0:12e:98a3:77b7 with SMTP id 1-20020a056a2000c100b0012e98a377b7mr8136555pzh.59.1690799789349;
        Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:29 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 13/13] ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
Date:   Mon, 31 Jul 2023 16:05:18 +0530
Message-Id: <20230731103518.2906147-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Main supply volatge for Edgeble Neu2 IO board is 12V DC.

Add the 12v supply regulator for it and input to vcc5v0_sys.

Since the power regulator is part of IO board circuit, move the
regulator in IO dts file.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   | 19 +++++++++++++++++++
 .../dts/rockchip/rv1126-edgeble-neu2.dtsi     |  9 ---------
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 1c6a6a134131..f09be8405964 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -21,6 +21,25 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	vcc12v_dcin: vcc12v-dcin-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
 	v3v3_sys: v3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "v3v3_sys";
diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index 6bbaf6da6545..7ea8d7d16f5f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -11,15 +11,6 @@ aliases {
 		mmc0 = &emmc;
 	};
 
-	vcc5v0_sys: vcc5v0-sys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vccio_flash: vccio-flash-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-- 
2.25.1

