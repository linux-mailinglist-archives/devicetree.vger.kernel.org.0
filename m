Return-Path: <devicetree+bounces-746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E857A2EE8
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 10:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5A881C20B64
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 08:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B816125B8;
	Sat, 16 Sep 2023 08:59:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7F07E
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 08:59:06 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC69CF8
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 01:59:04 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50078eba7afso4721963e87.0
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 01:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694854742; x=1695459542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3u2vbto1umek1f24RIrtSGDaz5f+TY32is7IlWxMZj8=;
        b=Oi9yLyQ6AiFsoCHwy1CAaQPiB/7eNavHB2nJKUQGnN1I/HGfGch+QKAMY0d4Z6U1qa
         bs57227Ym5cRLdJXpxMuzF12Qkl1NxQH6ngw/haH8zKzh0ht2+ANtvB/THfq13SdwjXb
         qAiU1Nl1bRF3MBymlxvRQsNhA22vZtPKhwJrksgs3GYxuJV3nx9gttwe5fiiBq+vhXir
         0xTadJ77F/7oF0k3R2kZl7+k0PThY2M9P6dhNla1D7AU27cs+jZhIjYL9mdldxvVU4/D
         VySv4BYzRyPALndm7TT7k08Z15rsxzSRkddNLupejNc9w3aK/VvzbdhJXE4riJ6IqWCc
         5u6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694854742; x=1695459542;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3u2vbto1umek1f24RIrtSGDaz5f+TY32is7IlWxMZj8=;
        b=Bk5i0vikSisxgPne81z/K0JTBe87VQsxnkzDZxad44xY+XSCsLEYZ43+CznUjbadQI
         gvX1Ane5tj+ehuJ2Sq1OOeptlNnIQEcX3IDsqQgdoRTUGvQlSRiqEw1hH/qeQRdfJBCJ
         VSGdJzXssxvVcZPJmWojR8lIYvE5uDniG0ZuwKIVfJAjk7dl2xFqLnvlqd5sX+HerGh8
         xbaoj24XYZ8ajIm2a1LdlzEsHeKDtQQPwk6GsNUY4o+2aaw3VdOM70Mjr/AMkesAYjX6
         OigTsdeUOc2nBF8RojSAvq9yWWG9vWY05N75Fhpp9rJNr7mwbkALiiXGDT5fFM0I6yum
         b2LA==
X-Gm-Message-State: AOJu0Yy6AICrBXR973FAbLRu11ftQlSWLWWjic6NzL/aM76f7r5kEvPK
	cbxb7tGXw9ophmoP5OOwv+M=
X-Google-Smtp-Source: AGHT+IHrEkmigwtbLJ+2r8gOCe1tW24WBREnf2iuZz+emRztSCYED7QoueakO09oGbXaqq+qFx42kw==
X-Received: by 2002:a05:6512:318f:b0:503:3cc:cd39 with SMTP id i15-20020a056512318f00b0050303cccd39mr1129268lfe.8.1694854742075;
        Sat, 16 Sep 2023 01:59:02 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004ff96c09b47sm942843lff.260.2023.09.16.01.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 01:59:01 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Vivek Unune <npcomplete13@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Relicense Vivek's code to the GPL 2.0+ / MIT
Date: Sat, 16 Sep 2023 10:58:55 +0200
Message-Id: <20230916085855.28375-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Rafał Miłecki <rafal@milecki.pl>

Move code added by Vivek to the bcm-ns.dtsi which uses dual licensing.
That syncs more Northstar code to be based on the same licensing schema.

This code was added in the commit 37f6130ec39f ("ARM: dts: BCM5301X:
Make USB 3.0 PHY use MDIO PHY driver").

Cc: Vivek Unune <npcomplete13@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Vivek: can you send your Acked-by for this patch, please?
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi   | 27 ++++++++++++++++++++++++
 arch/arm/boot/dts/broadcom/bcm5301x.dtsi | 27 ------------------------
 2 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index f0f3a718c413..d0d5f7e52a91 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -327,6 +327,29 @@ mdio: mdio@18003000 {
 		#address-cells = <1>;
 	};
 
+	mdio-mux@18003000 {
+		compatible = "mdio-mux-mmioreg", "mdio-mux";
+		mdio-parent-bus = <&mdio>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x18003000 0x4>;
+		mux-mask = <0x200>;
+
+		mdio@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			usb3_phy: usb3-phy@10 {
+				compatible = "brcm,ns-ax-usb3-phy";
+				reg = <0x10>;
+				usb3-dmp-syscon = <&usb3_dmp>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+		};
+	};
+
 	rng: rng@18004000 {
 		compatible = "brcm,bcm5301x-rng";
 		reg = <0x18004000 0x14>;
@@ -467,6 +490,10 @@ nand_controller: nand-controller@18028000 {
 		brcm,nand-has-wp;
 	};
 
+	usb3_dmp: syscon@18105000 {
+		reg = <0x18105000 0x1000>;
+	};
+
 	thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <0>;
diff --git a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi b/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
index de46dbd5b876..f06a178a9240 100644
--- a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
@@ -62,33 +62,6 @@ periph_clk: periph_clk {
 		};
 	};
 
-	mdio-mux@18003000 {
-		compatible = "mdio-mux-mmioreg", "mdio-mux";
-		mdio-parent-bus = <&mdio>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		reg = <0x18003000 0x4>;
-		mux-mask = <0x200>;
-
-		mdio@0 {
-			reg = <0x0>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			usb3_phy: usb3-phy@10 {
-				compatible = "brcm,ns-ax-usb3-phy";
-				reg = <0x10>;
-				usb3-dmp-syscon = <&usb3_dmp>;
-				#phy-cells = <0>;
-				status = "disabled";
-			};
-		};
-	};
-
-	usb3_dmp: syscon@18105000 {
-		reg = <0x18105000 0x1000>;
-	};
-
 	i2c0: i2c@18009000 {
 		compatible = "brcm,iproc-i2c";
 		reg = <0x18009000 0x50>;
-- 
2.35.3


